//
//  ActionButtons.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//

import SwiftUI

struct ActionButtons: View {
    @State var clicked = false
    var body: some View {
        HStack{
            Button {
                //action goes here
            }label: {
                Text("Following")
                    .foregroundColor(Color("darkAndWhite"))
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(width: 152, height: 34)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(.systemGray4))
                    )
            }
            
            
            Button {
                clicked.toggle()
                //action goes here
            }label: {
                Text("Messages")
                    .foregroundColor(Color("darkAndWhite"))
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .frame(width: 152, height: 34)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(.systemGray4))
                    )
            }
            Button{
                
            } label: {
                Image(systemName: "person.badge.plus")
                    .foregroundColor(Color("darkAndWhite"))
                    .font(.footnote)
                    .frame(width: 32, height: 34)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(.systemGray4))
                    )
            }
        }
    }
}

struct ActionButtons_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtons()
    }
}
