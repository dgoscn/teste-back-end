require 'selenium-webdriver'

describe 'Events' do
  
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
    @driver.get 'http://0.0.0.0:3000/events'
    @driver.find_element(xpath: '/html/body/h1')
    @driver.find_element(xpath: '/html/body/table/thead/tr/th[1]')
    @driver.find_element(xpath: '/html/body/table/thead/tr/th[2]')   
    @driver.find_element(xpath: '/html/body/table/tbody/tr/td[3]')
    @driver.find_element(xpath: '/html/body/table/tbody/tr/td[1]')
    @driver.find_element(xpath: '/html/body/table/tbody/tr/td[2]')
    @driver.find_element(xpath: '/html/body/table/tbody/tr/td[3]')
    @driver.find_element(xpath: '/html/body/table/tbody/tr/td[4]/a')
    @driver.find_element(xpath: '/html/body/table/tbody/tr/td[5]/a')
    @driver.find_element(xpath: '/html/body/a').click()#Checking if button works
  end

end