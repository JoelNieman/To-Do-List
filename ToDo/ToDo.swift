//
//  ToDo.swift
//  ToDo
//
//  Created by Joel Nieman on 10/7/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import Foundation

class ToDo {
    var action: String?

    init(action: String) {
        self.action = action
        
    }

    func addToDo() -> String {
        return "\(self.action) has been added to the To-Do list"
    }
    
    func deleteToDo() ->String {
        return "\(self.action) has been removed from the To-Do list"
    }

    func updateToDo() -> String {
        return "\(self.action) has been updated"
    }

}