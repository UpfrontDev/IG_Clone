//
//  Stories.swift
//  IG_Clone
//
//  Created by User on 10/7/22.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        Image("photo3")
            .frame(width: 80)
            .foregroundColor(Color.purple)
            .clipShape(Circle())
           
    }
}
struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
