//
//  SummaryUITests.swift
//  HabitTrackerUITests
//
//  Created by Andrius Shiaulis on 31.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import XCTest

class SummaryUITests: HabitTrackerUITestCase {

    // MARK: - Tests

    func testSummary_whenOpened_defaultAppearance() {
        // given
        let navigationBar = self.app.navigationBars.matching(identifier: "summary").firstMatch
        let navigationBarTitle = navigationBar.staticTexts.firstMatch

        // when
        whenSummaryOpened()

        // then
        XCTAssertEqual(navigationBarTitle.label, "Summary")
    }

    // MARK: - When

    private func whenSummaryOpened() {
        whenAppStarted()

        let settingsButton = self.app.buttons.matching(identifier: "toolbar_summary").firstMatch

        settingsButton.tap()
    }

}
