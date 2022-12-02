//
//  ColorViewController.swift
//  test
//
//  Created by Santos, Dario Ferreira on 24/11/2022.
//

import UIKit

class ColorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var toBeChanged: String?
    
    @IBAction func buttonMint(_ sender: Any) {
        guard let firstController = storyboard?.instantiateViewController(identifier: "firstScreen") as? ViewController
        else {
            print("Controller not found!")
            return
        }
        if (toBeChanged == "background"){
            firstController.backgroundColor = "mint"
        } else {
            firstController.titleColor = "mint"
        }
        present(firstController, animated: true, completion: nil)
    }
    
    @IBAction func buttonYellow(_ sender: Any) {
        guard let firstController = storyboard?.instantiateViewController(identifier: "firstScreen") as? ViewController
        else {
            print("Controller not found!")
            return
        }
        if (toBeChanged == "background"){
            firstController.backgroundColor = "yellow"
        } else {
            firstController.titleColor = "yellow"
        }
        present(firstController, animated: true, completion: nil)
    }
    
    @IBAction func buttonRed(_ sender: Any) {
        guard let firstController = storyboard?.instantiateViewController(identifier: "firstScreen") as? ViewController
        else {
            print("Controller not found!")
            return
        }
        if (toBeChanged == "background"){
            firstController.backgroundColor = "red"
        } else {
            firstController.titleColor = "red"
        }
        present(firstController, animated: true, completion: nil)
    }
    
    @IBAction func buttonBlack(_ sender: Any) {
        guard let firstController = storyboard?.instantiateViewController(identifier: "firstScreen") as? ViewController
        else {
            print("Controller not found!")
            return
        }
        if (toBeChanged == "background"){
            firstController.backgroundColor = "black"
        } else {
            firstController.titleColor = "black"
        }
        present(firstController, animated: true, completion: nil)
    }

}
