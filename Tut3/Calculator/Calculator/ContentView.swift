//
//  ContentView.swift
//  Calculator
//
//  Created by Clemon Balasuriya on 2025-10-29.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var width = ""
    @State var Depth = ""
    @State var cost = ""
    
    var Disable: Bool{
        weight.isEmpty || height.isEmpty || width.isEmpty || Depth.isEmpty
    }
    
    var body: some View {
        VStack {
            Text("Parcel Cost Calculator")
                .bold()
                .font(.title)
                .padding()
            
            HStack(alignment: .center,spacing: 10){
                
                Label("Weight (kg)",systemImage: "")
                    .labelStyle(.titleOnly)
                    .frame(width: 120,alignment:.trailing)
                TextField("Enter the weight", text: $weight)
                    .textFieldStyle(.roundedBorder)
                    .border(Color.red, width: 2)
                    .keyboardType(.decimalPad)
                    .keyboardType(.decimalPad)
                
            }
            
            HStack(alignment: .center, spacing: 10){
                
                Label("Height (cm)", systemImage:"")
                    .labelStyle(.titleOnly)
                    .frame(width: 120,alignment: .trailing)
                TextField("Enter the height",text: $height)
                    .textFieldStyle(.roundedBorder)
                    .border(Color.red,width: 2)
                    .keyboardType(.decimalPad)
                
            }
            
            HStack(alignment: .center, spacing: 10){
                
                Label("Width (cm)",systemImage: "")
                    .labelStyle(.titleOnly)
                    .frame(width:120,alignment: .trailing)
                TextField("Enter the Width",text: $width)
                    .textFieldStyle(.roundedBorder)
                    .border(Color.red,width:2)
                    .keyboardType(.decimalPad)
            }
            
            HStack(alignment: .center, spacing: 10){
                
                Label("Depth (cm)",systemImage: "")
                    .labelStyle(.titleOnly)
                    .frame(width:120,alignment: .trailing)
                TextField("Enter the Depth",text: $Depth)
                    .textFieldStyle(.roundedBorder)
                    .border(Color.red,width:2)
                    .keyboardType(.decimalPad)
            }
            
            Button("Calculate Cost"){
                calculateCost()
            }
            .buttonStyle(.borderedProminent)
            .padding()
            .disabled(Disable)
            
            Text("Cost is: \(cost)")
            
            
        }
        .frame(alignment:.center)
        .padding()
    }
    
    private func calculateCost(){
        guard
            let w = Double(weight), w>0,
            let h = Double(height), h>0,
            let wi = Double(width), wi>0,
            let d = Double(Depth), d>0
        else{
            cost = "Error: All values must be numeric and > 0"
            return
        }
        let volume = h * wi * d
        var totCost = 3.0
        
        totCost += w * 0.5
        totCost += (volume/1000)*0.1
        
        totCost = max(totCost,4.0)
        cost = String(format:"%.2f",totCost)
        print("f: \(cost)")
        
                
    }
}

#Preview {
    ContentView()
}
