//
//  SummaryViewController.swift
//  HabitTracker
//
//  Created by Andrius Shiaulis on 31.12.2019.
//  Copyright © 2019 Andrius Shiaulis. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemTeal
        self.title = NSLocalizedString("Summary", comment: "Summary screen title")
        self.navigationController?.navigationBar.accessibilityIdentifier = "summary"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
