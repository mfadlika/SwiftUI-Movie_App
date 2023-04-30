//
//  LoadingView.swift
//  SwiftUI-Movie_App
//
//  Created by Fadli M on 30/04/23.
//

import SwiftUI

struct LoadingView: View {
    @SwiftUI.State private var scaleInOut = false
    @SwiftUI.State private var rotateInOut = false
    @SwiftUI.State private var moveInOut = false
    @SwiftUI.State var show = false
    
    var body: some View {
        ZStack {
            
            //MARK: - CIRCLE SET 1
            ZStack {
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60 : 0)
                
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }.opacity(0.5)
            
            //                //MARK: - CIRCLE SET 2
            ZStack {
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60 : 0)
                
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }
            .opacity(0.5)
            .rotationEffect(.degrees(60))
            
            //MARK: - CIRCLE SET 3
            ZStack {
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60 : 0)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }
            .opacity(0.5)
            .rotationEffect(.degrees(120))
        }
        .rotationEffect(.degrees(rotateInOut ? 90 : 0))
        .scaleEffect(scaleInOut ? 1 : 1/4)
        .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8), value: show)
        .onAppear() {
            moveInOut.toggle()
            scaleInOut.toggle()
            rotateInOut.toggle()
            show.toggle()
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
