//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Alper Cem Öztürk on 21.09.2023.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
  @Published var scannedCode = ""
  @Published var alertItem: AlertItem?
  
  public var statusText: String {
    scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
  }
  
  public var statusColor: Color {
    scannedCode.isEmpty ? .red : .green
  }
}

