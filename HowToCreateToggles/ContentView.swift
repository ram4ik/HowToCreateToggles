//
//  ContentView.swift
//  HowToCreateToggles
//
//  Created by ramil on 15.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ProfileImageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
    }
}

struct ProfileHeaderView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ProfileImageView(imageName: "cat1")
                ProfileImageView(imageName: "cat2")
                ProfileImageView(imageName: "cat3")
                ProfileImageView(imageName: "cat4")
                ProfileImageView(imageName: "cat5")
            }
        }
    }
}

struct ContentView: View {
    @State private var notificationOn = false
    
    var body: some View {
        VStack {
            ProfileHeaderView()
                .opacity(self.notificationOn ? 1 : 0.1)
               
            Toggle(isOn: $notificationOn) {
                Text("Notification Switch")
            }.padding()
            
            if notificationOn {
                Text("Notification turned on.")
            } else {
                Text("Notification turned off.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
