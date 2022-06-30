//
//  Тимешков Андрей Игоревич
// Lesson 1 Cource 2
//
// как получив координаты кнопки их использовать, не переприсвоив,
//

import UIKit

class EnterUAppVC: UIViewController {

    let dataBaseAppPeople = [
        "1" : "1"]
    
    @IBOutlet var ImageEnterUAppVC: UIImageView!
    
    @IBOutlet var LabelLoginEnterUAppVC: UILabel!
    @IBOutlet var LoginTextField: UITextField!
    
    @IBOutlet var LabelPasswordEnterUAppVC: UILabel!
    @IBOutlet var PasswordTextField: UITextField!
    
    @IBOutlet var ButtonEnterOutlet: UIButton!
    @IBOutlet var ButtonRegistrationOutlet: UIButton!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        ButtonRegistrationOutlet.isHidden = true
//    }

    @IBAction func ButtonEnterRegistrationAction(_ sender: Any) {
        loginInApp ()
    }
    @IBAction func RegistrationActionButton(_ sender: Any) {
        goToRegistrationPage()
    }
    
}

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
    
    func goToRegistrationPage() {
        let viewController = Constants.StoryBoards.registrationStoryBoard.instantiateInitialViewController()
        if let viewController = viewController as? RegistrationVC {
            self.present(viewController, animated: true)
        }
    }
    func goToAppPage() {
        let tabBarController = Constants.StoryBoards.appTabBarStoryBoard.instantiateInitialViewController()
        if let tabBarController = tabBarController as? FaceTabBarController {
            tabBarController.modalPresentationStyle = .fullScreen
            self.present(tabBarController, animated: true)
            
        }
    }
}
