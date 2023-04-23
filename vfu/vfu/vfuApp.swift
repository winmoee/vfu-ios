//
//  vfuApp.swift
//  vfu
//
//  Created by Frank Win on 4/16/23.
//

import SwiftUI

@main
struct vfuApp: App {

    @State var navPath = NavigationPath()
    @State var showMenu = false
    @State var menuOffset: CGFloat = -250
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
