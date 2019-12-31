//
//  HabitViewController.swift
//  HabitTracker
//
//  Created by Andrius Shiaulis on 31.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import UIKit

class HabitViewController: UIViewController {

    // MARK: - Properties

    private lazy var habitNameView: UIView = {
        let textField = UITextField()
        textField.placeholder = NSLocalizedString("Add a habit", comment: "habit name text field placeholder")
        textField.font = .preferredFont(forTextStyle: .title1)
        textField.clearButtonMode = .whileEditing
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false

        return textField
    }()

    private lazy var goalPeriodView: UIView = {
        let segments = ["Daily", "Weekly"]
        let segmentedControl: UISegmentedControl = .init(items: segments)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false

        return segmentedControl
    }()

    // MARK: - UIViewController lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemBackground
        setupNavigationBar()
        setupHabitNameView()
        setupGoalPeriodView()
    }

    // MARK: - Selectors

    @objc func cancelTapped(sender: UIBarButtonItem) {

    }

    @objc func saveTapped(sender: UIBarButtonItem) {

    }

    // MARK: - Private

    private func setupNavigationBar() {
        self.title = NSLocalizedString("New habit", comment: "New Habit screen title")

        let cancelButtonItem: UIBarButtonItem = .init(
            barButtonSystemItem: .cancel,
            target: self,
            action: #selector(cancelTapped(sender:))
        )
        self.navigationItem.leftBarButtonItem = cancelButtonItem

        let saveButtonItem: UIBarButtonItem = .init(
            barButtonSystemItem: .save,
            target: self,
            action: #selector(saveTapped(sender:))
        )
        self.navigationItem.rightBarButtonItem = saveButtonItem
    }

    private func setupHabitNameView() {
        self.view.addSubview(self.habitNameView)

        NSLayoutConstraint.activate([
            self.habitNameView.topAnchor.constraint(equalToSystemSpacingBelow: self.view.layoutMarginsGuide.topAnchor, multiplier: 2),
            self.habitNameView.leadingAnchor.constraint(equalToSystemSpacingAfter: self.view.layoutMarginsGuide.leadingAnchor, multiplier: 1),
            self.habitNameView.trailingAnchor.constraint(equalToSystemSpacingAfter: self.view.layoutMarginsGuide.trailingAnchor, multiplier: 1)
        ])
    }

    private func setupGoalPeriodView() {
        self.view.addSubview(self.goalPeriodView)

        NSLayoutConstraint.activate([
            self.goalPeriodView.topAnchor.constraint(equalToSystemSpacingBelow: self.habitNameView.bottomAnchor, multiplier: 2),
            self.goalPeriodView.leadingAnchor.constraint(equalTo: self.habitNameView.leadingAnchor),
            self.goalPeriodView.trailingAnchor.constraint(equalTo: self.habitNameView.trailingAnchor)
        ])
    }

}
