import XCTest

class CommonMethods: XCTestCase {
    // MARK: - Variables
    
    /// Instance of Search Screen objects
    var search = SearchScreen()
    
    /**
     Method to Wait for an element to appear
     */
    func waitForElementToAppear(element: XCUIElement, timeout: TimeInterval = 5, file: String = #file, line: UInt = #line) {
        let existsPredicate = NSPredicate(format: "exists == true")
        
        expectation(
            for: existsPredicate,
            evaluatedWith: element, handler: nil
        )
        waitForExpectations(timeout: timeout) { (error) -> Void in
            if error != nil {
                let message = "Failed to find \(element) after \(timeout) seconds."
                self.recordFailure(withDescription: message, inFile: file, atLine: Int(line), expected: true)
            }
        }
    }
    
    /**
     Method to Tap on an element
     */
    func tapOnElement(element: XCUIElement) {
        waitForElementToAppear(element: element, timeout: 20)
        element.tap()
    }
    
    /**
     Method to Tap on an element
     */
    func enterText(element: XCUIElement, value: String) {
        waitForElementToAppear(element: element, timeout: 20)
        element.typeText(value)
    }
}
