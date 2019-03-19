require 'selenium-webdriver'

describe 'Index' do
  
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
    @driver.get 'http://0.0.0.0:3000/'
    @driver.find_element(id: 'navbarResponsive')
    @driver.find_element(xpath: '/html/body/div/div/div/h1')
    @driver.find_element(xpath: '/html/body/nav/div/a')
    @driver.find_element(xpath: '/html/body/div/div/div/p')    
    @driver.find_element(xpath: '//*[@id="navbarResponsive"]/ul/li[1]/a')
    @driver.find_element(xpath: '//*[@id="navbarResponsive"]/ul/li[2]/a')
    @driver.find_element(xpath: '//*[@id="navbarResponsive"]/ul/li[3]/a')
    expect(@driver.find_element(id: 'navbarResponsive').displayed?).to be(true)
  end

end