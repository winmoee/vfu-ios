//
//  MenuView.swift
//  vfu
//
//  Created by Eric Nguyen on 4/22/23.
//

import Foundation
import SwiftUI


struct MenuView: View {
    
    @Binding var navPath: NavigationPath
    @Binding var showMenu: Bool
    
    
    var body: some View {
        
            VStack {
                Button(action: {
                    showMenu = false
                    navPath.append(Views.home)
                }, label: {
                    VStack {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 140)
                        Text("Virtual Federal \n University")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: 27))
                    }
                })
                .padding(.top, 15)
                .padding(.bottom, 15)
                            
                Button(action: {
                    showMenu = false
                    navPath.append(Views.about)
                }, label: {
                    Text("About")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                })
                .padding(.top, 15)
                .padding(.bottom, 15)
                            
                Button(action: {
                    showMenu = false
                    navPath.append(Views.work)
                }, label: {
                    Text("Our Work")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                })
                .padding(.top, 15)
                .padding(.bottom, 15)
                            
                Button(action: {
                    showMenu = false
                    navPath.append(Views.course)
                }, label: {
                    Text("Courses")
                        .foregroundColor(.white)
                        .font(.system(size: 22))
                })
                .padding(.top, 15)
                .padding(.bottom, 15)
                Spacer()
                        
            }
            .frame(width: 400)
            .background(Color("menublue"))
            
        }
        
        
    
}
