//
//  FriendTableViewCell.swift
//  CourseSecondLessonOne
//
//  Created by user on 18/06/2022.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    @IBOutlet private var imageFriend: UIImageView!
    @IBOutlet private var cellLabelNameFriend: UILabel!
    @IBOutlet private var cellLabelAgeFriend: UILabel!
    @IBOutlet private var cellLabelDateBirthday: UILabel!
    
    func configurate(name: String, imageFriendString: UIImage, age: String, dateBirthday: String){
        
        imageFriend.image = imageFriendString
        cellLabelNameFriend.text = name
        cellLabelAgeFriend.text = age
        cellLabelDateBirthday.text = dateBirthday
    }
}
