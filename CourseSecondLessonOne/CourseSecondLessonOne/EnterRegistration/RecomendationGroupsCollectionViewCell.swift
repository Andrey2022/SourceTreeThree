//
//  RecomendationGroups.swift
//  CourseSecondLessonOne
//
//  Created by user on 01/07/2022.
//

import UIKit

class RecomendationGroupsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageViewRecomendationIV: UIImageView!
    
    func configurate(imageMaybeFriend: UIImage){
        
        imageViewRecomendationIV.image = imageMaybeFriend
    }
}
