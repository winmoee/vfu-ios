//
//  Pages.swift
//  vfu
//
//  Created by Eric Nguyen on 4/22/23.
//

import Foundation
import SwiftUI

struct Pages: View {
    
    @Binding var navPath: NavigationPath
    @Binding var showMenu: Bool
    @Binding var menuOffset: CGFloat
    @State var showHome: Bool
    @State var showAbout: Bool
    @State var showWork: Bool
    @State var showCourse: Bool
    @State var showCourseInfo: Bool
    
    var body: some View {
        VStack {
            if showHome {
                HomeView(navPath: $navPath, showMenu: $showMenu)
            } else if showAbout {
                AboutView(navPath: $navPath, showMenu: $showMenu)
            } else if showWork {
                OurWork(navPath: $navPath, showMenu: $showMenu)
            } else if showCourse {
                CView(navPath: $navPath, showMenu: $showMenu)
            } else if showCourseInfo {
               
            }
        }
    }
}
