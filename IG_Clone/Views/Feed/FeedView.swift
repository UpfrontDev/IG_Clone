//
//  FeedView.swift
//  IG_Clone
//
//  Created by User on 10/7/22.
//

import SwiftUI

struct FeedView: View {
    @State var currentView : NavigationType = .home
    var body: some View {
        VStack{
            ScrollView(showsIndicators: false){
                //MARK: - Stories
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack {
                        ForEach(1...10, id: \.self) { _ in
                            Stories()
                        }
                    }.frame(width:UIScreen.main.bounds.width,height: 100)
                }
                Divider()
                ForEach(1...20, id: \.self){_ in
                    PostCard(user: "photo6")
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

