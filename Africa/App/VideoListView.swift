//
//  VideoListView.swift
//  Africa
//
//  Created by Nicholas on 13/06/2022.
//

import SwiftUI

struct VideoListView: View {
    // MARK:- PROPERTIES
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                   VideoListItemView(video: item)
                        .padding(.vertical, 8)
                }//: LOOP
            }// : LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Video", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        // SHUFFLE VIDEOS
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.sqaurepath")
                            
                    }
                }
            }
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
