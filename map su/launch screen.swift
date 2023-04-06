//
//  launch screen.swift
//  map su
//
//  Created by admin on 24/3/2566 BE.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5

    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "Group 2.png")
                        .font(.system(size: 80))
                        .scaleEffect(size)
                        .opacity(opacity)
                        .foregroundColor(.red)
                    Text("Epic App")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                        .scaleEffect(size)
                        .opacity(opacity)
                }
                .onAppear {
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct launch_screen_Previews: PreviewProvider {
    static var previews: some View {
        launch_screen()
    }
}
