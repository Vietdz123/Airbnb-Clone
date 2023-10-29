//
//  ProfileView.swift
//  Airbnb-Clone
//
//  Created by Three Bros on 29/10/2023.
//

import SwiftUI

enum SettingOption: CaseIterable {
    
    case setting
    case access
    case vist
    
    var name: String {
        switch self {
        case .setting:
            return "Settings"
        case .access:
            return "Accessiblity"
        case .vist:
            return "Visit the Help Center"
        }
    }
    
    var imageTitlte: String {
        switch self {
        case .setting:
            return "gear"
        case .access:
            return "gear"
        case .vist:
            return "questionmark.circle"
        }
    }
    
}

struct ProfileView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Log in to start plaining your next trip")
            
            Button(action: {
                
            }, label: {
                Text("Log in")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.trailing, 22)
                    
            })
            
            HStack(alignment: .center, spacing: 8) {
                Text("Don't have an account")
                
                Text("Sign up")
                    .underline()
                    .fontWeight(.semibold)
            }
            .padding(.top)
            .font(.caption)
            
            VStack(alignment: .leading, spacing: 16) {
                SettingListView(setting: .setting)
                
                SettingListView(setting: .access)
                
                SettingListView(setting: .vist)
            }
            .padding(.trailing, 16)
            
        }
        .frame(maxWidth: .infinity)
        .padding(.leading, 22)
        
        
    }
}

struct SettingListView: View {
    
    var setting: SettingOption
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            HStack(alignment: .center, spacing: 8) {
                
                Image(systemName: setting.imageTitlte)
                
                Text(setting.name)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                
            }
            
            Divider()
        }
        

        
        
        
    }
}


#Preview {
    ProfileView()
}
