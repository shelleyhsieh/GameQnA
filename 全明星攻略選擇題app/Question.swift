//
//  Question.swift
//  全明星攻略選擇題app
//
//  Created by shelley on 2022/10/9.
//

import Foundation

struct Question{
//    問題描述
    var description:String
//    選項內容
    var option: [String]
//    答案內容
    var answer: String
    
}

//題庫
struct QuestionDataBase{
    let question1 = Question(description: "請問夏天時人們會在哪條河邊的人造沙灘營造出美麗的海岸風情？", option: ["阿姆斯特丹運河", "塞納河", "萊茵河"], answer: "塞納河")
    let question2 = Question(description: "根據紫微斗數排列組合，人的命盤最多可以算到幾歲？", option: ["100歲","120歲","140歲"], answer: "120歲")
    let qeustion3 = Question(description: "載客服務官方統計全世界[最容易弄丟東西的日子]，請問在哪個節日過後最容易發現東西不見？", option: ["萬聖節","復活節","聖誕節"], answer: "萬聖節")
    let question4 = Question(description: "請問下列哪一為女性神明長相可能為大眼高鼻？", option: ["王母娘娘","觀音菩薩","九天玄女"], answer: "王母娘娘")
    let question5 = Question(description: "請問哪種疾病剛出現時被互相推卸，當時法國人稱「義大利病」，葡萄牙人稱「西班牙病」？", option: ["霍亂","天花","梅毒"], answer: "梅毒")
    let question6 = Question(description: "許多動物都會以排泄物來標記領土，請問河馬會怎麼做來擴大自己的勢力？", option: ["邊走路邊排便","邊排便邊甩尾巴","噴在別的河馬身上"], answer: "邊排便邊甩尾巴")
    let question7 = Question(description: "日本曾在2020年針對女性上班族調查最愛哪種動漫妖怪，請問下列哪個妖怪最受女性歡迎？", option: ["犬夜叉","鬼燈的冷徹","鬼太郎"], answer: "鬼太郎")
    let question8 = Question(description: "有些人出差或旅行時有認床的困擾，請問此現象也會發生在哪種動物身上？", option: ["水牛","綿羊","鴨子"], answer: "鴨子")
    let question9 = Question(description: "哪位名人曾與朋友合買樂透賺進將近13億台幣？", option: ["盧梭","孟德斯鳩","伏爾泰"], answer: "伏爾泰")
    let question10 = Question(description: "佛羅倫斯曾在19世紀被哪位文學家翻譯成翡冷翠？", option: ["朱自清","張愛玲","徐志摩"], answer: "徐志摩")
    let question11 = Question(description: "網路調查十大神奇追劇習慣，哪像行為是網友們追劇時最常做的事？", option: ["邊看邊吃","跳過片頭","愛看又愛吐槽"], answer: "邊看邊吃")

    func getQuentions() -> [Question] {
        
        return [question1, question2,qeustion3, question4, question5, question6, question7, question8, question9, question10, question11]
    }
}
