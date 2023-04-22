//
//  successStory.swift
//  vfu
//
//  Created by Eric Nguyen on 4/21/23.
//

import Foundation
import SwiftUI

struct successStory: View {
    var darkbluish = Color("titleblue")
    var shadowpurp = Color("shadowpurple")

    var body: some View {
        VStack {
            header(headTitle: "SUCCESS STORY")
                .padding(.bottom, 10)
            VStack {
                ZStack {
                    Image("quote")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25)
                        .position(x:27, y:23)
                    Image("quote")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25)
                        .rotationEffect(.radians(.pi))
                        .position(x:322, y:196)
                    VStack {
                        Text("On-ground teaching")
                            .foregroundColor(darkbluish)
                            .bold()
                            .font(.system(size: 18))
                            .padding(.top, 20)
                            .padding(.bottom, 1)
                        Text("Karenni Praru “Karenni Praru” which means “Karenni youths” in Karenni language is a training camp situated in the liberated area within Karenni state")
                            .foregroundColor(darkbluish)
                            .padding(.bottom, 20)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .multilineTextAlignment(.center)
                    }
                    .border(Color("titleblue"), width: 3)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                }
                
            }
            .background(.white)
            .frame(width: 350)
            .shadow(color: shadowpurp, radius: 15, x: 1, y: 1)
            Spacer()
                .frame(height: 15)
            VStack {
                ZStack {
                    Image("quote")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25)
                        .position(x:25, y:23)
                    Image("quote")
                        .resizable()
                        .scaledToFit()
                        .frame(width:25)
                        .rotationEffect(.radians(.pi))
                        .position(x:325, y:298)
                    VStack {
                        Text("Karenni Praru provides alternative education and vocational training for trainees who are mostly from IDP camps around the state. It was founded on the 4th of July of 2022, had run two batches and the third batch is ongoing. The subjects include Learning about Karenni, Kayan Literature, English Language, Computer, First Aid, Guitar, Mechanics, Handcrafts, Sewing and Dance. Karenni Praru has already given free education to 98 trainees from 17 villages of Karenni.")
                            .foregroundColor(darkbluish)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .padding(.leading, 15)
                            .padding(.trailing, 15)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 15))
                    }
                    .border(Color("titleblue"), width: 3)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                }
                
            }
            .background(.white)
            .frame(width: 350)
            .shadow(color: shadowpurp, radius: 20, x: 1, y: 1)
            header(headTitle:"")
                .padding(.top, 10)
            
        }
        .frame(width: 400)
        .background(Color("fadedpurple"))
    }
}
