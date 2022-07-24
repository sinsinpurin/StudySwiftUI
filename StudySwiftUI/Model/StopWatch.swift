//
//  StopWatch.swift
//  Timer
//
//  Created by Masaki Obayashi on 2022/07/22.
//

import Foundation
import SwiftUI

struct StopWatch {
    var time: Int
    var rapTime: [Double]
    var mode: Mode
    
    enum Mode{
        case start
        case stop
        case pause
        case reset
    }
}
