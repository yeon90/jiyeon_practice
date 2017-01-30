//
//  dataModel.swift
//  tableView_w4
//
//  Created by Ji yeon Park on 2017. 1. 30..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import Foundation
struct myModel {
    
    var jsonArray :  Array<[String : AnyObject]> = []
    
    let jsonString  =
        "[{\"title\":\"초록\",\"image\":\"01.jpg\",\"date\":\"20150116\"}," +
            "{\"title\":\"장미\",\"image\":\"02.jpg\",\"date\":\"20160505\"}," +
            "{\"title\":\"낙엽\",\"image\":\"03.jpg\",\"date\":\"20141212\"}," +
            "{\"title\":\"계단\",\"image\":\"04.jpg\",\"date\":\"20140301\"}," +
            "{\"title\":\"벽돌\",\"image\":\"05.jpg\",\"date\":\"20150101\"}," +
            "{\"title\":\"바다\",\"image\":\"06.jpg\",\"date\":\"20150707\"}," +
            "{\"title\":\"벌레\",\"image\":\"07.jpg\",\"date\":\"20140815\"}," +
            "{\"title\":\"나무\",\"image\":\"08.jpg\",\"date\":\"20161231\"}," +
            "{\"title\":\"흑백\",\"image\":\"09.jpg\",\"date\":\"20150102\"}," +
            "{\"title\":\"나비\",\"image\":\"10.jpg\",\"date\":\"20141225\"}]".data(using: .utf8)
    
    mutating func makeJSONArray(jsonS : Data) {
        let json = try? JSONSerialization.jsonObject(with: jsonS, options:[])
        if let array1 = json as? Array<[String :AnyObject]>{
            jsonArray = array1
        }
    }
}
