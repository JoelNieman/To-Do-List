//
//  TableViewController.swift
//  ToDo
//
//  Created by Joel Nieman on 10/7/15.
//  Copyright © 2015 JoelNieman. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var toDoList = ["Learn Swift", "learn iOS Development", "Die"]
    let toDoListIdentifier = "ToDoListIdentifier"

    @IBOutlet weak var itemNumberLabel: UILabel!
    @IBOutlet weak var itemNumberInput: UITextField!
    
    @IBOutlet weak var itemUpdateLabel: UILabel!
    @IBOutlet weak var itemUpdateInput: UITextField!

    @IBOutlet weak var userItemInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad() }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() }
    

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(toDoListIdentifier) as UITableViewCell!
        
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: toDoListIdentifier) }
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell }
    
    
    

    @IBAction func addActionButton(sender: AnyObject) {
        let newItem = userItemInput.text!
        toDoList += [newItem]
        print(newItem)
        print(toDoList)}


    @IBAction func updateButtonPressed(sender: AnyObject) {
        itemNumberInput.hidden = false
        itemNumberLabel.hidden = false
    
    }
    

}
