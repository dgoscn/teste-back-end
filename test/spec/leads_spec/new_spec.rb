require 'selenium-webdriver'

describe 'New Lead' do
  
  before :each do
    chromedriver_path = File.join(File.absolute_path('../../..', File.dirname(__FILE__)), "test", "browser", "chromedriver")
    Selenium::WebDriver::Chrome.driver_path = chromedriver_path  
    @driver = Selenium::WebDriver.for :chrome
end

  after :each do
    @driver.quit
  end
  
  #How we have a simple new  page with simple elements, we will checking the existence
  #of these items with xpath.
  it 'succeeded' do
    @driver.get 'http://0.0.0.0:3000/leads/new'
    @driver.find_element(xpath: '/html/body/h1')
    @driver.find_element(xpath: '/html/body/form/div[1]/label')
    @driver.find_element(xpath: '//*[@id="lead_name"]')   
    @driver.find_element(xpath: '/html/body/form/div[2]/label')
    @driver.find_element(xpath: '//*[@id="lead_email"]')
    @driver.find_element(xpath: '/html/body/form/div[3]/input')
    @driver.find_element(xpath: '/html/body/a')
  end

end