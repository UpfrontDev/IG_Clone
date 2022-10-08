//
//  MessageList.swift
//  IG_Clone
//
//  Created by User on 10/7/22.
//

import SwiftUI

struct MessageList: View {
    var body: some View {
        NavigationView {
            ScrollView(){
                ForEach(1...30, id: \.self) { _ in
                    MessageListView()
                }
            }
            .navigationTitle("Messages")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MessageList_Previews: PreviewProvider {
    static var previews: some View {
        MessageList()
    }
}
