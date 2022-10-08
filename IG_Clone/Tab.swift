//
//  ContentView.swift
//  IG_Clone
//
//  Created by User on 10/7/22.
//

import SwiftUI

struct Tab: View {
    @State var mainStack : [NavigationType] = []
    var body: some View {
        NavigationStack(path: $mainStack){
            TabView{
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName:"magnifyingglass")
                    }
                ReelsView()
                    .tabItem {
                        Image(systemName: "play.square")
                    }
                ActivityView()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                        
                        Button{
                            mainStack.append(.messages)
                        }label: {
                            Image(systemName:"bolt.horizontal.circle")
                                .foregroundColor(Color("darkAndWhite"))
                                .font(.title3)
                        }
                }
            }
            .navigationDestination(for: NavigationType.self) { value in
                switch value{
                case .messages: MessageList()
                case .home:
                    FeedView()
                }
            }
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
