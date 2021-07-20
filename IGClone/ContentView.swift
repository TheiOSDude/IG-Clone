//
//  ContentView.swift
//  IGClone
//
//  Created by Lee Burrows on 20/07/2021.
//

import SwiftUI

struct Story {
    var id: Int
    var imageName: String
    
    static var mockStories: [Story] = {
        [
            Story(id: 0, imageName: "User"),
            Story(id: 1, imageName: "Lady"),
            Story(id: 2, imageName: "GrandDad"),
            Story(id: 3, imageName: "MD")
        ]
    }()
}



struct ContentView: View {
    var body: some View {
        
        VStack() {
            HeaderView().padding(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 10))
            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    StoryListView(stories: Story.mockStories)
                }
            }.padding(.bottom, 5)
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(Post.MockPosts, id: \.id) {(post) in
                    PostView(post: post)
                }.padding(.bottom, 10)
            }
            VStack {
                // parent Container
     
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
