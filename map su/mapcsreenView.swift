//
//  mapcsreenView.swift
//  map su
//
//  Created by admin on 24/3/2566 BE.
//

import SwiftUI

struct mapcsreenView: View {
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
                    Image("Logo")
                        .font(.system(size: 50))
                        .scaleEffect(size)
                        .opacity(opacity)
                        .foregroundColor(.red)
                        
                }
                .onAppear {
                    withAnimation(.easeIn(duration: 1.5)) {
                        self.size = 0.7
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


struct mapcsreenView_Previews: PreviewProvider {
    static var previews: some View {
        mapcsreenView()
    }
}
