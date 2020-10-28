//
//  VC3ViewController.swift
//  DemoTableview
//
//  Created by admin on 10/28/20.
//

import UIKit

struct Expandable {
    var isopen: Bool
    var name : [String]
}
class VC3ViewController: UIViewController {
    @IBOutlet weak var listDetail: UITableView!
    var data = [
        Expandable(isopen: true, name: ["Meryno", "Sandwith", "Popuy"]),
        Expandable(isopen: true, name: ["Kikik", "Nadjdk", "titlt", "Huwa", "Liluo"]),
        Expandable(isopen: true, name: ["Ioo", "Om", "Woo", "Tyyu", "Nanol","Reddd", "Uiooo"])
    ]
    var showIndexPath = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension VC3ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let button = UIButton()
        button.setTitle("Close", for: .normal)
        button.addTarget(self, action: #selector(toggle), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 0, green: 0.3414753862, blue: 0.3778942681, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.tag = section
        return button
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 34
    }
    
    @objc func toggle (button: UIButton){
        let section = button.tag
        var indexPath = [IndexPath]()
        for row in data[section].name.indices{
            print(row)
            let indexs = IndexPath(row : row, section: section)
            indexPath.append(indexs)
        }
        let expand = data[section].isopen
        data[section].isopen = !expand
        button.setTitle( expand ? "Open": "Close", for: .normal)
        if expand {
            listDetail.deleteRows(at: indexPath, with: .fade)
            
        }else {
            listDetail.insertRows(at: indexPath, with: .fade)
        }
        
    }
    
}

extension VC3ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !data[section].isopen {
            return 0
        }
        return data[section].name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FoursCellTableViewCell
        let name = data[indexPath.section].name[indexPath.row]
        cell.lblTitlte.text = name
        return cell
    }
    
    
}
