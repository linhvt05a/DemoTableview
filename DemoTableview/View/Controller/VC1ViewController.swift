//
//  VC1ViewController.swift
//  DemoTableview
//
//  Created by admin on 10/28/20.
//

import UIKit

class VC1ViewController: UIViewController {
    @IBOutlet weak var listDetail: UITableView!
    var items: [ItemModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        listDetail.separatorStyle = .none
    }
    

}

extension VC1ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
extension VC1ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count - 27
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SecondCellTableViewCell
        cell.lblTitle.text = items[indexPath.row].avatar_url
        cell.lblTitle.textAlignment = .justified
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        cell.layer.cornerRadius = 10
        return cell
    }
}
