//
//  StopWatchController.swift
//  Timer
//
//  Created by Masaki Obayashi on 2022/07/22.
//

import Foundation
import SwiftUI

class StopWatchController: ObservableObject{
    @Published var stopWatch = StopWatch(time: 0, rapTime: [], mode: .stop)
    var timer = Timer()
    
    func start(){
        self.stopWatch.mode = .start
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ timer in
            self.stopWatch.time += 1
            print(self.stopWatch.time)
        }
    }
    
    func pause(){
        timer.invalidate()
        self.stopWatch.mode = .pause
    }
    
    func stop(){
        timer.invalidate()
        self.stopWatch.time = 0
        self.stopWatch.rapTime = []
        self.stopWatch.mode = .stop
    }
}
