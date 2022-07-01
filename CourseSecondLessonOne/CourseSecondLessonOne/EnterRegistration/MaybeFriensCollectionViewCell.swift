//
//  MaybeFriens.swift
//  CourseSecondLessonOne
//
//  Created by user on 01/07/2022.
//

import UIKit

class MaybeFriensCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageViewMaybeFriend: UIImageView!
    
    func configurate(imageMaybeFriend: UIImage){
        
        imageViewMaybeFriend.image = imageMaybeFriend
    }
}
