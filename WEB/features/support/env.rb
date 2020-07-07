require 'capybara'
require 'capybara/cucumber'
require 'report_builder'

Capybara.configure do |config|
    
    config.default_driver = :selenium_chrome #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
    config.run_server = false
    config.app_host   = 'https://www.webmotors.com.br/'
    default_max_wait_time = 5
end

