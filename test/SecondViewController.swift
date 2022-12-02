//
//  SecondViewController.swift
//  test
//
//  Created by Santos, Dario Ferreira on 23/11/2022.
//

import UIKit
import Kingfisher

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: getImgUrl())
        imageView.kf.setImage(with: url)
    }
    
    @IBAction func buttonGenerateRndImg(_ sender: Any) {
        let url = URL(string: getImgUrl())
        imageView.kf.setImage(with: url)
    }
    
    @IBAction func buttonPrevScreen(_ sender: Any) {
        guard let firstController = storyboard?.instantiateViewController(identifier: "firstScreen") as? ViewController
        else {
            print("Controller not found!")
            return
        }
        present(firstController, animated: true, completion: nil)
    }
    
    func getImgUrl() -> String {
        let url = "https://picsum.photos/id/"
        let id = Int.random(in: 0...1000)
        let imgSettings = "/200/300"
        let fullUrl = url + String(id) + imgSettings
        return fullUrl
    }
}
