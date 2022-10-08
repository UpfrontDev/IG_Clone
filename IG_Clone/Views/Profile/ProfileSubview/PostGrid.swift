//
//  PostGrid.swift
//  IG_Clone
//
//  Created by User on 10/8/22.
//

import SwiftUI

struct PostGrid: View {
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    let imageDimension = UIScreen.main.bounds.width / 3
    var imagePosted = ""
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(0...15, id: \.self){ index in
                Image(imagePosted)
                    .resizable()
                    .frame(width: imageDimension,height: imageDimension)
                    .scaledToFill()
                    .border(Color.white)
                    .clipped()
                
            }
        }
    }
}

struct PostGrid_Previews: PreviewProvider {
    static var previews: some View {
        PostGrid()
    }
}
