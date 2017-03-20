import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var stamps: [Stamp]!
    
    override func viewDidLoad() {
    
        func initStamps() {
            
            stamps = []
            for i in 0..<50 {
                stamps.append(Stamp(year: (1950 + i), image: UIImage(named: "zombie")!))
            }
        }
        
        super.viewDidLoad()
        initStamps()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return stamps.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "stampCell", for: indexPath) as! StampCell
        let stamp = stamps[indexPath.item]
        cell.imageView.image = stamp.image
        return cell
    }
}

class Test: NSObject, UITableViewDelegate {
    
}


