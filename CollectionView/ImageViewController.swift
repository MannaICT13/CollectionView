//
//  ImageViewController.swift
//  CollectionView
//
//  Created by USER on 5/17/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var switch1: UISwitch!
    
    @IBOutlet weak var switchlabel: UILabel!
    var mainimg:UIImage!
    var mainlabel:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = mainimg
        label.text = mainlabel
        

        // Do any additional setup after loading the view.
    }

    @IBAction func switchAction(_ sender: Any) {
        
        if switch1.isOn{
            switchlabel.text = "Switch Is ON"
            self.view.backgroundColor = UIColor.blue
        }
        else{
            self.view.backgroundColor = UIColor.white
            
        }
      
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
