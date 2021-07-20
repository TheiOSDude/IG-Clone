//
//  StoryListView.swift
//  IGClone
//
//  Created by Lee Burrows on 20/07/2021.
//

import SwiftUI

struct StoryListView: View {
    
    private var stories: [Story]
    
    init(stories: [Story]) {
        self.stories = stories
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(self.stories, id: \.id) {(story) in
                    ZStack {
                        Circle()
                            .fill(Color.init(red: 193/255, green: 53/255, blue: 132/255))
                            .clipShape(Circle())
                            .frame(width: 64, height: 64)
                        Circle()
                            .fill(Color.white)
                            .clipShape(Circle())
                            .frame(width: 60, height: 60)
                        Image(story.imageName)
                                              .resizable()
                                              .scaledToFill()
                                              .clipShape(Circle())
                                              .frame(width: 56, height: 56)
                    }
                }
            }
        }
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView(stories: Story.mockStories)
    }
}
