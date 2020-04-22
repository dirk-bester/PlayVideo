//
//  VideoPlayer.swift
//  VideoCard
//
//  Created by Dirk Bester on 4/21/20.
//  Copyright © 2020 Dirk Bester. All rights reserved.
//


import UIKit
import AVFoundation
import AVKit

class VideoPlayer: UIView {
    private let playerLayer = AVPlayerLayer()
	var player: AVPlayer!

    init(frame: CGRect, url: URL) {
        super.init(frame: frame)
        player = AVPlayer(url: url)
        player.play()
        
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill

		NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { [weak self] _ in
			self?.player?.seek(to: CMTime.zero)
			self?.player?.play()
		}

//		playerLayer.backgroundColor = UIColor.black.cgColor	// Uncomment to see bounds
        layer.addSublayer(playerLayer)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }

	func SetBackgroundColor()
	{
	}
}

