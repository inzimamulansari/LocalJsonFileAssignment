//
//  ViewController.swift
//  LocalJsonFileAssignment
//
//  Created by Apple on 11/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    var data = DataLoader().cityData

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        print("Sode sode..\(data)")
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource{


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "City Name Cell", for: indexPath) as! CityTableViewCell
        cell.textLabel?.text = data[indexPath.row].name
        return cell
    }


}

