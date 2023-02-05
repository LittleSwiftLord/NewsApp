//
//  Models.swift
//  NewsApp
//
//  Created by Aidar Satindiev on 5/2/23.
//
import SwiftUI


struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) { self.build = build }
    var body: Content { build() }
}
