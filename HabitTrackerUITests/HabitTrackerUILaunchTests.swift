//
//  HabitTrackerUILaunchTests.swift
//  HabitTrackerUITests
//
//  Created by Andrius Shiaulis on 31.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import XCTest

final class HabitTrackerUILaunchTests: HabitTrackerUITestCase {

    func testAfterLauch_whenStarted_defaultAppearance() {
        // given
        let navigationBar = self.app.navigationBars.matching(identifier: "Habits").firstMatch
        let settingsButton = self.app.buttons.matching(identifier: "toolbar_settings").firstMatch
        let newHabitButton = self.app.buttons.matching(identifier: "toolbar_addHabit").firstMatch
        let summaryButton = self.app.buttons.matching(identifier: "toolbar_summary").firstMatch

        // when
        whenAppStarted()

        // then
        XCTAssertTrue(navigationBar.exists)

        XCTAssertTrue(settingsButton.isInteractable)
        XCTAssertEqual(settingsButton.label, "Settings")

        XCTAssertTrue(newHabitButton.isInteractable)
        XCTAssertEqual(newHabitButton.label, "Add Habit")

        XCTAssertTrue(summaryButton.isInteractable)
        XCTAssertEqual(summaryButton.label, "Summary")
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}

extension XCUIElement {
    var isInteractable: Bool {
        self.exists && self.isHittable && self.isEnabled
    }
}
