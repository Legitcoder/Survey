//
//  CombinedViewController.swift
//  Survey
//
//  Created by Moin Uddin on 4/27/19.
//  Copyright © 2019 Moin Uddin. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToVotingScreen"{
            guard let destination = segue.destination as? VotingViewController else { return }
            destination.voteController = voteController
        }
        else if segue.identifier == "ToResultsTableViewSreeen" {
            guard let destination = segue.destination as? ResultsTableViewController else { return }
            destination.voteController = voteController
        }
    }
    

}
