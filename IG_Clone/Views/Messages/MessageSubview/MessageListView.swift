//
//  MessageListView.swift
//  IG_Clone
//
//  Created by User on 10/7/22.
//

import SwiftUI

struct MessageListView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 60,height: 60)
            VStack(alignment: .leading) {
                Text("Name")
                    .font(.callout)
                Text("Sent an Image.")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
            Spacer()
            Button{
                
            }label: {
                Image(systemName: "camera")
                    .font(.title3)
                    .foregroundColor(Color.gray)
            }
        }
        .padding(.horizontal,10)
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
            .previewLayout(.sizeThatFits)
    }
}
