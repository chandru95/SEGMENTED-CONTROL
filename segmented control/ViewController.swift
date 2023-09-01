//
//  ViewController.swift
//  segmented control
//
//  Created by Admin on 19/08/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource  , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout  {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return b.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return a.count
    }
  
      
      
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! CollectionViewCell
        cell.label.text = a[indexPath.row]
        //cell.image.image = UIImage(named: image[indexPath.row])
        //cell.layer.cornerRadius = 5
        //cell.layer.borderWidth = 5
        return cell
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! TableViewCell
        cell.label1.text = b[indexPath.row]
        //cell.label2.text = c[indexPath.row]
        //cell.img.image = UIImage(named: img[indexPath.row])
        return cell
    }
    
    
   // var b = ["a","b","c","d"]
    //var c = ["1","2","3","4"]
    //var img = ["img1","img2","img3","img4"]
   // var image = ["image1","image2","image3","image4"]
   // var a = ["a","b","c","d"]
    
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var collectionview: UICollectionView!
    var b = ["a","b","c","d"]
    
    @IBOutlet weak var tableview: UITableView!
    var a = ["a","b","c","d"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
   
    @IBAction func segmentedcontrol(_ sender: UISegmentedControl) {
        
        
        if sender.selectedSegmentIndex == 0 {
            self.table.isHidden = false
            self.collection.isHidden = true
            
        }else{
      
            self.table.isHidden = true
            self.collection.isHidden = false
        }

    
       
      
      
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{

        let size = (collectionView.frame.size.width-10)/2
        return CGSize(width: size, height: size)
    }

    
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    

}
