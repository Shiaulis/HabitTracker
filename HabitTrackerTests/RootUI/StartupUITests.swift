//
//  StartupUITests.swift
//  HabitTrackerTests
//
//  Created by Andrius Shiaulis on 30.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import XCTest
@testable import HabitTracker

class StartupUITests: XCTestCase {

    // MARK: - Properties

    private var appDelegate: AppDelegate!
    private var mainWindow: UIWindow!

    // MARK: - Setup and teardown

    override func setUp() {
        super.setUp()
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        self.mainWindow = UIApplication.shared.windows.first
    }

    override func tearDown() {
        self.mainWindow = nil
        self.appDelegate = nil
        super.tearDown()
    }

    // MARK: - Tests

    func testStartup_whenDidFinishLaunching_returnsTrue() {
        XCTAssertTrue(self.appDelegate.application(UIApplication.shared, didFinishLaunchingWithOptions: nil))
    }

    func testStartup_whenDidFinishLaunching_initRootViewController() throws {
        // given
        let rootViewController = try XCTUnwrap(self.mainWindow.rootViewController)

        // then
        XCTAssertNotNil(rootViewController as? RootViewController)
    }

}
