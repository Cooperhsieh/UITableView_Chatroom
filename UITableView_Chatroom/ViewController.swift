//
//  ViewController.swift
//  UITableView_Chatroom
//
//  Created by Cooper on 2020/10/19.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let conversation = [ Conversation(text: "你知道為什麼台灣犯罪率這麼高？", name: "pig"),
                        Conversation(text: "不知道~🤔", name: "butterfly"),
                        Conversation(text: "因為你美麗的五官是我犯罪的開端。", name: "pig"),
                        Conversation(text: "你有打火機麼？", name: "pig"),
                        Conversation(text: "吼唷！！", name: "butterfly"),
                        Conversation(text: "那你是怎麼點燃我的心的？", name: "pig"),
                        Conversation(text: "討厭～😳", name: "butterfly"),
                        Conversation(text: "我剛才叫你幫我點的那杯東西怎麼還沒來？", name: "pig"),
                        Conversation(text: "什麼東西？", name: "butterfly"),
                        Conversation(text: "我們的未來", name: "pig"),
                        Conversation(text: "很會吶", name: "butterfly"),
                        Conversation(text: "如果你是一種泡麵的話，你會是哪種口味的？", name: "pig"),
                        Conversation(text: "泡菜味吧？", name: "butterfly"),
                        Conversation(text: "那我可以泡你嗎？", name: "pig"),
                        Conversation(text: "😳😳😳😳😳", name: "butterfly"),
                        Conversation(text: "英文字母A~Z，妳會選哪兩個？", name: "pig"),
                        Conversation(text: "A 跟 Z", name: "butterfly"),
                        Conversation(text: "如果是我的話，我會選U&I", name: "pig"),
                        Conversation(text: "妳跑步跑的快嗎？", name: "pig"),
                        Conversation(text: "不快吧", name: "butterfly"),
                        Conversation(text: "那我應該追得到妳", name: "pig"),
                        Conversation(text: "不給追啦！", name: "butterfly"),
                        Conversation(text: "你覺得晴天和雨天，我比較喜歡哪一天？！", name: "pig"),
                        Conversation(text: "晴天嗎？", name: "butterfly"),
                        Conversation(text: "我喜歡有你的每一天。", name: "pig"),
                        Conversation(text: "你會什麼？", name: "pig"),
                        Conversation(text: "我會騎車、煮飯", name: "butterfly"),
                        Conversation(text: "那你知道我會什麼嗎？", name: "pig"),
                        Conversation(text: "你會什麼？！", name: "butterfly"),
                        Conversation(text: "我會喜歡你", name: "pig")]


    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        conversation.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let conversations = conversation[indexPath.row]
        if conversations.name == "pig" {
            let pigCell = tableView.dequeueReusableCell(withIdentifier: "mrCell", for: indexPath) as! MrPigTableViewCell
            pigCell.pigTextView.text = conversations.text
            return pigCell
            
        } else {
            let butterflyCell = tableView.dequeueReusableCell(withIdentifier: "missCell", for: indexPath) as! MissButterflyTableViewCell
            butterflyCell.butterflyTextView.text = conversations.text
            return butterflyCell
        }
    }
    
    
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        <#code#>
//    }
//
    
    

}

