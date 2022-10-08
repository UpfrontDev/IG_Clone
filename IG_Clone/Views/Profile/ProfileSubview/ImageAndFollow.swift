//
//  ImageAndFollow.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//

import SwiftUI

struct ImageAndFollow: View {
    var profilePic = ""
    var postCount = ""
    var followersCount = ""
    var followingcount = ""
    
    let posts = "Posts"
    let followers = "Followers"
    let following = "Following"
    
    var body: some View {
        HStack() {
            
            Image(profilePic)
                .resizable()
                .scaledToFill()
                .frame(width: 88, height: 88)
                .clipShape(Circle())
            
            Spacer()
            
            HStack(spacing:32){
                VStack(spacing:2){
                    Text(postCount)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text(posts)
                        .font(.caption)
                }
                
                VStack(spacing:2){
                    Text(followersCount)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text(followers)
                        .font(.caption)
                }
                
                VStack(spacing:2){
                    Text(followingcount)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text(following)
                        .font(.caption)
                }
            }
            .padding()
        }
        .foregroundColor(Color("darkAndWhite"))
        .padding(.horizontal,5)
    }
}


struct ImageAndFollow_Previews: PreviewProvider {
    static var previews: some View {
        ImageAndFollow()
    }
}
