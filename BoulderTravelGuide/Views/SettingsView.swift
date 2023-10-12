//
//  TravelTipsView.swift
//  BoulderTravelGuide
//
//  Created by Namratha P Somachudan on 10/12/23.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isPermission") private var isPermission = false
    @AppStorage("i") var i = 0
    var pushNotificationService = PushNotificationService()
    
    var body: some View {
        Form {
            Toggle("Enable Push Notifications", isOn: $isPermission)
                .onChange(of: isPermission) {
                    pushNotificationService.requestPermissions()
                }
                .disabled(isPermission)

            Button(action: {
                    pushNotificationService.scheduleNotification(
                        title: "Travel Tips",
                        message: tips[i]
                    )
                i = i + 1
                if i >= tips.count {
                    i = 0
                }
            }) {
                HStack {
                    Text("Get travel tips in 5 seconds")
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
