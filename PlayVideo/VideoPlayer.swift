//
//  VideoPlayer.swift
//  VideoPlayer
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

		NotificationCenter.default.addObserver(self, selector: #selector(didTap),
											   name: .didTap, object: nil)
		NotificationCenter.default.addObserver(self, selector: #selector(didDoubleTap),
											   name: .didDoubleTap, object: nil)

//		playerLayer.backgroundColor = UIColor.black.cgColor	// Uncomment to see bounds
        layer.addSublayer(playerLayer)
    }

	deinit {
		NotificationCenter.default.removeObserver(self, name: .didTap, object: nil)
		NotificationCenter.default.removeObserver(self, name: .didDoubleTap, object: nil)
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

	@objc func didTap(_ notification:Notification) {
		if self.player.timeControlStatus == .playing
		{
			self.player.pause()
		}
		else
		{
			self.player.play()
		}
	}

	@objc func didDoubleTap(_ notification:Notification) {
		self.player.seek(to: CMTime.zero)
	}

}

extension Notification.Name {
	static let didTap = Notification.Name("didTap")
	static let didDoubleTap = Notification.Name("didDoubleTap")
}
