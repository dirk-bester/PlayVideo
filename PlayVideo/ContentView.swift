//
//  ContentView.swift
//  PlayVideo
//
//  Created by Dirk Bester on 4/21/20.
//  Copyright © 2020 Dirk Bester. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			ActivityIndicator()
			VideoView(videoName: "firstVideo")
				.onTapGesture(count: 2) {
					NotificationCenter.default.post(name: .didDoubleTap, object: nil)
			}
			.onTapGesture {
				NotificationCenter.default.post(name: .didTap, object: nil)
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
			.cornerRadius(25)
			.padding()
	}
}
