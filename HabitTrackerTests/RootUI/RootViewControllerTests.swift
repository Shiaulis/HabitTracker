//
//  RootViewControllerTests.swift
//  HabitTrackerTests
//
//  Created by Andrius Shiaulis on 30.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import XCTest
@testable import HabitTracker

class RootViewControllerTests: XCTestCase {

    // MARK: - Properties
    private var sut: RootViewController!

    // MARK: - Setup and teardown

    override func setUp() {
        super.setUp()
        self.sut = RootViewController()
    }

    override func tearDown() {
        self.sut = nil
        super.tearDown()
    }

    // MARK: - Tests

    func testController_whenViewDidLoad_correctBackgroundColor() throws {
        // when
        self.sut.viewDidLoad()

        // then
        let backgroundColor = try XCTUnwrap(self.sut.view.backgroundColor)
        XCTAssertEqual(backgroundColor.cgColor, UIColor.systemRed.cgColor)
    }
}
