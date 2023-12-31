//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Alper Cem Öztürk on 21.09.2023.
//

import SwiftUI

struct AlertItem: Identifiable {
  let id = UUID()
  let title: String
  let message: String
  let dismissButton: Alert.Button
  
  public var titleAsText: SwiftUI.Text {
    Text(self.title)
  }
  
  public var messageAsText: SwiftUI.Text {
    Text(self.message)
  }
}

struct AlertContext {
  static let invalidDeviceInput = AlertItem(
    title: "Invalid Device Input",
    message: "Something is wrong with the camera. We are unable to capture the input.",
    dismissButton: .default(Text("OK"))
  )
  
  static let invalidScannedType = AlertItem(
    title: "Invalid Scanned Type",
    message: "The value scanned is not valid. This app scans EAN-8 and EAN-13",
    dismissButton: .default(Text("OK"))
  )
}
