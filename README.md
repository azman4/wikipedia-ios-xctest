# XCUITest with Page object modelling

## Table of Contents

* [Introduction](#Introduction)
* [Prerequisites](#Prerequisites)
* [Usage](#Usage)
* [Reports](#Reports)

## Introduction

This repository consists of Automated tests written with the help of XCUITest and creating a page object model (Test folder name -> WikipediaE2ETests) along with the wikipedia ios xcode porject. But we will focus more on the Automated tests.

## Prerequisites

This section details any and all prerequisites in order for the application to be run.

a. Open the Project on Xcode.

b. Build the app on an iPhone simulator (you can choose any device).


## Usage

•	Clone this repo

•	Open the xcode project file in Xcode

•	Build the app on a simulator

•	Go to the Test Navigator tab (It would be present in the left upper pane)

•	In the Test Navigator tab you'll see 3 test folders. We want to view and run the tests in WikipediaE2ETests.

•   You can run the entire suite by just clicking on the run button (which appears when you hover on the WikipediaE2ETests folder) OR you can execute a particular test in within the suite by just expanding the folder and clicking on the run button next to a specific test.

## Note - There are 2 seperate tests in the WikipediaE2ETests folder SearchE2ETests and SearchPerformanceTests. SearchE2ETests is the main Automated test folder. However, to show the capabilities of XCUITest I have added SearchPerformanceTests which essentially evaluates the performance of functionalities on the app.

## Reports

#### After successful execution of the tests (You will a see a notification 'Tests Succeeded')

To view the reports you can simply follow the below steps:

1. Right click on the WikipediaE2ETests folder -> Click on 'Jump to Report' option
2. You will see the details like the tests executed, duration for a particular test's execution and of course its status (Pass or Failed). You can also view the details of a test (like steps executed) by clicking on the > (angle bracket) icon before the test name.
3. You will also see the test results for the SearchPerformanceTests (If you run the entire suite or execute the performance tests specifically), which interestingly will show us an additional column populated i.e. time (this is the average time that a particular functionality takes to load on the app).
4. To view the trend or time taken for a each execution of the test specifically you can simply click on the time value -> it will open a bar graph for time taken for each execution.
