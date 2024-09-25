//
//  SettingView.swift
//  Counter Demo
//
//  Created by Sherry Chen on 9/24/24.
//

import SwiftUI

struct SettingView: View {
    @Binding var maxCount: Int
    var body: some View {
        Stepper("Max Count: \(maxCount)", value: $maxCount)
            .font(.title)
            .padding()
            .background(Color.white, in: .rect(cornerRadius: 10))
            .padding()
    }
}

#Preview {
    SettingView(maxCount: .constant(5))
}
