//
//  ViewController.swift
//  AgingPeople
//
//  Created by admin on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let names = ["Alia","Mohammad","Kevin","Lubabah","Reem","Lina","Hussain","Tomas","Rodreigos","Makuto","Shien","Saitama"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = names[indexPath.row]
        cell.ageLabel.text = "\(Int.random(in: 5...95)) Years Old"
//        cell.textLabel?.text = names[indexPath.row]
//        cell.detailTextLabel?.text = "\(Int.random(in: 5...95)) Years Old"
        return cell
    }
}
