//
//  ViewController.swift
//  consolidateapp
//
//  Created by APPLE on 6/17/23.
//

import UIKit

class ViewController: UITableViewController {
    
    
    var picturesofFlags = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Consolidated App"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            print(item)
            if item.hasSuffix("png") {
                picturesofFlags.append(item)
            }
        }
 
        // Do any additional setup after loading the view.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  picturesofFlags.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        cell.textLabel?.text =  picturesofFlags[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail")
            as? DetailViewController
        {
            vc.selectedImage =  picturesofFlags[indexPath.row]
            vc.index = indexPath.row
            vc.numberofPictures = picturesofFlags.count
            navigationController?.pushViewController(vc, animated: true)
        }
            
    }


}

