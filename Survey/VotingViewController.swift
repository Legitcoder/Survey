//
//  VotingViewController.swift
//  Survey
//
//  Created by Moin Uddin on 4/27/19.
//  Copyright © 2019 Moin Uddin. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    var voteController: VoteController?
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var responseTextField: UITextField!
    
    
    @IBAction func submitVote(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else { return }
        
        voteController?.createVote(name: name, response: response)
        
        nameTextField.text = ""
        responseTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
