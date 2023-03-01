//
//  ViewController.swift
//  GradientView
//
//  Created by Эллина Коржова on 1.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var shadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGradentView()
        gradientView.layer.cornerRadius = 10
        gradientView.layer.masksToBounds = true
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowRadius = 10.0
        shadowView.layer.shadowOpacity = 0.5
        shadowView.layer.shadowOffset = CGSize(width: 0.0, height: 10.0)    }
    
    func makeGradentView(){
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemBlue.cgColor, UIColor.systemRed.cgColor]
        gradient.frame = gradientView.bounds
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        gradientView.layer.addSublayer(gradient)
    }
}
