//
//  ContentView.swift
//  PlayVideo
//
//  Created by Dirk Bester on 4/21/20.
//  Copyright © 2020 Dirk Bester. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	var url = Bundle.main.url(forResource: "firstVideo", withExtension: "MOV")!

	var body: some View {
		VideoView(url: url)
			.onTapGesture {
				print("Tapped!")
			}
			.onTapGesture(count: 2) {
				print("Double tapped!")
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
