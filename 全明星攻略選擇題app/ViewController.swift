//
//  ViewController.swift
//  全明星攻略選擇題app
//
//  Created by Xie on 2022/10/9.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var progressSlider: UISlider!
    @IBOutlet weak var totalScoreLable: UILabel!
    @IBOutlet weak var numberOfQuestionLable: UILabel!
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet var answerButton: [UIButton]!
    @IBOutlet weak var againButton: UIButton!
    
    //    題目
        var index = 0
    //    題數
        var count = 0
    //    得分
        var score = 0
        var rightAnswer = ""
    //    問題
        var questions = [Question]()
        let database = QuestionDataBase()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totalScoreLable.text = "0"
        numberOfQuestionLable.text = "第\(index+1)題"
        questions.append(contentsOf: database.getQuentions())
        questions.shuffle()
        gamePlay()
        setProgressSliderValue()
//        print("\(count+1)/10")
//        print(questions[index].option)
//        print(questions[index])
        
    }
    @IBAction func answerClick(_ sender: UIButton) {
        index = index + 1
        count = count + 1
        if sender.currentTitle == rightAnswer{
            score = score + 10
            totalScoreLable.text = "\(score)"
        }
// index=10時,為列表中的第11題
        if index < 10{
            gamePlay()
        }
        else{
            gameOver()
        }
        setProgressSliderValue()
    }
        
    @IBAction func againClick(_ sender: Any) {
        reStart()
        setProgressSliderValue()
    }
    
    
    func gamePlay(){
// 選項亂數排列
        questions[index].option.shuffle()
// 顯示題目
        questionLable.text = questions[index].description
// 輸入答案
        rightAnswer = questions[index].answer
        for i in 0...2{
            answerButton[i].setTitle(questions[index].option[i], for: .normal)
        }
// 顯示第幾題
        numberOfQuestionLable.text = "第\(index+1)題"
    }
    
    func reStart(){
        score = 0
        index = 0
        totalScoreLable.text = "0"
        numberOfQuestionLable.text = "第\(index+1)題"
        questions.shuffle()
        gamePlay()
    }
    func setProgressSliderValue(){
        progressSlider.maximumValue = Float(10)
        progressSlider.value = Float(index)
        totalScoreLable.text = "\(score)"
    }
    func alertMessage(switchTitle: String, switchMessage: String){
        let alert = UIAlertController(title: switchTitle, message: switchMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "再挑戰一次吧！", style: .default, handler: (againClick(_:)))
        alert.addAction(okAction)
        (self.present(alert, animated: true, completion: nil))
    }
    func gameOver(){
        if score >= 80{
            alertMessage(switchTitle: "\(score)分", switchMessage: "很厲害喔～下一個超越行走的百科全書就是你！")
        }else if score < 80 && score > 60{
            alertMessage(switchTitle: "\(score)分", switchMessage: "及格過關～課外冷知識不能少！")
        }else {
            alertMessage(switchTitle: "\(score)分", switchMessage: "阿～好可惜，繼續用心感受世界吧！")
        }
    }
}

