//
//  ViewController.swift
//  AC-iOS-HalloweenTableViewCells
//
//  Created by C4Q  on 10/30/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var images = [HalloweenImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 300
    }
    func loadData() {
        self.images = ImageData.images
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.images.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Image Cell", for: indexPath)
            if let safeCell = cell as? ImageTableViewCell {
                // cell.textLabel?.text = images[indexPath.row].imageName
                // cell.detailTextLabel?.text = images[indexPath.row].tags.joined(separator: ",")
                safeCell.halloweenImageCell.image = UIImage(named: images[indexPath.row].imageName)
                safeCell.halloweenLabel.text = images[indexPath.row].tags.joined(separator: ",")
                return safeCell
            }
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Other Image Cell", for: indexPath)
            if let cell = cell as? OtherImageTableViewCell {
                cell.halloweenImageView.image = UIImage(named: images[indexPath.row].imageName)
                cell.halloweenLabel.text = images[indexPath.row].tags.joined(separator: ",")
                return cell
            }
        }
        return UITableViewCell()
    }
    
}

