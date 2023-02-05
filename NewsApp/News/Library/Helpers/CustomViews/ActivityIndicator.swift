//
//  ActivityIndicator.swift
//  NewsApp
//
//  Created by Aidar Satindiev on 5/2/23.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    typealias UIView = UIActivityIndicatorView
    var isAnimating: Bool
    var configuration = { (_: UIView) in }

    func makeUIView(context _: UIViewRepresentableContext<Self>) -> UIView { UIView() }
    func updateUIView(_ uiView: UIView, context _: UIViewRepresentableContext<Self>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
        configuration(uiView)
    }
}

extension View where Self == ActivityIndicator {
    func configure(_ configuration: @escaping (Self.UIView) -> Void) -> Self {
        Self(isAnimating: self.isAnimating, configuration: configuration)
    }
}
