import XCTest

class PerformanceTests: XCTestCase {
    // MARK: - Variables
    
    /// Instance of Common methods class
    var commonMethods = CommonMethods()
    
    /// Instance of Login Screen objects
    var search = SearchScreen()
    
    /// Instance of the app
    let app = XCUIApplication()
    
    // MARK: - Lifecycle methods
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    // MARK: - App Launch & Search Result Page Case Methods
    
    /**
     Method to test performace of app launch
     */
    func test01AppLaunch() {
        measureMetrics([XCTPerformanceMetric.wallClockTime], automaticallyStartMeasuring: false) {
            app.launch()
            if(search.skipButton.exists)
            {
                commonMethods.tapOnElement(element: search.skipButton)
                startMeasuring()
                self.commonMethods.waitForElementToAppear(element: search.searchTextbox, timeout: 10)
                XCTAssert(search.searchTextbox.exists, "Search Page is displayed")
                stopMeasuring()
            }
            else
            {
                startMeasuring()
                self.commonMethods.waitForElementToAppear(element: search.searchTextbox, timeout: 10)
                XCTAssert(search.searchTextbox.exists, "We are already on the Search page")
                stopMeasuring()
            }
        }
    }
    
    /**
     Method to test performace of Search result list
     */
    func test02searchResultList() {
        app.launch()
        measureMetrics([XCTPerformanceMetric.wallClockTime], automaticallyStartMeasuring: false) {
            self.commonMethods.waitForElementToAppear(element: search.searchTextbox, timeout: 10)
            commonMethods.tapOnElement(element: search.searchTextbox)
            commonMethods.enterText(element: search.searchTextbox, value: search.searchValue)
            startMeasuring()
            self.commonMethods.waitForElementToAppear(element: search.searchResultList, timeout: 10)
            XCTAssert(search.searchResultList.exists, "Search List is displayed")
            stopMeasuring()
            commonMethods.tapOnElement(element: search.backButton)
            commonMethods.tapOnElement(element: search.clearSearchedTextIcon)
        }
    }
    
    /**
     Method to test performace of Search result page
     */
    func test03searchResultPage() {
        app.launch()
        measureMetrics([XCTPerformanceMetric.wallClockTime], automaticallyStartMeasuring: false) {
            self.commonMethods.waitForElementToAppear(element: search.searchTextbox, timeout: 10)
            commonMethods.tapOnElement(element: search.searchTextbox)
            commonMethods.enterText(element: search.searchTextbox, value: search.searchValue)
            commonMethods.tapOnElement(element: search.searchResultList)
            startMeasuring()
            self.commonMethods.waitForElementToAppear(element: search.searchedTextHeader, timeout: 10)
            XCTAssert(search.searchedTextHeader.exists, "Search Result is displayed")
            stopMeasuring()
            commonMethods.tapOnElement(element: search.wIcon)
        }
    }
}
