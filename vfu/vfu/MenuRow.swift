//
//  MenuRow.swift
//  vfu
//
//  Created by Eric Nguyen on 4/20/23.
//

import Foundation
import SwiftUI

struct MenuRow: View {
    let menuColor = Color("menublue")
    var body: some View {
        HStack {
            Button(action: {
                
                print("hi")
                
            }, label: {
                Image("menuIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
            })
            .padding(.trailing, 10.0)
            
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28)
                Text("Virtual Federal University")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .bold()
            }
        }
        .frame(width: 400, height: 60)
        .background(menuColor)
    }
}
