//
//  ViewController.swift
//  MyThirdApp
//
//  Created by Mac on 3/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    var myChoiceValue = 0
    var enermyChoice = 0

    let rspBox = [#imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "paper")]
    
    @IBOutlet weak var decideLabel: UILabel!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    @IBOutlet weak var myChoiceView: UILabel!
    @IBOutlet weak var enemyChoiceView: UILabel!
    
    func solution(_ you:Int, _ enermy:Int) -> String {
        if you == 0 {
            return enermy == 0 ? "비겼다" : enermy == 1 ? "졌다" : "이겼다"
        }else if you == 1 {
            return enermy == 0 ? "이겼다" : enermy == 1 ? "비겼다" : "졌다"
        }else{
            return enermy == 0 ? "졌다" : enermy == 1 ? "이겼다" : "비겼다"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstImageView.image = #imageLiteral(resourceName: "ready")
        secondImageView.image = #imageLiteral(resourceName: "ready")
    }
 
    @IBAction func myChoiceScissors(_ sender: UIButton) {
        myChoiceValue = 0
        firstImageView.image = #imageLiteral(resourceName: "scissors")
        myChoiceView.text = "가위"

    }
    
    @IBAction func myChoiceRock(_ sender: UIButton) {
        myChoiceValue = 1
        firstImageView.image = #imageLiteral(resourceName: "rock")
        myChoiceView.text = "바위"
    }
    @IBAction func myChoicePaper(_ sender: UIButton) {
        myChoiceValue = 2
        firstImageView.image = #imageLiteral(resourceName: "paper")
        myChoiceView.text = "보"
    }
    
    @IBAction func gameStart(_ sender: UIButton) {
        enermyChoice = (0...2).randomElement()!
        secondImageView.image = rspBox[enermyChoice]
        enemyChoiceView.text = enermyChoice == 0 ? "가위" : enermyChoice == 1 ? "바위" : "보"
        decideLabel.text = solution(myChoiceValue, enermyChoice)
        
    }
    
    @IBAction func readyBtn(_ sender: UIButton) {
        decideLabel.text = "선택해주세요"
        myChoiceView.text = "준비"
        myChoiceValue = 0
        enemyChoiceView.text = "준비"
        firstImageView.image = #imageLiteral(resourceName: "ready")
        secondImageView.image = #imageLiteral(resourceName: "ready")
    }
    

}

