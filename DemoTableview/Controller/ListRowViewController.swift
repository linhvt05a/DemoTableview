//
//  ListRowViewController.swift
//  DemoTableview
//
//  Created by admin on 10/27/20.
//

import UIKit

struct ListName {
    var id: Int
    var name: String
    var avatar: String
}
class ListRowViewController: UIViewController {

    let arrayName : [ListName] = [
        ListName(id: 0, name: "Huiih", avatar: ""),
        ListName(id: 1, name: "Kiji", avatar: ""),
        ListName(id: 2, name: "Kaki", avatar: "")
    ]
    
    @IBOutlet weak var listItem: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
            
    }

}


extension ListRowViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstCellTableViewCell
        cell.titleName.text = arrayName[indexPath.row].name
        return cell
    }
    
    
}
extension ListRowViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        switch index {
        case 0:
            let vc1 = storyboard?.instantiateViewController(identifier: "VC1ViewController") as! VC1ViewController
            vc1.items = arrayName
            navigationController?.pushViewController(vc1, animated: true)
            
        case 1:
            let vc1 = storyboard?.instantiateViewController(identifier: "VC2ViewController") as! VC2ViewController
           
            self.navigationController?.pushViewController(vc1, animated: true)
            
        case 2:
            let vc1 = storyboard?.instantiateViewController(identifier: "VC3ViewController") as! VC3ViewController
           
            self.navigationController?.pushViewController(vc1, animated: true)
        default:
            break
        }
       
       
    }
}
