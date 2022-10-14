//
//  ViewController.swift
//  FoodBanner
//
//  Created by MAC13 on 13.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var foodTable: UITableView!
    @IBOutlet weak var tableHeight: NSLayoutConstraint!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodTable.delegate = self
        foodTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        self.foodTable.addObserver(self, forKeyPath: "contentSize", options: .new, context: nil)
//       self.foodTable.reloadData()
//        
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        self.foodTable.removeObserver(self, forKeyPath: "contentSize")
//    }
//
//    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//          if keyPath == "contentSize"
//           {
//      
//                if let newValue = change?[.newKey]{
//                    let newSize = newValue as! CGSize
//                    self.tableHeight.constant = newSize.height
//          }
//        }
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//            return "test"
//
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        <#code#>
//    }
//
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let ok = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
     
        ok.backgroundColor = .red
        ok.layer.cornerRadius = 10
        let act = ["Popular", "Album", "songs", "Fans"]
        let sigm = UISegmentedControl(items: act)
//        sigm.widthForSegment(at: 3)
        ok.addSubview(sigm)
        return ok
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
//        func pinnedHeaderView() -> UIView?{
//            let type: [String] = ["Popular", "Album", "songs", "Fans"]
//
//        }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = foodTable.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath) as? FoodCell {

            cell.foodLabel.text = "test text"
            return cell
        }
            return UITableViewCell()
    }
}

