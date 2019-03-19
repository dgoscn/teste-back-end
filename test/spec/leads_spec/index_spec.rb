require 'selenium-webdriver'

describe 'Leads' do
  
  before :each do
    chromedriver_path = File.join(File.absolute_path('../../..', File.dirname(__FILE__)), "test", "browser", "chromedriver")
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path  
    @driver = Selenium::WebDriver.for :chrome
end

  after :each do
    @driver.quit
  end
  
  #How we have a simple index page with simple elements, we will checking the existence
  #of these items with xpath.
  it 'succeeded' do
    @driver.get 'http://0.0.0.0:3000/leads'
    @driver.find_element(xpath: '/html/body/h1')
    @driver.find_element(xpath: '/html/body/table/thead/tr/th[1]')
    @driver.find_element(xpath: '/html/body/table/thead/tr/th[2]')   
    # We will use this path, when we had a lead created at de database
    #@driver.find_element(xpath: '/html/body/table/tbody/tr[1]/td[1]')
    #@driver.find_element(xpath: '/html/body/table/tbody/tr[1]/td[2]')
    #@driver.find_element(xpath: '/html/body/table/tbody/tr[1]/td[3]')
    #@driver.find_element(xpath: '/html/body/table/tbody/tr[1]/td[4]/a')
    #The example above, I tried to simulate de "delete" operation, but I had some trouble with form requisiton    @driver.find_element(xpath: '/html/body/a').click(); #At this point, I could not test,
    #the page opened by the action and testing. I made it manually testing a new with a new_spec file
  end

end
