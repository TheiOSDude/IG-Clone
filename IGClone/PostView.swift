//
//  PostView.swift
//  IGClone
//
//  Created by Lee Burrows on 20/07/2021.
//

import SwiftUI

struct Post {
    var id: Int
    var userName: String
    var locationName: String
    var imageName: String
    var comment: String
    
    static var MockPosts: [Post] = {
        [Post(id: 1, userName: "TheiOSDude", locationName: "Gymshark HQ", imageName: "Photo", comment: "Fastest Driver at HQ"),
         Post(id: 2, userName: "TheiOSDude", locationName: "Donnington", imageName: "Photo2", comment: "Fastest B58 in the west"),
         Post(id: 3, userName: "TheiOSDude", locationName: "Driveway", imageName: "Photo1", comment: "Forever breaking")]
    }()
}

struct PostView: View {
    
    private var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    var body: some View {
        VStack() {
            HStack {
                Image("User").resizable().scaledToFit()
                VStack(alignment: .leading) {
                    Text(post.userName)
                    Text(post.locationName)
                }
                Spacer()
            }.frame(width: .infinity, height: 32, alignment: .center)
            
            Image(post.imageName).resizable().scaledToFit()
            HStack {
                
                Text(post.userName).bold().padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                Text(post.comment).padding(EdgeInsets(top: 0, leading: -5, bottom: 0, trailing: 0))
                
                Spacer()
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post.MockPosts.first!)
    }
}
