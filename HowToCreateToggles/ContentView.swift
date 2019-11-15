//
//  ContentView.swift
//  HowToCreateToggles
//
//  Created by ramil on 15.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var notificationOn = false
    
    var body: some View {
        VStack {
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
