//
//  ViewController.swift
//  BeastList
//
//  Created by admin on 27/12/2021.
//

import UIKit

class ViewController: UIViewController {

    var taskList = ["Task #1"]
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var taskTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskTableView.dataSource = self
    }

    @IBAction func addButtonPressed(_ sender: Any) {
        guard let taskText = taskTextField.text else {return}
         
        if taskText == "" {
            return
        } else{
            taskList.append(taskText)

            //update table view with last data
            taskTableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taskTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TaskViewCell
        
        //add text to the cell using custom design
        cell.taskLabel.text = taskList[indexPath.row]

        return cell
    }
}

