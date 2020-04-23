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
    var url:URL
    
    func makeUIView(context: Context) -> UIView {
        return VideoPlayer(frame: .zero, url: url)
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }

	func onTapGesture() {
print("Hey")
	}

}


struct VideoView_Previews: PreviewProvider {
	static let url = Bundle.main.url(forResource: "firstVideo", withExtension: "MOV")!

	static var previews: some View {
		return VideoView(url: url)
		.padding()
	}
}
