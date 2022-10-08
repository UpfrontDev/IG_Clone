//
//  PostCard.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//

import SwiftUI

struct PostCard: View {
    
    var user = " "
    var image = " "
    var id = " "
    var body: some View {
        VStack(alignment: .leading){
            HStack(){
                //MARK: - USER SECTION
                Image(user)
                    .resizable()
                    .frame(width: 30,height: 30)
                    .clipShape(Circle())
                Text("Nature_Hope")
                    .font(.caption)
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .font(.title3)
                        .foregroundColor(Color("darkAndWhite"))
                }
            }
            
            //MARK: - IMAGE SECTION
                Image("horizon")
                .resizable()
                .frame(height: 350)
            
            //MARK: - REACTION SECTION
            HStack{
                Button{
                    //action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.title2)
                }
                Button{
                    //action goes here
                } label: {
                    Image(systemName: "bubble.right")
                        .font(.title2)
                }
                Button{
                    //action goes here
                } label: {
                    Image(systemName: "paperplane")
                        .font(.title2)
                }
                Spacer()
                Button{
                    //action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.title2)
                }
            }
            .padding(.horizontal,12)
            .padding(.vertical,9)
            .foregroundColor(Color("darkAndWhite"))
            VStack(alignment: .leading){
                Text("240 likes")
                Text("View all 27 comments")
            }.font(.caption)
                .foregroundColor(Color.gray)
        }
        .padding(8)
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard()
            .previewLayout(.sizeThatFits)
    }
}
