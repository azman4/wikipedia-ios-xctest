import XCTest

struct SearchScreen {
    let searchValue = "Apple"
    let skipButton = XCUIApplication().buttons["Skip"]
    let searchTextbox = XCUIApplication().searchFields["Search Wikipedia"]
    let searchResultList = XCUIApplication().collectionViews.cells.otherElements.containing(.staticText, identifier:"Edible fruit of domesticated deciduous tree").element
    let searchedTextHeader = XCUIApplication().staticTexts["Apple"]
    let backButton = XCUIApplication().buttons["Search"]
    let wIcon = XCUIApplication().navigationBars["W"].buttons["W"]
    let recentlySearchedResultTile = XCUIApplication().collectionViews.cells.collectionViews.cells.otherElements.containing(.staticText, identifier:"Apple").element
    let recentlySearchedText = XCUIApplication().collectionViews.staticTexts["Recently searched"]
    let recentlySearchedResult = XCUIApplication().collectionViews.staticTexts["Apple"]
    let clearSearchedTextIcon = XCUIApplication().searchFields["Search Wikipedia"].buttons["Clear text"]
    let clearSearchedHistoryButton = XCUIApplication().collectionViews.buttons["Clear"]
    let deleteAllAlert = XCUIApplication().alerts["Delete all recent searches?"].scrollViews.otherElements.buttons["Delete All"]
    let noSearchHistoryText = XCUIApplication().collectionViews.staticTexts["No recent searches yet"]
}
