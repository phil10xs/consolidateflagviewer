//
//  DetailViewController.swift
//  consolidateapp
//
//  Created by APPLE on 6/17/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var ImageView: UIImageView!
    
    var selectedImage : String?
    var index = 0
    var numberofPictures = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            ImageView.image  = UIImage(named: imageToLoad)
        }

          
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
