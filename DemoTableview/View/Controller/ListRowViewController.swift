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

    var arrayName  = [ItemModel]()
    let network = NetworkingService()
    @IBOutlet weak var listItem: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listItem.separatorStyle = .none
        network.request(endpoint: "/users?q=hd", parameters: [:]) { (result) in
            switch result {
            case.success(let data):
                self.arrayName = data.items ?? []
            case.failure(let error): print(error.localizedDescription)
            }
            self.listItem.reloadData()
        }
       
    }

}


extension ListRowViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count - 27
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstCellTableViewCell
        cell.titleName.text = arrayName[indexPath.row].subscriptions_url
        cell.layer.borderWidth = 0.5
        cell.layer.cornerRadius = 10
        cell.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        cell.titleName.textAlignment = .justified
        return cell
    }
}
extension ListRowViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let index = indexPath.row
        switch index {
        case 0:
            return 100
        case 1:
            return 100
        case 2:
            return 100
        default:
            break
        }
        return 0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        switch index {
        case 0:
            let vc1 = storyboard?.instantiateViewController(identifier: "VC1ViewController") as! VC1ViewController
            vc1.items = arrayName
            navigationController?.pushViewController(vc1, animated: true)
            
        case 1:
            let vc2 = storyboard?.instantiateViewController(identifier: "VC2ViewController") as! VC2ViewController
            vc2.data = arrayName
            self.navigationController?.pushViewController(vc2, animated: true)
            
        case 2:
            let vc3 = storyboard?.instantiateViewController(identifier: "VC3ViewController") as! VC3ViewController
           
            self.navigationController?.pushViewController(vc3, animated: true)
        default:
            break
        }
       
       
    }
}
