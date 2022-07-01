//
//  EnterUAppVCExtention.swift
//  CourseSecondLessonOne
//
//  Created by user on 01/07/2022.
//

import UIKit

extension EnterUAppVC {
    
    func loginInApp () {
        goToAppPage()
        
        //comment for tests
//        if LoginTextField.text == "" || PasswordTextField.text == "" {
//            alertFuncEnterData (Constants.StringAlert.alertEmptyText)
//        } else if let _ = dataBaseAppPeople[LoginTextField.text!]{
//            // login is have in dict
//            // check password for login
//            if PasswordTextField.text! == dataBaseAppPeople[LoginTextField.text!] {
//                print("Welcom")
//                goToAppPage()
//            } else {
//                alertFuncEnterData (Constants.StringAlert.alertPassword)
//            }
//        } else {
//            alertFuncEnterData (Constants.StringAlert.alertLogin)
//            ButtonRegistrationOutlet.isHidden = false
//        }
    }
    
    func alertFuncEnterData (_ message: String ) {

        // Создаем контроллер
        let alert = UIAlertController(
            title: "Ошибка",
            message: message,
            preferredStyle: .alert)
        // Создаем кнопку для UIAlertController
        let action = UIAlertAction(
            title: "OK",
            style: .cancel,
            handler: nil)
        // Добавляем кнопку на UIAlertController
        alert.addAction(action)
        // Показываем UIAlertController
        present(
            alert,
            animated: true,
            completion: nil)
        return
    }
}
