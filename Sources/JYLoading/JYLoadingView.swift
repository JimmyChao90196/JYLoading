//
//  JYLoadingView.swift
//  SwiftUIPackage-JYLoading
//
//  Created by JimmyChao on 2024/3/31.
//

import SwiftUI

public struct JYLoadingView: View {
    
    @State var progressColor: Color
    
    /// This is a test package, the only thing you can change is color
    /// - Parameter
    ///     - processColor: The tint color for the loading view.
    
    public init(progressColor: SwiftUI.Color = Color.red) {
        self.progressColor = progressColor
    }
    
    public var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle())
            .frame(width: 100, height: 100)
            .scaleEffect(5)
            .tint(progressColor)
            .padding(20)
            .transition(.scale)
    }
}
