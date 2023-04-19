//
//  ContentView.swift
//  vfu
//
//  Created by Frank Win on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    //create boolean variable and pass in boolean variable to other views
    //use content view as a main hub to call other views
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    VStack {
                        Text("Academic Strategy")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.purple)
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("Paragraph Paragraph Paragraph Paragraph Paragraph Paragraph Paragraph Paragraph Paragraph Paragraph  ")
                            .font(.system(size: 15, weight: .light))
                    }
                    Spacer()
                    Image("Artboard_3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170)
                }
                .padding()
                
                ZStack {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(height: 60)
                    Text("Available Courses")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                    
                }
                
                Spacer()
                Spacer()
                Spacer()
                
                BoxColumn(header: "Race and Caste", description: "In recent years, race and caste as categories of social hierarchy have increasingly been brought into conversation with one another.")
                BoxColumn(header: "Lies my teacher told me", description: "Envisioned by Myanmar students who are currently taking part in the democracy movement from within the country, the Virtual Federal University provides a portal for ")
                BoxColumn(header: "the best course ever", description: " faculty and students who refuse to cooperate with the Myanmar junta, as well as to those facing persecution by the regime..")
            }

        } // end of VStack
    }
    
}



struct BoxColumn: View {
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            BoxView(color: .purple, header: header, description: description)
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}

struct BoxView: View {
    let color: Color
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(header)
                .foregroundColor(.white)
                .font(.system(size: 24, weight: .bold))
            Spacer()
            Text(description)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            Button(action: {}) {
                            Text("Find out more")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(10)
                        }
            Spacer()
        }
        .background(color)
        .cornerRadius(5)
        .frame(maxWidth: 350, maxHeight: 300)
        
            }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
