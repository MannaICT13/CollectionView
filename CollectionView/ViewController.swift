//
//  ViewController.swift
//  CollectionView
//
//  Created by USER on 5/17/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var array1 = ["Manna","Munna","Shaon","Limon","Lalon","Motaleb"]
    var array2 = [#imageLiteral(resourceName: "i4"),#imageLiteral(resourceName: "i5"),#imageLiteral(resourceName: "i1"),#imageLiteral(resourceName: "i3"),#imageLiteral(resourceName: "i2"),#imageLiteral(resourceName: "i1")]
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    
        return array1.count
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
         cell.img.image = array2[indexPath.row]
         cell.label.text = array1[indexPath.row]
         return cell
        
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detail:ImageViewController = self.storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as!ImageViewController
        
        detail.mainlabel = array1[indexPath.row]
        detail.mainimg = array2[indexPath.row]
        
        self.navigationController?.pushViewController(detail, animated: true)
        
        
        
    }
    
    
    


}

extension ViewController : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.width
        return CGSize(width: collectionViewWidth/3-2, height: collectionViewWidth/3-5)
        
    }
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          return 5
      }
    
}
