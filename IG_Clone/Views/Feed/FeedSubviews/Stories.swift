//
//  Stories.swift
//  IG_Clone
//
//  Created by User on 10/7/22.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        Circle()
            .frame(width: 80)
            .foregroundColor(Color.purple)
            .overlay {
                Image(systemName: "person")
                    .foregroundColor(Color.white)
                    .font(.title)
        }
    }
}
struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
