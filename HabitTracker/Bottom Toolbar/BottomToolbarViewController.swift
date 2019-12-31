//
//  BottomToolbarViewController.swift
//  HabitTracker
//
//  Created by Andrius Shiaulis on 31.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import UIKit

fileprivate struct ButtonSettings {
    let systemImageName: String
    let target: Any
    let selector: Selector
    let accessibilityIdentifier: String
    let accessibilityLabel: String
}

class BottomToolbarViewController: UIViewController {

    // MARK: - Properties

    private lazy var settingsButton: UIButton = {
        let button: UIButton = .init(type: .system)
        let buttonImage = UIImage(systemName: "gear")
        button.setImage(buttonImage, for: .normal)
        button.addTarget(self, action: #selector(settingsTapped(sender:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.accessibilityIdentifier = "toolbar_settings"
        button.accessibilityLabel = NSLocalizedString("Settings", comment: "settings button accessibility label")
        return button
    }()

    private lazy var addHabitButton: UIButton = {
        let button: UIButton = .init(type: .system)
        let buttonImage = UIImage(systemName: "plus")
        button.setImage(buttonImage, for: .normal)
        button.addTarget(self, action: #selector(addHabitTapped(sender:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.accessibilityIdentifier = "toolbar_addHabit"
        button.accessibilityLabel = NSLocalizedString("Add Habit", comment: "Add Habit button accessibility label")
        return button
    }()

    private lazy var summaryButton: UIButton = {
        let button: UIButton = .init(type: .system)
        let buttonImage = UIImage(systemName: "perspective")
        button.setImage(buttonImage, for: .normal)
        button.addTarget(self, action: #selector(summaryTapped(sender:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.accessibilityIdentifier = "toolbar_summary"
        button.accessibilityLabel = NSLocalizedString("Summary", comment: "Summary button accessibility label")
        return button
    }()

    private lazy var toolbar: UIView = {
        let views: [UIView] = [self.settingsButton, self.addHabitButton, self.summaryButton]
        let stackView: UIStackView = .init(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }()

    // MARK: - UIViewController lifecycle

    deinit {
        print("")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.toolbar)
        NSLayoutConstraint.activate([
            self.toolbar.leadingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.leadingAnchor),
            self.toolbar.trailingAnchor.constraint(equalTo: self.view.layoutMarginsGuide.trailingAnchor),
            self.toolbar.bottomAnchor.constraint(equalTo: self.view.layoutMarginsGuide.bottomAnchor),
            self.toolbar.topAnchor.constraint(equalToSystemSpacingBelow: self.view.topAnchor, multiplier: 1)
        ])

        self.view.backgroundColor = .systemBackground
        toolbar.layoutIfNeeded()
    }

    // MARK: - UIBarButtonItem selectors

    @objc func settingsTapped(sender: UIButton) {
        self.present(SettingsViewController(), animated: true, completion: nil)
    }

    @objc func addHabitTapped(sender: UIButton) {
        let viewController = UINavigationController(rootViewController: HabitViewController())
        self.present(viewController, animated: true, completion: nil)
    }

    @objc func summaryTapped(sender: UIButton) {
        let viewController = UINavigationController(rootViewController: SummaryViewController())
        navigationController?.navigationBar.accessibilityIdentifier = "test"
        self.present(viewController, animated: true, completion: nil)
    }

}
