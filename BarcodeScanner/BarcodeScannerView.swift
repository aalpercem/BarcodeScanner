//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Alper Cem Öztürk on 20.09.2023.
//

import SwiftUI

struct BarcodeScannerView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Hello, world!")
    }
    .padding()
  }
}

struct BarcodeScannerView_Previews: PreviewProvider {
  static var previews: some View {
    BarcodeScannerView()
  }
}
