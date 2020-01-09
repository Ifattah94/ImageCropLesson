//
//  ViewController.swift
//  ImageCropLesson
//
//  Created by C4Q on 1/7/20.
//  Copyright © 2020 Iram Fattah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IB Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var cropButton: UIButton!
    
    //MARK: Properties
    private let strokeColor: UIColor = UIColor.purple
    private let lineWidth: CGFloat = 2.0
    private var shapeLayer = CAShapeLayer()
    private var path = UIBezierPath()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: IB Actions
    
    
    @IBAction func cropButtonPressed(_ sender: UIButton) {
        
    }
    
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        
    }
    
    
    private func addPathToShapeLayer() {
        shapeLayer.path = self.path.cgPath
        shapeLayer.strokeColor = self.strokeColor.cgColor
        shapeLayer.lineWidth = self.lineWidth
        imageView.layer.addSublayer(shapeLayer)
        
    }
    
    

}


extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchPoint = touch.location(in: self.imageView)
            path.move(to: touchPoint)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchPoint = touch.location(in: imageView)
            path.addLine(to: touchPoint)
            addPathToShapeLayer()
        }
    }
}

