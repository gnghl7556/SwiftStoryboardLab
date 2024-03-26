//
//  ViewController.swift
//  MyThirdApp
//
//  Created by Mac on 3/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    var myChoiceValue = Rps.rock.rawValue
    var enermyChoice = Rps.rock.rawValue

    let rspBox = [#imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "rock"), #imageLiteral(resourceName: "paper")]
    
    @IBOutlet weak var decideLabel: UILabel!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    @IBOutlet weak var myChoiceView: UILabel!
    @IBOutlet weak var enemyChoiceView: UILabel!
    
    func solution(_ you:Int, _ enermy:Int) -> String {
        if you == 가위 {
            return enermy == 가위 ? "비겼다" : enermy == 바위 ? "졌다" : "이겼다"
        }else if you == 바위 {
            return enermy == 가위 ? "이겼다" : enermy == 바위 ? "비겼다" : "졌다"
        }else{
            return enermy == 가위 ? "졌다" : enermy == 바위 ? "이겼다" : "비겼다"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstImageView.image = #imageLiteral(resourceName: "ready")
        secondImageView.image = #imageLiteral(resourceName: "ready")
    }
 
    @IBAction func myChoiceScissors(_ sender: UIButton) {
        myChoiceValue = 가위
        firstImageView.image = #imageLiteral(resourceName: "scissors")
        myChoiceView.text = "가위"

    }
    
    @IBAction func myChoiceRock(_ sender: UIButton) {
        myChoiceValue = 바위
        firstImageView.image = #imageLiteral(resourceName: "rock")
        myChoiceView.text = "바위"
    }
    @IBAction func myChoicePaper(_ sender: UIButton) {
        myChoiceValue = 보
        firstImageView.image = #imageLiteral(resourceName: "paper")
        myChoiceView.text = "보"
    }
    
    @IBAction func gameStart(_ sender: UIButton) {
        enermyChoice = Rps.RawValue.random(in: 0...2)
        secondImageView.image = rspBox[enermyChoice]
        enemyChoiceView.text = enermyChoice == 가위 ? "가위" : enermyChoice == 바위 ? "바위" : "보"
        decideLabel.text = solution(myChoiceValue, enermyChoice)
        
        // UIAlertController 인스턴스 생성
        let alertController = UIAlertController(title: "알림", message: "상대방이 낸 값은 : \( Rps.init(rawValue: enermyChoice)!)", preferredStyle: .alert)

        // UIAlertAction을 생성하고 "확인" 버튼 추가
        let defaultAction = UIAlertAction(title: "확인", style: .default, handler: { (action) in
            // "확인" 버튼이 눌렸을 때 실행할 코드
            print("확인 버튼이 눌렸습니다.")
        })

        // 생성한 action을 alertController에 추가
        alertController.addAction(defaultAction)

        // 알람 창 표시
        // UIViewController의 메소드인 'present'를 사용하여 알람 창을 표시합니다.
        // 이 코드는 UIViewController 내부나 이와 연결된 컨텍스트에서 실행해야 합니다.
        self.present(alertController, animated: true, completion: nil)

        
    }
    
    @IBAction func readyBtn(_ sender: UIButton) {
        decideLabel.text = "선택해주세요"
        myChoiceView.text = "준비"
        enemyChoiceView.text = "준비"
        firstImageView.image = #imageLiteral(resourceName: "ready")
        secondImageView.image = #imageLiteral(resourceName: "ready")
    }
    

}

