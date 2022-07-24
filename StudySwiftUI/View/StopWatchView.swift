//
//  StopWatchView.swift
//  Timer
//
//  Created by Masaki Obayashi on 2022/07/22.
//

import SwiftUI

struct StopWatchView: View {
    @ObservedObject var stopWatchController = StopWatchController()
    
    var body: some View {
        VStack{
            Text("My StopWatch")
            
            Text(String(stopWatchController.stopWatch.time))
                .font(.custom("Futura", size: 50))
                .padding(.top,200)
                .padding(.bottom,100)
                .padding(.trailing,100)
                .padding(.leading,100)
            if(self.stopWatchController.stopWatch.mode == .stop){
                Button(action: {self.stopWatchController.start()}){
                    Text("start")
                        .bold()
                        .padding()
                        .frame(width: 100, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
            }
            if(self.stopWatchController.stopWatch.mode == .start){
                Button(action: {self.stopWatchController.pause()}){
                    Text("pause")
                        .bold()
                        .padding()
                        .frame(width: 100, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
            }
            if(self.stopWatchController.stopWatch.mode == .pause){
                Button(action: {self.stopWatchController.start()}){
                    Text("start")
                        .bold()
                        .padding()
                        .frame(width: 100, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
                Button(action: {self.stopWatchController.stop()}){
                    Text("reset")
                        .bold()
                        .padding()
                        .frame(width: 100, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                }
            }
        }
    }
}

struct StopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchView()
    }
}
