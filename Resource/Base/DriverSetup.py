from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager
from webdriver_manager.firefox import GeckoDriverManager

def get_driver_path(browser_name):
    if browser_name.lower() == 'chrome' or browser_name=='gc':
        driver_path=ChromeDriverManager().install()
    elif browser_name.lower() == 'ff':
        driver_path=GeckoDriverManager().install()
    else:
        driver_path=EdgeChromiumDriverManager().install()
    return driver_path