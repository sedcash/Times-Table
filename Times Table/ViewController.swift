//
//  ViewController.swift
//  Times Table
//
//  Created by Sedrick Cashaw Jr on 1/2/18.
//  Copyright © 2018 Sedrick Cashaw Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var selectionLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 100
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "\(Int(slider.value)) * \(indexPath.row + 1) = " + String(Int(slider.value) * (indexPath.row + 1))
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        selectionLabel.text = String(Int(slider.value))
        table.reloadData()
    }
    


}

