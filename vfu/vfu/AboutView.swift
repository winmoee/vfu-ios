//
//  AboutView.swift
//  vfu
//
//  Created by Eric Nguyen and Amanda Sayaseng on 4/19/23.
//

import Foundation
import SwiftUI

struct AboutView: View {
    let briefText = "    Envisioned by Myanmar students who are currently taking part in the democracy movement from within the country, the Virtual Federal University provides a portal for alternative teaching and learning for faculty and students who refuse to cooperate with the Myanmar junta, as well as to those facing persecution by the regime."  +  "\n\n" + "    Content will include lectures and training on broad-based topics and skills relevant to Myanmar youth from the highlands to the plains. Intellectuals around the world will contribute to teaching on a pro-Bono basis in solidarity with the Myanmar democracy movement. The Virtual Federal University will provide online lessons in audio, video, and textual formats on a mobile friendly platform. Educational materials will also be delivered to local audiences inside Myanmar via radio and TV."
    let visionText = "We, students and educators, converge here on this portal in a collective struggle towards Myanmar federal democracy. We will hand over this place to stakeholders of the physical federal universities when they emerge in the mountains from Razis of the north to the Yomas in the west, riverbanks of Salween in the east and south, and floodplains of Irrawaddy in the heartland."
    let missionText = "The Virtual Federal University aims to provide a free, quality education for Myanmar federal democracy. We will act as a facilitator for peer-to-peer teaching and learning and to collaborate with independent universities and schools in liberated and federated areas such as Kachin, Karen, Mon, Shan, and Karenni as well as autonomous universities from the cities such as Yangon and Mandalay."
    var body: some View {
        ScrollView {
            VStack {
                MenuRow()
                TextSection(switchSide: true, heights: 500, title: "BRIEF ABOUT THE VFU", img: "briefImage", text: briefText)
                TextSection(switchSide: false, heights: 240, title: "OUR VISION", img: "visionImage", text: visionText)
                TextSection(switchSide: true, heights: 240, title:"OUR MISSION", img: "target", text: missionText)
                facultySection()
                successStory()
            }
        }
    }
}

struct TextSection: View {
    let titleColor = Color("titleblue")
    @State var color = Color("fadedpurple")
    @State var height: CGFloat = 0
    @State var showText = false
    @State var increment: CGFloat = 1
    let switchSide: Bool
    let heights: Int
    let title: String
    let img: String
    let text: String
    
    var body: some View {
        VStack {
            if switchSide {
                HStack {
                    VStack {
                        Text(title)
                            .foregroundColor(titleColor)
                            .font(.system(size: 28))
                            .fontWeight(.heavy)
                            .padding(.bottom, 8)
                            .padding(.top, 7)
                            .multilineTextAlignment(.center)
                        Button(action: {
                            if (color == Color("titleblue")) {
                                color = Color("fadedpurple")
                            } else {
                                color = Color("titleblue")
                            }
                            for _ in 1...heights {
                                withAnimation(.linear(duration:0.2).delay(0.0)) {
                                    height += increment
                                }
                            }
                            increment = -increment
                            withAnimation(Animation.spring().delay(0.2)) {
                                showText = !showText
                            }
                            
                        }, label: {
                            Image(systemName: "chevron.compact.down")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                                .foregroundColor(titleColor)
                        })
                    }
                    
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                }
                .frame(width: 400, height: 200)
            } else {
                HStack {
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                    VStack {
                        Text(title)
                            .foregroundColor(titleColor)
                            .font(.system(size: 28))
                            .fontWeight(.heavy)
                            .padding(.bottom, 8)
                            .padding(.top, 7)
                            .multilineTextAlignment(.center)
                        Button(action: {
                            if (color == Color("titleblue")) {
                                color = Color("fadedpurple")
                            } else {
                                color = Color("titleblue")
                            }
                            for _ in 1...heights {
                                withAnimation(.linear(duration:0.2).delay(0.0)) {
                                    height += increment
                                }
                            }
                            increment = -increment
                            withAnimation(Animation.spring().delay(0.2)) {
                                showText = !showText
                            }
                            
                        }, label: {
                            Image(systemName: "chevron.compact.down")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                                .foregroundColor(titleColor)
                        })
                    }
                }
                .frame(width: 400, height: 200)
            }
            VStack {
                Spacer()
                    .frame(width: 400, height: 25)
                if showText {
                    Text(text)
                    Spacer()
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .background(color)
            .frame(width: 400, height: height)
            .foregroundColor(.white)
        }
    }
}

struct helper {
    let nameOf: String
}

struct facultySection: View {
    let names = [helper(nameOf: "DR. STAN JAGGER"), helper(nameOf: "DR. ROSE METRO"), helper(nameOf: "NATALIE BRINHAM"), helper(nameOf: "DR. KHATTA"), helper(nameOf: "DR. THARAPHI THAN"), helper(nameOf: "MAW TUN")]
    
    var body: some View {
        VStack {
            header(headTitle: "FACULTY MEMBERS")
            Spacer()
                .frame(height: 10)
            ForEach(names, id: \.nameOf) {
                memberPanel(name: $0.nameOf, bio: "Brief Bio", acadbg: "Academic Background: -----", profbg: "Professional Background: -----", motivation: "What motivated them to contribute in VFU: -----")
            }
        }
        .frame(width: 400)
        .background(Color("fadedpurple"))
        
    }
    
}

struct memberPanel: View {
    let name: String
    let bio: String
    let acadbg: String
    let profbg: String
    let motivation: String
    var darkbluish = Color("titleblue")
    var shadowpurp = Color("shadowpurple")
    
    @State var cardOpacity = 1.0
    @State var cardNum = 0
    
    var body: some View {
        let info = [
            VStack {
                Text(name)
                    .font(.system(size: 24))
                    .foregroundColor(darkbluish)
            },
            VStack {
                Text(acadbg + "\n\n" + profbg)
                    .font(.system(size: 18))
                    .foregroundColor(darkbluish)
            },
            VStack {
                Text(bio)
                    .font(.system(size: 18))
                    .foregroundColor(darkbluish)
            },
            VStack {
                Text(motivation)
                    .font(.system(size: 18))
                    .foregroundColor(darkbluish)
            }
        ]
        
        HStack {
            if cardNum != 0 {
                Button(action: {
                    fadeOutFadeIn(increment: -1)
                }, label: {
                    Image(systemName: "chevron.compact.left")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10)
                        .foregroundColor(darkbluish)
                        .padding(.leading, 20)
                })
            }
            Spacer()
        
            info[cardNum]
                .opacity(cardOpacity)
                    
            Spacer()
            
            if cardNum != 3 {
                Button(action: {
                    fadeOutFadeIn(increment: 1)
                }, label: {
                    Image(systemName: "chevron.compact.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10)
                        .foregroundColor(darkbluish)
                        .padding(.trailing, 20)
                })
            }
            
        }
        .frame(width: 350, height: 120)
        .border(Color("titleblue"), width: 3)
        .background(.white)
        .shadow(color: shadowpurp, radius: 15, x: 1, y: 1)
        Spacer()
            .frame(height: 10)
    }
    
    func fadeOutFadeIn(increment: Int) {
        for _ in 1...10 {
            withAnimation(.linear(duration:0.2).delay(0.0)) {
                cardOpacity -= 0.1
            }
        }
        withAnimation(.linear(duration:0.1).delay(0.2)) {
            cardNum += increment
        }
        for _ in 1...10 {
            withAnimation(.linear(duration:0.2).delay(0.3)) {
                cardOpacity += 0.1
            }
        }
        
    }
}


