//
//  ToDoTableViewController.swift
//  toDoList
//
//  Created by Maeve Thompson on 7/15/19.
//  Copyright © 2019 Maeve Thompson. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    

    func createToDos() -> [ToDo]
    {
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        
        return [swift, dog]
    }
    
    var toDos: [ToDo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        } else {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }


    
    
}
