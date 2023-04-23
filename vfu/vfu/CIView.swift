//
//  CIView.swift
//  vfu
//
//  Created by Frank Win on 4/21/23.
//

import Foundation
import SwiftUI

struct CIView : View {
    @State var courseTitle: String
    @State var instructor: String
    @State var numberModules: String
    @State var languages: String
    @State var abstract: String
    @Binding var navPath: NavigationPath
    @Binding var showMenu: Bool
    

    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    Image("n_")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170)
                    VStack {
                        Text(courseTitle)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(Color("menublue"))
                            .multilineTextAlignment(.center)
                            .padding()
                        Text(instructor)
                            .font(.system(size: 18, weight: .bold))
                            .padding()
                            .multilineTextAlignment(.center)
                        
                        Text(numberModules)
                            .font(.system(size: 15, weight: .light))
                        Text(languages)
                            .font(.system(size: 15, weight: .light))
                        Spacer()
                    }
                    Spacer()
                    
                    ZStack {
                        Rectangle()
                            .fill(Color("menublue"))
                            .frame(height: 60)
                        Text("Course Abstract")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                        
                    }
                    
                    VStack {
                        Text(abstract)
                            .font(.system(size: 15, weight: .light))
                            .padding()
                    }
                    Spacer()
                    
                    ZStack {
                        Rectangle()
                            .fill(Color("menublue"))
                            .frame(height: 60)
                        Text("Course Modules")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                        
                    }
                    
                    Text("To be added soon!")
                }
                .padding(.top, 60)
                
                GeometryReader { gr in
                    VStack {
                        MenuRow(navPath: $navPath,showMenu: $showMenu)
                            .offset(y: gr.frame(in: .global).origin.y < 0
                                    ? abs(gr.frame(in: .global).origin.y)
                                    : -gr.frame(in: .global).origin.y)
                        Spacer()
                    }
                }
                
                if showMenu {
                    GeometryReader { gr in
                        VStack {
                            MenuView(navPath: $navPath, showMenu: $showMenu)
                                .offset(y: gr.frame(in: .global).origin.y < 0
                                        ? abs(gr.frame(in: .global).origin.y)
                                        : -gr.frame(in: .global).origin.y)
                                
                            Spacer()
                        }
                        .padding(.top, 60)
                    }
                    
                }
                
                
                
        
                
            }
            
                
    
            
        } // end of VStack
    }
}

