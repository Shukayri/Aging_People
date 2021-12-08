//
//  ViewController.swift
//  AgingPeople
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myViewTable: UITableView!
    
    var peopleNames = ["Vayne", "Darius", "Quinn", "Morgana", "Katrina", "Jayce", "Vi", "Jinx", "Draven", "Karthus", "Lux", "Rengar", "Bard", "Caitlyn", "Gailo", "Evelyn", "Brand", "Jarvan Vi"]
    
    func peopleAges(_ n: Int) -> [Int] {
        return (0..<n).map { _ in .random(in: 5...95) }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myViewTable.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "People", for: indexPath)

        cell.textLabel?.text = "\(peopleNames[indexPath.row])"
        cell.detailTextLabel?.text = "\(peopleAges(100)[indexPath.row]) years old"
        
        return cell
    }
    
    


    

      
  }
