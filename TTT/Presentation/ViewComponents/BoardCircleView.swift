//
//  BoardCircleView.swift
//  TTT
//
//  Created by Anthony Lartey on 25/03/2024.
//

import SwiftUI

struct BoardCircleView: View {
    var geometry: GeometryProxy
    @State var sizeDivider: CGFloat = 3
    @State var padding: CGFloat = 15
    var body: some View {
        Circle()
            .fill(Color.white)
            .frame(width: geometry.size.width / sizeDivider - padding, height: geometry.size.width / sizeDivider - padding)
    }
}
#Preview {
    GeometryReader { geometry in
        BoardCircleView(geometry: geometry)
    }
}
