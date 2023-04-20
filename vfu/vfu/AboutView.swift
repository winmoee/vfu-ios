//
//  AboutView.swift
//  vfu
//
//  Created by Amanda Sayaseng on 4/19/23.
//

import Foundation
import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    //brief about the vfu section
                    BoxRow(header: "BRIEF ABOUT THE VFU", description: "Envisioned by Myanmar students who are currently taking part in the democracy movement from within the country, the Virtual Federal University provides a portal for alternative teaching and learning for faculty and students who refuse to cooperate with the Myanmar junta, as well as to those facing persecution by the regime. Second paragraph... ")
                    Spacer()
                    Image("Artboard_6")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170)
                }.padding()
                HStack {
                    //our vision section
                    
                    //add image
                    Image("Artboard_7")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170)
                    Spacer()
                    BoxRow(header: "OUR VISION", description: "We, students and educators, converge here on this portal in a collective struggle towards Myanmar federal democracy. We will hand over this place to stakeholders of the physical federal universities when they emerge in the mountains from Razis of the north to the Yomas in the west, riverbanks of Salween in the east and south, and floodplains of Irrawaddy in the heartland.")
                }.padding()
                HStack {
                    //our mission section
                    BoxRow(header: "OUR MISSION", description: "The Virtual Federal University aims to provide a free, quality education for Myanmar federal democracy. We will act as a facilitator for peer-to-peer teaching and learning and to collaborate with independent universities and schools in liberated and federated areas such as Kachin, Karen, Mon, Shan, and Karenni as well as autonomous universities from the cities such as Yangon and Mandalay.")
                    Spacer()
                    //add image
                    Image("Artboard_8")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170)
                }.padding()
                ZStack {
                    //faculty member header
                    Rectangle()
                        .fill(Color.purple)
                        .frame(height: 60)
                    Text("FACULTY MEMBER")
                    font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                }.padding()
                HStack {
                    Spacer()
                    Spacer()
                    BoxFaculty(header: "Faculty Name", description: "Brief Bio")
                    Spacer()
                    Spacer()
                    BoxFaculty(header: "Faculty Name", description: "Brief Bio")
                    Spacer()
                    Spacer()
                    BoxFaculty(header: "Faculty Name", description: "Brief Bio")
                    Spacer()
                    Spacer()
                }
                Spacer()
                HStack {
                    //second row of faculty info
                    Spacer()
                    Spacer()
                    BoxFaculty(header: "Faculty Name", description: "Brief Bio")
                    Spacer()
                    Spacer()
                    BoxFaculty(header: "Faculty Name", description: "Brief Bio")
                    Spacer()
                    Spacer()
                    BoxFaculty(header: "Faculty Name", description: "Brief Bio")
                    Spacer()
                    Spacer()
                }.padding()
                ZStack {
                    //Success story header
                    Rectangle()
                        .fill(Color.purple)
                        .frame(height: 60)
                    Text("SUCCESS STORY")
                    font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                }.padding()
                HStack {
                    //Success story info
                }
            }
        }
    }
}

struct BoxFaculty: View {
    let header: String
    let description: String
    var body: some View {
        VStack {
            facultyView(Color: .white, header: header, description: description)
            Spacer()
            Text(description)
                .foregroundColor(.black)
                .font(.system(size: 16, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}
struct facultyView: View {
    let color: Color
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(header)
                .foregroundColor(.purple)
                .font(.system(size: 24, weight: .bold))
            Spacer()
            Text(description)
                .foregroundColor(.purple)
                .font(.system(size: 16, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
        }
        .background(color)
        .cornerRadius(5)
        .frame(maxWidth: 70, maxHeight: 60)
    }
}




