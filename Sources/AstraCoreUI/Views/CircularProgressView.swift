//
//  CircularProgressView.swift
//  AstraCoreUI
//

import Foundation
import SwiftUI

public struct CircularProgressView: View {
	let backgroundColor: Color
	let foregroundColor: Color
	let lineWidth: CGFloat
	let percentage: Double
	let font: Font
	
	public init(
		backgroundColor: Color,
		foregroundColor: Color,
		lineWidth: CGFloat,
		percentage: Double,
		font: Font
	) {
		self.backgroundColor = backgroundColor
		self.foregroundColor = foregroundColor
		self.lineWidth = lineWidth
		self.percentage = percentage
		self.font = font
	}
	
	public var body: some View {
		ZStack {
			Circle()
				.stroke(
					backgroundColor.opacity(0.5),
					lineWidth: lineWidth
				)
			Circle()
				.trim(from: 0, to: percentage / 100)
				.stroke(
					foregroundColor,
					style: StrokeStyle(
						lineWidth: lineWidth,
						lineCap: .round
					)
				)
				.rotationEffect(.degrees(-90))
			Text("\(Int(percentage))%")
				.font(font)
		}
	}
}

struct CircularProgressView_Previews: PreviewProvider {
	static var previews: some View {
		CircularProgressView(
			backgroundColor: .green.opacity(0.5),
			foregroundColor: .green,
			lineWidth: 10,
			percentage: 25,
			font: .system(size: 17, weight: .bold)
		)
		.previewLayout(.fixed(width: 100, height: 100))
		.padding()
	}
}
