//
//  TravelTipsView.swift
//  BoulderTravelGuide
//
//  Created by Namratha P Somachudan on 10/12/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var isPermission = false
    @State private var isRemind = false
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
                        title: "Test Notification",
                        subtitle: "Tap on this!"
                    )
            }) {
                HStack {
                    Text("Get test notification in 5 seconds")
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
