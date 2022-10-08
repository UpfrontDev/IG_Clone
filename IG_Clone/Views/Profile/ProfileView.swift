//
//  ProfileView.swift
//  IG_Clone
//
//  Created by User on 10/7/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedMedia: ProfileMediaViewModel = .grid
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    ImageAndFollow(profilePic: "photo6",postCount:" 7",followersCount:"2.9M", followingcount: "4")
                    UserInfo(firstName: "Nature_",surName: "Hope",bio: "www.naturehope.com")
                    
                    ActionButtons()
                    HStack(spacing: 35) {
                        ForEach(ProfileMediaViewModel.allCases, id: \.rawValue){item in
                            VStack{
                                Image(systemName: item.mediaType)
                                    .font(.title)
                                    .foregroundColor(selectedMedia == item ? .black : .gray)
                                if selectedMedia == item {
                                    Capsule()
                                        .foregroundColor(Color(.systemBlue))
                                        .frame(height:3)
                                }else{
                                    Capsule()
                                        .foregroundColor(Color(.clear))
                                        .frame(height:3)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.easeInOut) {
                                    self.selectedMedia = item
                                }
                            }
                        }
                    }
                    PostGrid(imagePosted: "photo5")
                }
                .padding(8)
            }
            .navigationTitle("profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                HStack{
                    NavigationLink {
                        MessageList()
                        //action goes here
                    } label: {
                        Image(systemName: "plus.square")
                            .foregroundColor(Color("darkAndWhite"))
                            .font(.title3)
                    }
                    
                    Button{
                        
                    }label: {
                        Image(systemName:"text.justify")
                            .foregroundColor(Color("darkAndWhite"))
                            .font(.title3)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
