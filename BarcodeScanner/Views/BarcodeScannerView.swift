//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Alper Cem Öztürk on 20.09.2023.
//

import SwiftUI

struct BarcodeScannerView: View {
  
  @StateObject var viewModel = BarcodeScannerViewModel()
  
  var body: some View {
    VStack {
      NavigationView {
        VStack(spacing: 20) {
          ScannerView(scannedCode: self.$viewModel.scannedCode, alertItem: self.$viewModel.alertItem)
            .frame(maxWidth: .infinity, maxHeight: 300)
          
          Label("Scanner Barcode:", systemImage: "barcode.viewfinder")
            .font(.title)
          
          Text(self.viewModel.statusText)
            .bold()
            .font(.largeTitle)
            .foregroundColor(self.viewModel.statusColor)
        }
        .navigationTitle("Barcode Scanner")
        .alert(item: self.$viewModel.alertItem) { alertItem in
          Alert(
            title: self.viewModel.alertItem?.titleAsText ?? Text(""),
            message: self.viewModel.alertItem?.messageAsText ?? Text(""),
            dismissButton: .default(Text("OK"))
          )
        }
      }
    }
  }
}

struct BarcodeScannerView_Previews: PreviewProvider {
  static var previews: some View {
    BarcodeScannerView()
  }
}
