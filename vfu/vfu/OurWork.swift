//
//  OurWork.swift
//  vfu
//
//  Created by Eric Nguyen on 4/21/23.
//

import Foundation
import SwiftUI

struct OurWork: View {
    @Binding var navPath: NavigationPath
    @Binding var showMenu: Bool
    
    let lorem = "The Virtual Federal University aims to provide a free, critical education for Myanmar federal democracy. Envisioned by Myanmar students who are currently taking part in the democracy movement from within the country, the Virtual Federal University provides a portal for alternative teaching and learning for faculty and students who refuse to cooperate with the Myanmar junta, as well as to those facing persecution by the regime."
    
    let lorem2 = "Content will include lectures and trainings on broad-based topics and skills relevant to Myanmar youth from the highlands to the plains. Intellectuals around the world will contribute to teaching on a pro-bono basis in solidarity with the Myanmar democracy movement. The Virtual Federal University will provide online lessons in audio, video, and textual formats on a mobile-friendly platform. Educational materials will also be delivered to local audiences inside Myanmar via radio and TV. The University aims to facilitate peer to peer teaching and learning and to collaborate with independent universities and schools in liberated and federated areas such as Kachin, Karen, Mon, Shan, and Karenni as well as autonomous universities from the cities such as Yangon and Mandalay."
    
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    DiffTextSection(title: "ONLINE EDUCATION", img: "onlineed", text1: lorem, text2: lorem2, side: true, textColor: .white, bgColor: Color("titleblue"))
                            .border(.black)
                    Spacer()
                        .frame(width: 400, height: 25)
                        .background(Color("fadedpurple"))
                    DiffTextSection(title: "ON-THE-GROUNDS PROGRAM", img: "prg", text1: lorem, text2: lorem2, side: false, textColor: .white, bgColor: Color("titleblue"))
                    Projects()
                        Spacer()
                        .frame(width: 400, height: 25)
                        .background(Color("fadedpurple"))
                    DiffTextSection(title: "ACTION RESEARCH", img: "research", text1: lorem, text2: lorem2, side: true, textColor: Color("titleblue"), bgColor: .white)
                    Findings()
                    successStory()
                        
                }
                
                
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
        }
    }
}

struct DiffTextSection: View {
    let darkbluish = Color("titleblue")
    let color = Color("fadedpurple")
    @State var showLeft = false
    @State var showRight = true
    @State var slideNum = 0
    @State var xoffset: CGFloat = 0
    @State var opacity: CGFloat = 1
    @State var leftSpace: CGFloat = 30
    @State var rightSpace: CGFloat = 0
    
    let title: String
    let img: String
    let text1: String
    let text2: String
    let side: Bool
    let textColor: Color
    let bgColor: Color
    
    var body: some View {
        let textChain = [Text(text1), Text(text2)]
        VStack {
            Spacer()
                .frame(height:30)
            HStack {
                if side {
                    Text(title)
                        .foregroundColor(darkbluish)
                        .font(.system(size: 28))
                        .fontWeight(.heavy)
                        .padding(.bottom, 8)
                        .padding(.top, 7)
                        .multilineTextAlignment(.center)
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                } else {
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                    Text(title)
                        .foregroundColor(darkbluish)
                        .font(.system(size: 28))
                        .fontWeight(.heavy)
                        .padding(.bottom, 8)
                        .padding(.top, 7)
                        .multilineTextAlignment(.center)
                }
            }
            .frame(width: 400)
            Spacer()
            VStack {
                Spacer()
                    .frame(height: 25)
                HStack {
                    Spacer()
                        .frame(width:leftSpace)
                    if showLeft {
                        Button(action: {
                            switchSlides(increment: -35.0, switcher: 385.0)
                        }, label: {
                            Image(systemName: "chevron.compact.left")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10)
                                .foregroundColor(textColor)
                                .padding(.leading, 20)
                                .padding(.trailing, 10)
                        })
                    }
                    textChain[slideNum]
                        .offset(x: xoffset, y: 0)
                        .opacity(opacity)
                        .foregroundColor(textColor)
                    if showRight {
                        Button(action: {
                            switchSlides(increment: 35.0, switcher: -385)
                        }, label: {
                            Image(systemName: "chevron.compact.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10)
                                .foregroundColor(textColor)
                                .padding(.trailing, 20)
                                .padding(.leading, 10)
                        })
                    }
                    Spacer()
                        .frame(width:rightSpace)
                }
                Spacer()
                    .frame(height: 25)
            }
            .background(bgColor)
            .frame(width: 400)
            .foregroundColor(.white)
        }
    }
    
    func switchSlides(increment: CGFloat, switcher: CGFloat) {
        for _ in 1...10 {
            withAnimation(.linear(duration:0.2).delay(0.0)) {
                xoffset += increment
            }
        }
        withAnimation(.linear(duration:0.01).delay(0.3)) {
            opacity = 0
        }
        withAnimation(.linear(duration:0.01).delay(0.32)) {
            xoffset = switcher
            opacity = 1
        }
        for _ in 1...11 {
            withAnimation(.linear(duration:0.2).delay(0.32)) {
                xoffset += increment
            }
        }
        if showLeft {
            showLeft = false
            showRight = true
            leftSpace = 30
            rightSpace = 0
        } else {
            showRight = false
            showLeft = true
            leftSpace = 0
            rightSpace = 30
        }
    }
}

struct Projects: View {
    @State var showLeft = true
    @State var showRight = true
    @State var panelNum = 0
    @State var xoffset: CGFloat = 0
    @State var opacity: CGFloat = 1.0
    
    let darkbluish = Color("titleblue")
    
    var body: some View {
        let panels = [projectPanel(title: "PROJECT 1"), projectPanel(title: "PROJECT 2"), projectPanel(title: "PROJECT 3")]
        
        VStack {
            Spacer()
            HStack {
                Spacer()
                if panelNum != 0 {
                    Button(action: {
                        switchSlides(increment: -35.0, switcher: 385.0)
                        panelNum -= 1
                    }, label: {
                        Image(systemName: "chevron.compact.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10)
                            .foregroundColor(.white)
                            .padding(.leading, 20)
                            .padding(.trailing, 10)
                    })
                }
                
                panels[panelNum]
                    .offset(x: xoffset, y: 0)
                    .opacity(opacity)
                
                if panelNum != 2 {
                    Button(action: {
                        switchSlides(increment: 35.0, switcher: -385)
                        panelNum += 1
                    }, label: {
                        Image(systemName: "chevron.compact.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10)
                            .foregroundColor(.white)
                            .padding(.trailing, 20)
                            .padding(.leading, 10)
                    })
                }
                Spacer()
            }
            .frame(width: 400)
            .padding(.top, 0)
            Spacer()
        }
        .padding(.top, 20)
        .padding(.bottom, 20)
        .background(darkbluish)
    }
    
    
    func switchSlides(increment: CGFloat, switcher: CGFloat) {
        for _ in 1...10 {
            withAnimation(.linear(duration:0.2).delay(0.0)) {
                xoffset += increment
            }
        }
        withAnimation(.linear(duration:0.01).delay(0.3)) {
            opacity = 0
        }
        withAnimation(.linear(duration:0.01).delay(0.32)) {
            xoffset = switcher
            opacity = 1
        }
        for _ in 1...11 {
            withAnimation(.linear(duration:0.2).delay(0.32)) {
                xoffset += increment
            }
        }
    }
}

struct projectPanel: View {
    let darkbluish = Color("titleblue")
    let yellowish = Color("yellowish")
    let title: String
    var body: some View {
        VStack {
            VStack {
                Spacer()
                    .frame(height: 20)
                Text(title)
                    .font(.system(size: 25))
                Spacer()
                    .frame(height: 20)
            }
            .frame(width: 250)
            .background(.purple)
            .foregroundColor(.white)
            .border(.black)
        
            VStack {
                Spacer()
                Text("~-~-~-~-~------------")
                Spacer()
                    .frame(height: 80)
                CustomButton(buttonText: "Find out more!")
                Spacer()
            }
            .frame(width: 250, height: 200)
            .background(.white)
            .border(.black)
        }
    }
}

struct Findings: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("RESEARCH" + "\n" + "FINDINGS")
                        .foregroundColor(Color("titleblue"))
                        .font(.system(size: 22))
                        .fontWeight(.heavy)
                        .padding(.bottom, 8)
                        .padding(.top, 7)
                        .multilineTextAlignment(.center)
                    Image("fingings")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                }
                Spacer()
                    .frame(width: 20)
                VStack {
                    Text("We, students and educators, converge here on this portal in a collective struggle towards Myanmar federal democracy. We will hand over this place to stakeholders of the physical federal universities when they emerge in the mountains from Razis of the north to the Yomas in the west, riverbanks of Salween in the east and south, and floodplains of Irrawaddy in the heartland. Please join our journey.")
                        .foregroundColor(Color("titleblue"))
                        .font(.system(size: 16))
                    CustomButton(buttonText: "Download")
                }
                .frame(width: 200)
                Spacer()
            }
            Spacer()
                .frame(height: 40)
        }
    }
}
