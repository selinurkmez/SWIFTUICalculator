//
//  ContentView.swift
//  calculator
//
//  Created by macbook on 29.07.2024.
//  Copyright © 2024 macbook. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    
    @State var num1: String = ""
    @State var num2: String = ""
    @State var result: Double? = nil
    @State var operation: String = ""
    
    var body: some View {        ZStack {
            
            Image("Image")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                ZStack(alignment: .leading) {
                    if num1.isEmpty {
                        Text("Number-1")
                            .foregroundColor(.gray)
                            .padding(.leading, 15)
                    }
                    TextField("", text: $num1)
                        .padding()
                        .background(Color.black.opacity(0.3))
                        .cornerRadius(30)
                        .keyboardType(.decimalPad)
                }
                .padding()
                
                ZStack(alignment: .leading) {
                    if num2.isEmpty {
                        Text("Number-2")
                            .foregroundColor(.gray)
                            .padding(.leading, 15)
                    }
                    TextField("", text: $num2)
                        .padding()
                        .background(Color.black.opacity(0.3))
                        .cornerRadius(30)
                        .keyboardType(.decimalPad)
                }
                .padding()
                
                Spacer()
                
                HStack {
                    Button(action: {
                        if let value1 = Double(self.num1), let value2 = Double(self.num2) {
                            self.result = value1 + value2
                            self.operation = "Sonuç"
                        } else {
                            self.result = nil // Invalid input
                        }
                    }) {
                        HStack {
                            Image(systemName: "plus")
                                .font(.title)
                            Text(" Toplama")
                                .fontWeight(.medium)
                        }
                        .padding(10.0)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.86))
                        .foregroundColor(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                        )
                    }
                    .padding()
                    
                    Button(action: {
                        if let value1 = Double(self.num1), let value2 = Double(self.num2) {
                            self.result = value1 - value2
                            self.operation = "Sonuç"
                        } else {
                            self.result = nil
                        }
                    }) {
                        HStack {
                            Image(systemName: "minus")
                                .font(.title)
                            Text(" Çıkarma")
                                .fontWeight(.medium)
                        }
                        .padding(10.0)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.86))
                        .foregroundColor(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                        )
                    }
                    .padding()
                    
                }
                
                HStack {
                    Button(action: {
                        if let value1 = Double(self.num1), let value2 = Double(self.num2) {
                            self.result = value1 * value2
                            self.operation = "Sonuç"
                        } else {
                            self.result = nil
                        }
                    }) {
                        HStack {
                            Image(systemName: "multiply")
                                .font(.title)
                            Text(" Çarpma  ")
                                .fontWeight(.medium)
                        }
                        .padding(10.0)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.86))
                        .foregroundColor(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                        )
                    }
                    .padding()
                    
                    Button(action: {
                        if let value1 = Double(self.num1), let value2 = Double(self.num2), value2 != 0 {
                            self.result = value1 / value2
                            self.operation = "Sonuç"
                        } else {
                            self.result = nil
                        }
                    }) {
                        HStack {
                            Image(systemName: "divide")
                                .font(.title)
                            Text(" Bölme   ")
                                .fontWeight(.medium)
                        }
                        .padding(10.0)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.86))
                        .foregroundColor(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                        )
                    }
                    .padding()
                }
                
                Spacer()
                
                VStack {
                    if result != nil {
                        Text("\(operation): \(result!, specifier: "%.2f")")
                            .font(.system(size: 30, weight: .medium))
                            .padding()
                    } else {
                        Text("Geçerli sayılar giriniz.")
                            .font(.system(size: 30, weight: .medium))
                            .padding()
                    }
                }
                .padding()
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



