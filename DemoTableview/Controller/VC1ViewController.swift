//
//  VC1ViewController.swift
//  DemoTableview
//
//  Created by admin on 10/28/20.
//

import UIKit

class VC1ViewController: UIViewController {
    @IBOutlet weak var listDetail: UITableView!
    var items: [ListName] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}

extension VC1ViewController: UITableViewDelegate {
    
}
extension VC1ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SecondCellTableViewCell
        cell.lblTitle.text = items[indexPath.row].name
        return cell
    }
    
    
}
