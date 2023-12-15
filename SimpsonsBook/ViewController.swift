//
//  ViewController.swift
//  SimpsonsBook
//
//  Created by Vedat Dokuzkardeş on 9.11.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    var mySimpsons = [Simpson]()
    var chosenSimp : Simpson?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        //Simpson Objects
        
        let homer = Simpson(name: "Homer", age: "35", image: UIImage(named: "homer")!)
        let bart = Simpson(name: "Bart", age: "13", image: UIImage(named: "bart")!)
        let lisa = Simpson(name: "Lisa", age: "8", image: UIImage(named: "lisa")!)
        let maggie = Simpson(name: "Maggie", age: "3", image: UIImage(named: "maggie")!)
        let marge = Simpson(name: "Marge", age: "33", image: UIImage(named: "marge")!)
        let patty = Simpson(name: "Patty", age: "45", image: UIImage(named: "patty")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        mySimpsons.append(marge)
        mySimpsons.append(patty)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimp = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "VC2", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VC2"{
            let destinationVC = segue.destination as! ViewController2
            destinationVC.selectedSimp = chosenSimp
        }
    }


}

