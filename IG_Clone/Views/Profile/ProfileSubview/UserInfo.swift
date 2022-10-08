//
//  UserInfo.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//

import SwiftUI

struct UserInfo: View {
    
    var firstName = ""
    var surName = ""
    var bio = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(firstName +  surName)
                .font(.footnote)
                .fontWeight(.semibold)
            Text(bio)
                .font(.caption)
        }
        .frame(maxWidth:.infinity, alignment: .leading)
        .padding(.vertical,4)
    }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}
