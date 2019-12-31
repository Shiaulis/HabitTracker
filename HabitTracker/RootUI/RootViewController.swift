//
//  RootViewController.swift
//  HabitTracker
//
//  Created by Andrius Shiaulis on 30.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    // MARK: - Properties

    private lazy var habitsViewController: UIViewController = {
        let viewController = HabitsTableViewController()
        let navigationViewController = UINavigationController(rootViewController: viewController)
        navigationViewController.navigationBar.prefersLargeTitles = true
        return navigationViewController
    }()

    private lazy var toolbarViewController: BottomToolbarViewController = {
        let viewController = BottomToolbarViewController()
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        return viewController
    }()

    // MARK: - UIViewController lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupToobarViewController()
        setupHabitsViewController()

        // FIXME: Should be removed after debug
        self.view.backgroundColor = .systemRed
    }

    // MARK: - Private

    private func setupHabitsViewController() {
        add(self.habitsViewController)
        self.habitsViewController.view.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.habitsViewController.view.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.habitsViewController.view.bottomAnchor.constraint(equalTo: self.toolbarViewController.view.topAnchor),
            self.habitsViewController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.habitsViewController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }

    private func setupToobarViewController() {
        add(self.toolbarViewController)

        NSLayoutConstraint.activate([
            self.toolbarViewController.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.toolbarViewController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.toolbarViewController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
        ])
    }
}

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func remove() {
        // Just to be safe, we check that this view controller
        // is actually added to a parent before removing it.
        guard parent != nil else {
            return
        }

        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
