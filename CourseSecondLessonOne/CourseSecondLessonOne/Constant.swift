//
//  Тимешков Андрей Игоревич
// Lesson 1 Cource 2
//

import UIKit


enum Constants {
    
    enum StringAlert {
        static let alertLogin = "Такого логина нет в базе"
        static let alertEmptyText = "У вас остались незаполненные строки"
        static let alertPassword = "Не правильный пароль, восстановите пароль или зарегистрируйтесь, кнопка регистрации появится ниже"
    }
    
    enum StoryBoards {
        static let registrationStoryBoard : UIStoryboard = .init(name: "RegistrationStoryboard", bundle: nil)
        static let appTabBarStoryBoard : UIStoryboard = .init(name: "AppStoryBoard", bundle: nil)
    }
    
}
