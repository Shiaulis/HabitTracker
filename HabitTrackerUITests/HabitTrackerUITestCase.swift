//
//  HabitTrackerUITestCase.swift
//  HabitTrackerUITests
//
//  Created by Andrius Shiaulis on 31.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import XCTest

class HabitTrackerUITestCase: XCTestCase {

    // MARK: - Properties

    var app: XCUIApplication!

    // MARK: - Setup and teardown

    override func setUp() {
        super.setUp()
        self.continueAfterFailure = false
        self.app = .init()
    }

    override func tearDown() {
        self.app = nil
        super.tearDown()
    }

    // MARK: - When
    func whenAppStarted() {
        self.app.launch()
    }

}
