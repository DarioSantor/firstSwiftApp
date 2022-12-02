//
//  ViewController.swift
//  test
//
//  Created by Santos, Dario Ferreira on 23/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet var viewController: UIView!
    @IBOutlet weak var editText: UITextField!
    var backgroundColor: String?
    var titleColor: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch backgroundColor {
        case "red":
            viewController.backgroundColor = .systemRed
        case "yellow":
            viewController.backgroundColor = .yellow
        case "black":
            viewController.backgroundColor = .black
            labelText.textColor = .white
        case "mint":
            viewController.backgroundColor = .systemMint
        default:
            print("No color Selected")
        }
        
        switch titleColor {
        case "red":
            labelText.textColor = .systemRed
        case "yellow":
            labelText.textColor = .yellow
        case "black":
            labelText.textColor = .black
        case "mint":
            labelText.textColor = .systemMint
        default:
            print("No color Selected")
        }
    }
  
    @IBAction func buttonChangeText(_ sender: Any) {
        labelText.text = String("Hello, iOS!")
    }
    
    @IBAction func buttonChangeTitleColor(_ sender: Any) {
        guard let colorController = storyboard?.instantiateViewController(identifier: "colorScreen") as? ColorViewController
        else {
            print("Controller not found!")
            return
        }
        colorController.toBeChanged = "title"
        present(colorController, animated: true, completion: nil)
    }
    
    @IBAction func buttonChangeBckgrdColor(_ sender: Any) {
        guard let colorController = storyboard?.instantiateViewController(identifier: "colorScreen") as? ColorViewController
        else {
            print("Controller not found!")
            return
        }
        colorController.toBeChanged = "background"
        present(colorController, animated: true, completion: nil)
    }
    
    @IBAction func buttonReplaceTxt(_ sender: Any) {
        let fieldText = editText.text
        labelText.text = fieldText
    }
    
    @IBAction func buttonNxtScreen(_ sender: Any) {
        guard let secondController = storyboard?.instantiateViewController(identifier: "secondScreen") as? SecondViewController
        else {
            print("Controller not found!")
            return
        }
        present(secondController, animated: true, completion: nil)
    }
}

