//
//  ActivityIndicator.swift
//  JustGo
//
//  Created by Dirk Bester on 4/22/20.
//  Copyright © 2020 Dirk Bester. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

	func makeUIView(context: Context) -> UIActivityIndicatorView {
		let v = UIActivityIndicatorView()

		return v
	}

	func updateUIView(_ activityIndicator: UIActivityIndicatorView, context: Context) {
		activityIndicator.startAnimating()
	}
}

struct ActivityIndicator_Previews: PreviewProvider {
	static var previews: some View {
		ActivityIndicator()
	}
}
