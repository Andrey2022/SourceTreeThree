//
//  1 час 41 минута видео третьего урока
// 1 час 54 до этого не интересно 

import UIKit

class MyCollectionController: UIViewController {
    
    var Group = [
        Friend(name: "Marshal", image: UIImage(named: "Marshal"), age: "11", birthday: "10.11.2011"),
        Friend(name: "Gonchik", image: UIImage(named: "Gonchik"), age: "9", birthday: "10.11.2013"),
        Friend(name: "Rokki", image: UIImage(named: "Rokki"), age: "10", birthday: "10.11.2012"),
        Friend(name: "Zuma", image: UIImage(named: "Zuma"), age: "7", birthday: "10.11.2015")
    ]
    
    var Baza = ["Baza1", "Baza2"]
    @IBOutlet var maybeFriendsCollectionView: UICollectionView!
    
    @IBOutlet var recomendationGroups: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MyCollectionController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Group.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if ((collectionView as? MaybeFriendsCollectionView) != nil) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.maybeFriensCollectionView, for: indexPath)
            return cell
        }
        if ((collectionView as? RecomendationGroupsCollectionView) != nil) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.recomendationGroupCollectionView, for: indexPath)
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        (cell as? MaybeFriensCollectionViewCell)?.configurate(imageMaybeFriend: Group[indexPath.row].image!)
        (cell as? RecomendationGroupsCollectionViewCell)?.configurate(imageMaybeFriend: UIImage(named: Baza[indexPath.row])!)
    }
}
