//
//  File.swift
//  project_0117
//
//  Created by Ji yeon Park on 2017. 1. 17..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import Foundation


struct MyModel {
    var jsonArray : Array<[String : Any]> = []
    
    // 첫번째 함수 : jsonData를 넘겨서 Array로 만드는(?)함수
    
    mutating func makeJSONArray(jsonData1 : Data) {
        let json = try? JSONSerialization.jsonObject(with: jsonData1, options:[])
        if let array = json as? Array<[String :Any]>{
            jsonArray = array
        }
        // if let dic = json as? [String : Any] {
        // jsonDic = dic
    }
    
    
    // 두번째 함수 : 앞에서 만든 Array의 (atIndex : Int)번째의 dictionary를 리턴하는 함수 
    
    func item(atIndex:Int) -> [String :Any] {
        return jsonArray[atIndex]
    }
    
    
}

let jsonData = "[{\"title\":\"\u{c0c8}\u{b85c}\",\"image\":\"01.jpg\",\"content\":\"\u{c601}\u{d654}\u{bcf4}\u{b7ec}\u{ac00}\u{c790}\",\"comments\": [{\"id\":1,\"user\":\"jobs\",\"comment\":\"apple\"},{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]},{\"title\":\"\u{d1a0}\u{c774}\u{c2a4}\u{d1a0}\u{b9ac}\",\"image\":\"02.jpg\", \"content\":\"Pixar\",\"comments\":[]}, {\"title\":\"ToyStory\",\"image\":\"03.jpg\",\"content\":\"\u{c6b0}\u{b514}\u{ac00} \u{cd5c}\u{ace0}\",\"comments\":[{\"id\":2,\"user\":\"bill\",\"comment\":\"Microsoft\"}]}, {\"title\":\"\u{adf9}\u{c7a5}\u{c740}\",\"image\":\"04.jpg\",\"content\":\"\u{c5b4}\u{b514}\u{b85c}\",\"comments\":[{\"id\":4,\"user\": \"cook\",\"comment\":\"apple\"}]}]".data(using: .utf8)



