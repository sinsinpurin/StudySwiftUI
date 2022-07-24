//
//  HomeView.swift
//  Timer
//
//  Created by Masaki Obayashi on 2022/07/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            NavigationLink{
                StopWatchView()
            } label: {
                Text("StopWatch")
            }
            
            NavigationLink{
                QRCodeView()
            } label: {
                Text("QRcode Scanner")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
