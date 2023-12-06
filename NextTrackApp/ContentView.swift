//
//  ContentView.swift
//  NextTrackApp
//
//  Created by jopootrivatel on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var startAnimate = false
    
    var body: some View {
        Button(action: buttonAction) {
            HStack(spacing: 0) {
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: startAnimate ? 50 : 0, height: startAnimate ? 50 : 0)
                
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: startAnimate ? 0 : 50, height: startAnimate ? 0 : 50)
                    .opacity(startAnimate ? 0 : 1)
            }
            .foregroundStyle(.tint)
        }
    }
    
    private func buttonAction() {
        withAnimation(.spring(response: 0.3, dampingFraction: 0.5)) {
            startAnimate = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.startAnimate = false
        }
    }
    
}

#Preview {
    ContentView()
}
