//
//  1 час 41 минута видео третьего урока
// 1 час 54 до этого не интересно 

import UIKit

class MyCollectionController: UIViewController {
    
    @IBOutlet private var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}


extension MyCollectionController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "cellTableView", for: indexPath)
    }
    
    
    
}
