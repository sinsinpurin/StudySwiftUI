//
//  QRCodeView.swift
//  Timer
//
//  Created by Masaki Obayashi on 2022/07/23.
//

import SwiftUI

struct QRCodeView: View {
    @ObservedObject var qrCodeController = QRScannerController()
    
    var body: some View {
        ZStack {
            Text("Scanner goes here...")
            
            VStack {
                VStack {
                    Text("Keep scanning for QR-codes")
                        .font(.subheadline)
                    Text(self.qrCodeController.qrScanner.lastQrCode)
                                           .bold()
                                           .lineLimit(5)
                                           .padding()
                    QrCodeScannerView()
                        .found(r: self.qrCodeController.onFoundQrCode)
                        .torchLight(isOn: self.qrCodeController.qrScanner.torchIsOn)
                        .interval(delay: self.qrCodeController.qrScanner.scanInterval)
                }
                .padding(.vertical, 20)
                
                Spacer()
                HStack {
                    Button(action: {
                        self.qrCodeController.qrScanner.torchIsOn.toggle()
                    }, label: {
                        Image(systemName: self.qrCodeController.qrScanner.torchIsOn ? "bolt.fill" : "bolt.slash.fill")
                            .imageScale(.large)
                            .foregroundColor(self.qrCodeController.qrScanner.torchIsOn ? Color.yellow : Color.blue)
                            .padding()
                    })
                }
                .background(Color.white)
                .cornerRadius(10)
                
            }.padding()
        }
    }
}

struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView()
    }
}
