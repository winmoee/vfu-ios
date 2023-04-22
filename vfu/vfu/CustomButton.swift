//
//  CustomButton.swift
//  vfu
//
//  Created by Eric Nguyen on 4/22/23.
//

import Foundation
import SwiftUI

struct CustomButton: View {
    let buttonText: String
    var body: some View {
        VStack {
            Text("Find out more!")
                .foregroundColor(Color("titleblue"))
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .padding(.top, 10)
                .padding(.bottom, 10)
        }
        .background(Color("yellowish") .shadow(color: .black, radius: 3, x: 1, y: 1))
            
    }
}
