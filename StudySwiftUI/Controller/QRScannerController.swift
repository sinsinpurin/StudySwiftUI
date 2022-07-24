//
//  QRScannerController.swift
//  Timer
//
//  Created by Masaki Obayashi on 2022/07/23.
//

import Foundation

class QRScannerController: ObservableObject{
    @Published var qrScanner = QRScanner(scanInterval: 1.0, torchIsOn: false, lastQrCode: "QR code goes here")
    
    func onFoundQrCode(_ code: String) {
        self.qrScanner.lastQrCode = code
    }
}
