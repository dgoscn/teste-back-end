require 'selenium-webdriver'

describe 'New Events' do
  
  before :each do
    chromedriver_path = File.join(File.absolute_path('../../..', File.dirname(__FILE__)), "test", "browser", "chromedriver")
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path  
    @driver = Selenium::WebDriver.for :chrome
end

  after :each do
    @driver.quit
  end
  
  #How we have a simple new index page with simple elements, we will checking the existence
  #of these items with xpath.
  it 'succeeded' do
    @driver.get 'http://0.0.0.0:3000/events/new'
    @driver.find_element(xpath: '/html/body/h1')
    @driver.find_element(xpath: '/html/body/form/div[1]/label')
    @driver.find_element(xpath: '//*[@id="event_uuid"]')   
    @driver.find_element(xpath: '/html/body/form/div[2]/label')
    @driver.find_element(xpath: '//*[@id="event_url"]')
    @driver.find_element(xpath: '/html/body/form/div[3]/label')
    @driver.find_element(xpath: '//*[@id="event_timestamp"]')
    @driver.find_element(xpath: '/html/body/form/div[4]/input')
    @driver.find_element(xpath: '/html/body/a').click()#Checking if button works
  end

end