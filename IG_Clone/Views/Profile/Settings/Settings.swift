//
//  Settings.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        VStack(spacing:20){
            Spacer()
            RoundedRectangle(cornerRadius: 6)
                .frame(width: 60, height: 8,alignment: .center)
                .padding()
            
            //Options Bar
            ForEach(SettingsViewModel.allCases, id:\.rawValue){ option in
                HStack(spacing: 16){
                    Image(systemName:option.imageName)
                        .font(.headline)
                    
                    Text(option.title)
                    
                    Spacer()
                }
                .frame(height: 35)
                .padding(.horizontal)
            }
            .padding(.vertical,4)
        }
    }
}


struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
            .previewLayout(.sizeThatFits)
    }
}
