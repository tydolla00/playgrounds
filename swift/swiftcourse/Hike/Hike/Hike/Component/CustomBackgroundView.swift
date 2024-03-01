//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Tyheir Brooks on 1/2/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            LinearGradient(
                colors: [.customGreenLight, .customGrayMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
