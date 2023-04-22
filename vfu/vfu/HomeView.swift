//
//  HomeVIew.swift
//  vfu
//
//  Created by Amanda Sayaseng on 4/18/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                MenuRow()
                //HStacks
                HStack {
                    BoxRow(header: "WHAT IS VFU?", description: "VFU makes learning possible for the persecuted students of Myanmar in the times of violent oppression by the military junta.")
                    Spacer()
                    Spacer()
                    Image("Artboard_3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170)
                }.padding()
                HStack {
                    BoxRow(header: "WHAT WE BELIEVE?", description: "We believe education must be free, critical, and cater to the wants and needs of the learner. We work in the pursuit of these ideals with guaranteed integrity.")
                }.padding()
                
                ZStack {
                    Rectangle()
                        .fill(Color("menublue"))
                        .frame(height: 60)
                    Text("NEW SOURCES COMING SOON!")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                }
                HStack {
                    BoxCourse(header: "Course Title", description: "About the Course and Course Objective").padding()
                    BoxCourse(header: "Course Title", description: "About the Course and Course Objective").padding()
                    BoxCourse(header: "Course Title", description: "About the Course and Course Objective").padding()
                }
                
                
                ZStack {
                    Rectangle()
                        .fill(Color("menublue"))
                        .frame(height: 60)
                    Text("WHAT'S NEWS!")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                }
                HStack {
                    BoxNews(header: "News", description: "Details").padding()
                    BoxNews(header: "News", description: "Details").padding()
                    BoxNews(header: "News", description: "Details").padding()
                }
                
                ZStack {
                    Rectangle()
                        .fill(Color("menublue"))
                        .frame(height: 60)
                    Text("SUCCESS STORY")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                }
                Spacer()
                //need HStack for success stories
            }
        }
        
    }
    
}

struct BoxNews: View {
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            NewsView(color: .white, header: header, description: description)
            Spacer()
            
                .foregroundColor(Color("menublue"))
                .font(.system(size: 24, weight: .bold))
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


struct NewsView: View {
    let color: Color
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(header)
                .foregroundColor(Color("menublue"))
                .font(.system(size: 24, weight: .medium))
            Spacer()
            Text(description)
                .foregroundColor(Color("menublue"))
                .font(.system(size: 16, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            Spacer()
        }
        .background(color)
        .cornerRadius(5)
        .frame(maxWidth: 350, maxHeight: 300)

    }
}


struct BoxCourse: View {
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            CourseView(color: .white, header: header, description: description)
            Spacer()
            
                .foregroundColor(Color("menublue"))
                .font(.system(size: 24, weight: .bold))
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

struct CourseView: View {
    let color: Color
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("Date")
            Text(header)
                .foregroundColor(Color("menublue"))
                .font(.system(size: 24, weight: .medium))
            Spacer()
            Text(description)
                .foregroundColor(Color("menublue"))
                .font(.system(size: 16, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            Button(action: {}) {
                            Text("Sign Up Now!")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color("menublue"))
                                .cornerRadius(10)
                        }
            Spacer()
        }
        .background(color)
        .cornerRadius(5)
        .frame(maxWidth: 350, maxHeight: 300)

    }
}


struct BoxRow: View {
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            rowView(color: .white, header: header, description: description)
            Spacer()
            
                .foregroundColor(Color("menublue"))
                .font(.system(size: 24, weight: .bold))
            Spacer()
            Text(description)
                .foregroundColor(Color("menublue"))
                .font(.system(size: 16, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
        }
        .frame(maxWidth: .infinity)
    }
}

struct rowView: View {
    let color: Color
    let header: String
    let description: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(header)
                .foregroundColor(Color("menublue"))
                .font(.system(size: 24, weight: .bold))
            Spacer()
            Text(description)
                .foregroundColor(Color("menublue"))
                .font(.system(size: 16, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Spacer()
            Spacer()
            Button(action: {}) {
                            Text("Find out more about VFU")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color("menublue"))
                                .cornerRadius(10)
                        }
            Spacer()
        }
        .background(color)
        .cornerRadius(5)
        .frame(maxWidth: 350, maxHeight: 300)

    }
}


