//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Michael Schmidt on 9/22/22.
//

import SwiftUI
import AVKit


struct VideoPlayerView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
