//
//  ViewController.swift
//  MySecondApp
//
//  Created by Mac on 3/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    let diceBox: [UIImage] = [ #imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //초기 설정
        
        firstImageView.image = diceBox[2]
        secondImageView.image = diceBox[2]
    }
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        //버튼이 눌렸을 때, 첫번째 이미지와 두번째 이미지를 랜덤으로 변경시킨다.
        firstImageView.image = diceBox.randomElement()
        secondImageView.image = diceBox.randomElement()
        
    }
    

}

