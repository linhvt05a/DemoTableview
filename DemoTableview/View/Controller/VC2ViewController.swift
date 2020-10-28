//
//  VC2ViewController.swift
//  DemoTableview
//
//  Created by admin on 10/28/20.
//

import UIKit

class VC2ViewController: UIViewController {
    var data = [ItemModel]()
    @IBOutlet weak var listDetail: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listDetail.separatorStyle = .none
    }
    
}

extension VC2ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let index = indexPath.row
        switch index {
        case 0:
            return 60
        case 1:
            return 80
            
        case 2:
            return 100
        default:
            break
        }
        return UITableView.automaticDimension
    }
    
}

extension VC2ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count - 27
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! ThirstCellTableViewCell
            cell.lblTitle.text = data[indexPath.row].avatar_url
            cell.lblTitle.textAlignment = .justified
            cell.layer.borderWidth = 0.5
            cell.layer.cornerRadius = 10
            return cell
        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! ThirstCellTableViewCell
            cell.lblTitle.text = data[indexPath.row].avatar_url
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 10
            cell.layer.borderColor = #colorLiteral(red: 0.2559002523, green: 0.63264846, blue: 1, alpha: 0.8470588235)
            cell.lblTitle.textAlignment = .justified
            return cell
        }
        if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! ThirstCellTableViewCell
            cell.lblTitle.text = data[indexPath.row].avatar_url
            cell.lblTitle.textAlignment = .justified
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 10
            cell.layer.borderColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! ThirstCellTableViewCell
            
            return cell
        }
     
    }
    
    
}
