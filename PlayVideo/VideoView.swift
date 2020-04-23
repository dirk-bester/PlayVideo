//
//  VideoView.swift
//  VideoPlayer
//
//  Created by Dirk Bester on 4/21/20.
//  Copyright © 2020 Dirk Bester. All rights reserved.
//

import SwiftUI
import AVFoundation
import AVKit

struct VideoView: UIViewRepresentable {
    var videoName: String
    
    func makeUIView(context: Context) -> UIView {
        return VideoPlayer(frame: .zero, videoName: videoName)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}


struct VideoView_Previews: PreviewProvider {
	static var previews: some View {
		return VideoView(videoName: "firstVideo")
		.padding()
	}
}
