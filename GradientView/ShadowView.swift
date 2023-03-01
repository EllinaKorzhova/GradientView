//
//  ShadowView.swift
//  GradientView
//
//  Created by Эллина Коржова on 1.03.23.
//

import UIKit

class ShadowView: UIView {
    private let gradientView = UIView()
    override init(frame: CGRect){
        super.init(frame: frame)
        setup()
    }
    required init?(coder: NSCoder){
        super.init(coder: coder)
        setup()
    }
    
    private func setup(){
        addSubview(gradientView)
        gradientView.layer.cornerRadius = 25
        gradientView.layer.masksToBounds = true
    }
}
