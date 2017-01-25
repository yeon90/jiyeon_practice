//
//  main.swift
//  FileManager_0123
//
//  Created by Ji yeon Park on 2017. 1. 23..
//  Copyright © 2017년 Jiyeon park. All rights reserved.
//

import Foundation

print("Hello, World!")

let fileM = FileManager()
let findFile = try? fileM.contentsOfDirectory(atPath: "/Library/Desktop Pictures")
print (findFile)
