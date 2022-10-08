//
//  ContentView.swift
//  IG_Clone
//
//  Created by User on 10/7/22.
//

import SwiftUI

struct Tab: View {
    @State var currentView = FeedView()
    var body: some View {
        TabView{
            NavigationView{
                FeedView()
                    .navigationTitle("Instagram")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing){
                            HStack {
                                NavigationLink{
                                    MessageList()
                                }label: {
                                    Image(systemName:"paperplane")
                                        .foregroundColor(Color("darkAndWhite"))
                                        .font(.title3)
                            }
                                NavigationLink{
                                    ReelsView()
                                }label: {
                                    Image(systemName:"plus.app")
                                        .foregroundColor(Color("darkAndWhite"))
                                        .font(.title3)
                                }
                            }
                            
                        }
                    }
            }.tabItem{
                Image(systemName: "house")
            }
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            ReelsView()
                .tabItem{
                    Image(systemName: "play.square")
                }
            ActivityView()
                .tabItem{
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                }
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
