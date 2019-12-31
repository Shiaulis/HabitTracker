//
//  HabitsTableViewController.swift
//  HabitTracker
//
//  Created by Andrius Shiaulis on 30.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import UIKit

class HabitsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = NSLocalizedString("Habits", comment: "Habits screen title")
        self.tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
    }

}
