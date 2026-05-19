//
//  main.swift
//  4_lesson
//
//  Created by Dmitry on 16.05.2026.
//

import Foundation

porcshe.performAction(.engineOn)
lamborghini.performAction(.openWindows)
print (lamborghini.description)
print (porcshe.description)

kamaz.performAction(action: .loadCargo(400))
scania.performAction(action: .loadCargo(100000))
print (kamaz.description)
print (scania.description)
