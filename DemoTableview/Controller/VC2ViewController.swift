//
//  VC2ViewController.swift
//  DemoTableview
//
//  Created by admin on 10/28/20.
//

import UIKit

class VC2ViewController: UIViewController {

    @IBOutlet weak var listDetail: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension VC2ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let index = indexPath.row
        switch index {
        case 0:
            return 100
        case 1:
            return 150
            
        case 2:
            return 180
        default:
            break
        }
        return 0
    }
}

extension VC2ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! ThirstCellTableViewCell
        cell.lblTitle.text = "dasadsdas"
        
        return cell
    }
    
    
}
