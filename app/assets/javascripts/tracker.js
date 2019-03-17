var EVENTS_URL = 'http://0.0.0:3000/events' // constantes UPPERCASE =) boas pra

function postEvent(event) {
  const postConfig = {
    method: 'POST', // or 'PUT'
    body: event // JSON.stringify(data), // data can be `string` or {object}!
  }
  return fetch(EVENTS_URL, postConfig).then(res => console.log(res.json())); 
}

function createUUID() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
      var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
      return v.toString(16);
    });
}
    
function createEvent(idLocal) {
  //const eventData = new FormData()
  //eventData.append('event[uuid]', uuid || createUUID())
  //eventData.append('event[timestamp]', new Date(Date.now()).toLocaleString('pt-BR'))
  //eventData.append('event[url]', window.location.href)
	const uuid = idLocal || createUUID();
  const timestamp =  new Date(Date.now()).toLocaleString('pt-BR')
  const url = window.location.href
  return 'event[uuid]='+uuid+'&event[timestamp]='+timestamp+'&event[url]='+url;
}
  
function tracker() {
    var localUuid = localStorage.getItem('icasei-uuid')
    var event = createEvent(localUuid)
 		console.log(JSON.stringify(event))
    return ((localUuid !== event.uuid) && (localStorage.setItem('icasei-uuid', event.uuid)) || postEvent(event)
 )}
  
  // \/ quando o evento "turbolinks:load" acontecer, a função tracker vai ser executada -> tracker()
document.addEventListener("turbolinks:load", tracker);


