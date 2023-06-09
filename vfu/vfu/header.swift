//
//  header.swift
//  vfu
//
//  Created by Eric Nguyen on 4/20/23.
//

import Foundation
import SwiftUI

struct header: View {
    let headerColor = Color("titleblue")
    let headTitle: String
    let fontSize: CGFloat
    var body: some View {
        VStack {
            Text(headTitle)
                .foregroundColor(.white)
                .font(.system(size: fontSize))
                .fontWeight(.bold)
        }
        .frame(width: 400, height: 70)
        .background(headerColor)
    }
}
