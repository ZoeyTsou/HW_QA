//
//  QViewController.swift
//  HW_QuizGame
//
//  Created by Zoey on 2016/10/28.
//  Copyright © 2016年 Zoey. All rights reserved.
//

import UIKit

struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}



class QViewController: UIViewController {
    
    @IBOutlet weak var QLabel: UILabel!
    @IBOutlet var Buttons: [UIButton]!
    
    @IBOutlet weak var ScoreNumber: UILabel!
    
    var Questions = [Question]()
    
    var QNumber = Int()

    var AnswerNumber = Int()
    
    var Score = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScoreNumber.isHidden = true
        
        Questions = [Question (Question:"在彼得潘的故事中，虎克船長最怕什麼聲音：" ,Answers:["彼得潘的叫聲","時鐘聲","美人魚的歌聲","小孩的哭聲"],Answer: 1 ),Question (Question:"白雪公主裡，後母犯了七原罪中的：" ,Answers:["嫉妒","暴食","傲慢","貪婪"],Answer: 0 ),Question (Question:"在愛麗絲夢遊仙境原著裡，愛麗絲的髮色是：" ,Answers:["黑色","金色","紅色","粉紅色"],Answer: 0 ),Question (Question:"獅子王的故事是改編哪部莎士比亞故事？" ,Answers:["羅密歐與茱麗葉","馬克白","哈姆雷特","李爾王"],Answer: 2 ),Question (Question:"阿拉丁的故事所在的地點『阿格拉巴』，在哪裡？" ,Answers:["杜拜","伊拉克","阿富汗","沒有這個地方"],Answer: 3 ),Question (Question:"花木蘭故事中，單于是指哪個民族的領袖？" ,Answers:["印地安人","匈奴人","漢人","愛斯基摩人"],Answer: 1 ),Question (Question:"美女與野獸故事中，美女其實患了哪種心理疾病？" ,Answers:["彼得潘症候群","柯塔爾症候群","斯德哥爾摩症候群","代謝症候群"],Answer: 2 ),Question (Question:"小美人魚的爸爸叫什麼名字：" ,Answers:["波士頓","小牛頓","克林頓","波賽頓"],Answer: 3 ),Question (Question:"勇敢傳說的巨石陣在英國的哪一區？" ,Answers:["英格蘭","蘇格蘭","愛爾蘭","挪威"],Answer: 0 ),Question (Question:"101忠狗的狗是什麼犬種：" ,Answers:["阿富汗獵犬","杜賓犬","大麥町","黃金獵犬"],Answer: 2 )]
        
      PickQuestion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func PickQuestion (){
        
        if Questions.count > 0{
         
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0 ..< Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
            }
            
            Questions.remove(at: QNumber)
            
        }else{
            
            endAlert()
        }
        
        
        
    }
    
    func endAlert(){
        
        var FinMessage = String()
        var FinTitle = String()
        
        if Score <= 20{
            FinTitle = "超低分誒！"
            FinMessage = "太弱了，你真的什麼都不懂"
        }
        else if Score <= 50{
            FinTitle = "不及格"
            FinMessage = "一知半解，題目很難嗎？"
        }
        else if Score <= 70{
            FinTitle = "及格了"
            FinMessage = "差強人意啦!"
        }
        else{
            FinTitle = "太厲害"
            FinMessage = "佩服佩服，真是博古通今的天才"
        }
            
            
        let eAlert = UIAlertController(title: "\(FinTitle)", message: "\(FinMessage)", preferredStyle: .alert)
        let okAction = UIAlertAction(title:"回第一題", style:.default, handler: { UIAlertAction in
        self.viewDidLoad()
        self.dismiss(animated: true,completion:nil) }
        )
        
        eAlert.addAction(okAction)
        present(eAlert, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func Btn1(_ sender: Any) {
        
        ScoreNumber.isHidden = false
        
        if AnswerNumber == 0 {
            PickQuestion()
            Score += 10
            ScoreNumber.text = "\(Score)"
        }
        else{
            NSLog("Wrong")
            PickQuestion()
        }
        
    }
    
    @IBAction func Btn2(_ sender: Any) {
        
        ScoreNumber.isHidden = false

        if AnswerNumber == 1 {
            PickQuestion()
            Score += 10
            ScoreNumber.text = "\(Score)"
        }
        else{
            NSLog("Wrong")
            PickQuestion()
        }
    }

    @IBAction func Btn3(_ sender: Any) {
        
        ScoreNumber.isHidden = false
        
        if AnswerNumber == 2 {
            PickQuestion()
            Score += 10
            ScoreNumber.text = "\(Score)"
        }
        else{
            NSLog("Wrong")
            PickQuestion()
        }
    }
    
    @IBAction func Btn4(_ sender: Any) {
        
        ScoreNumber.isHidden = false

        
        if AnswerNumber == 3 {
            PickQuestion()
            Score += 10
            ScoreNumber.text = "\(Score)"
        }
        else{
            NSLog("Wrong")
            PickQuestion()
        }
    }
    
    
    
    
    

}
