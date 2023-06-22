//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Fauzan Dwi Prasetyo on 01/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        // MARK: - HStack, VStack, ZStack
//        VStack(aligment: .leading) {
//            Spacer()
//            Text("First")
//            Text("Second")
//            Text("Third")
//            Spacer()
//            Spacer()
//        }
        
        
        // MARK: - Colors and Frames
//        ZStack {
//            Text("Your content")
//                .background(.red)
//        }
        
//        ZStack {
//            Color.red
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            Text("Your content")
//        }
//        .ignoresSafeArea()
        
//        ZStack {
//            VStack(spacing: 0) {
//                Color.red
//                Color.blue
//            }
//
//            Text("Your content")
//                .foregroundColor(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()
        
        
        // MARK: - Gradients
        
//        LinearGradient(gradient: Gradient(stops: [
//            .init(color: .white, location: 0.40),
//            .init(color: .black, location: 0.60),
//        ]), startPoint: .top, endPoint: .bottom)
//
//        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
//
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
            
        
        // MARK: - Buttons and Images
        
//        Button("Delete selection",role: .destructive, action: executeDelete)
//
//        VStack {
//            Button("Button 1") {}
//                .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive) {}
//                .buttonStyle(.bordered)
//            Button("Button 3") {}
//                .buttonStyle(.borderedProminent)
//                .tint(.mint)
//            Button("Button 4", role: .destructive) {}
//                .buttonStyle(.borderedProminent)
//
//            Button {
//                print("tapped")
//            } label: {
//                Text("Tap me!")
//                    .padding()
//                    .foregroundColor(.white)
//                    .background(.mint)
//            }
//
//            Button {
//                print("Edit button was tapped")
//            } label: {
//                Label("Edit", systemImage: "pencil")
//            }
//        }
            
        
        // MARK: - Alert Messages
        
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important Message", isPresented: $showingAlert) {
            Button("OK", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this.")
        }
    }
    
    func executeDelete() {
        print("Now deleting...")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
