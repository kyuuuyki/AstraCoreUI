//  swiftlint:disable:this file_name
//
//  +View.swift
//  AstraCoreUI
//

import Foundation
import SwiftUI

public extension View {
	func toUIView() -> UIView {
		UIHostingController(rootView: self).view
	}
}
