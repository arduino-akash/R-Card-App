//
//  SettingsView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  // MARK: - BODY

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          // MARK: - SECTION 1
          
          GroupBox(
            label:
              SettingsLabelView(labelText: "R-Cards", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("icon")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("This is a dummy mockup application for R-Cards. It will take you through multiple apps opening through single APP")
                .font(.footnote)
            }
          }
          
          // MARK: - SECTION 2
          
          GroupBox(
            label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.secondary)
              }
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
          
          // MARK: - SECTION 3
          
          GroupBox(
            label:
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer & Designer", content: "Akash Singh")
              SettingsRowView(name: "LinkedIn", linkLabel: "Akash Singh", linkDestination: "https://www.linkedin.com/in/akashsingh31march")

            SettingsRowView(name: "Compatibility", content: "iOS 16")
            SettingsRowView(name: "Website", linkLabel: "R-Cards", linkDestination: "www.rakuten.com")
            SettingsRowView(name: "SwiftUI", content: "4")
            SettingsRowView(name: "Version", content: "1.5.0")
          }
          
        } //: VSTACK
        .navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      } //: SCROLL
    } //: NAVIGATION
  }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
      .previewDevice("iPhone 13")
  }
}

