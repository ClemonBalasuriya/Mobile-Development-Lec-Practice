//
//  ContentView.swift
//  MyiOSApp
//
//  Created by Pubudu Mihiranga on 2025-10-10.
//

import SwiftUI

struct ContentView: View {
    @State private var unitPrice: String = ""
    @State private var quantity: String = ""
    @State private var result: String = ""
    @State private var errorMsg: String = ""
    
    private var disbaleCalculateBtn: Bool {
        return unitPrice.isEmpty || quantity.isEmpty
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Calculator")
                .font(.largeTitle)
                .bold()
                .onTapGesture {
                    print("tapped on title")
                }
            
            Image(systemName: "function")
                .font(.title)
                .foregroundStyle(.red)
            
            HStack {
                Text("Unit Price")
                Spacer()
                TextField("Unit Price", text: $unitPrice)
                    .keyboardType(.numberPad)
                    .autocorrectionDisabled()
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .onChange(of: unitPrice) { oldValue, newValue in
                        result = ""
                        errorMsg = ""
                    }
            }
            
            HStack {
                Text("Quantity")
                Spacer()
                TextField("quantity", text: $quantity)
                    .keyboardType(.numberPad)
                    .autocorrectionDisabled()
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 150)
                    .onChange(of: quantity) { oldValue, newValue in
                        result = ""
                        errorMsg = ""
                    }
            }
            
            Button("Calculate") {
                calculate()
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            .padding(.top, 20)
            .disabled(disbaleCalculateBtn)
            
            if !result.isEmpty {
                Text(result)
                    .foregroundStyle(.green)
            }
             
            if !errorMsg.isEmpty {
                Text(errorMsg)
                    .foregroundStyle(.red)
            }
            
            Spacer()
        }
        .padding()
    }
    
    func calculate() {
        if let doubleUnitPrice = Double(unitPrice),
            let doubleQuantity = Double(quantity) {
            let total = doubleUnitPrice * doubleQuantity
            result = "Total is \(total)"
        } else {
            errorMsg = "Invalid user inputs"
        }
    }
}

#Preview {
    ContentView()
}
