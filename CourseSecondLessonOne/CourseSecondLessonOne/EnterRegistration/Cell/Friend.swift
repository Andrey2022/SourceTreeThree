//
//  Friend.swift
//  CourseSecondLessonOne
//
//  Created by user on 30/06/2022.
//

import UIKit

class Friend {
    
    let name: String
    let image: UIImage?
    let age: String
    let birthday: String
    
    init(name: String, image: UIImage? = nil, age: String, birthday: String) {
        self.name = name
        self.image = image
        self.age = age
        self.birthday = birthday
    }
}
