//
//  VoteController.swift
//  Survey
//
//  Created by Moin Uddin on 4/27/19.
//  Copyright © 2019 Moin Uddin. All rights reserved.
//

import Foundation


class VoteController {
    
    var votes: [Vote] = []
    
    func createVote(name: String, response: String){
        let vote = Vote(name: name, response: response)
        votes.append(vote)
    }
    
}
