//
//  ContentView.swift
//  Counter Demo
//
//  Created by Sherry Chen on 9/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var maxCount: Int = 10
    
    var percentFull: Double {
        Double(count) / Double(maxCount)
    }
    
    let buttonFontSize: CGFloat = 90
    let titleFontSize: CGFloat = 50
    let textColor: Color = .white
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Color.red
                    .ignoresSafeArea()
                    .opacity(percentFull)
                VStack {
                    HStack {
                        Text("\(count) People")
                            .font(.system(size: titleFontSize))
                            .foregroundStyle(textColor)
                        Spacer()
                        NavigationLink {
                            SettingView(maxCount: $maxCount)
                        } label: {
                            Image(systemName: "gear")
                                .font(.system(size: titleFontSize))
                                .foregroundStyle(textColor)
                        }
                        .buttonStyle(.plain)
                    }
                    .padding()
                    Spacer()
                    HStack {
                        Button {
                            if count > 0 {
                                count -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                                .font(.system(size: buttonFontSize))
                                .foregroundStyle(textColor)
                        }
                        .buttonStyle(.plain)
                        Spacer()
                        Button {
                            if count < maxCount {
                                count += 1
                            }
                        } label: {
                            Image(systemName: "plus")
                                .font(.system(size: buttonFontSize))
                                .foregroundStyle(textColor)
                        }
                        .buttonStyle(.plain)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 40)
                }
            }
        }
    }
}
    
    #Preview {
        ContentView()
    }

