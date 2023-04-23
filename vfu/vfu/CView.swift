//
//  CourseView.swift
//  vfu
//
//  Created by Frank Win on 4/20/23.
//

import Foundation
import SwiftUI

struct CView : View {
    @Binding var navPath: NavigationPath
    @Binding var showMenu: Bool
    var body: some View {
        ScrollView {
            ZStack {
                VStack {
                    HStack {
                        VStack {
                            Text("Academic Strategy")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(Color("menublue"))
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
                            .fill(Color("menublue"))
                            .frame(height: 60)
                        Text("Available Courses")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                        
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    BoxColumn(color: Color("menublue"), header: "Race and Caste", description: "In recent years, race and caste as categories of social hierarchy have increasingly been brought into conversation with one another.", dest:
                                
                                (CIView(courseTitle: "Citizenship and Statelessness  ", instructor: "Natalie Brinham, Institute of Statelessness and Inclusion", numberModules: "Numbers of modules - 6", languages: "Languages - English, Burmese, Kachin, Arakan, Karenni", abstract: "This course will provide an overview of citizenship and statelessness in international contexts. Learning materials will be developed by the Institute on Statelessness and Inclusion. It is an entry level course that will provide an introduction to the issues. For those looking to extend their learning on these topics, we will provide links for materials that explore the issues in greater depth. We will utilise existing resources but will target lessons specifically to a multi-ethnic Myanmar audience and invite reflection on the relevance of the issues to the Myanmar context. The lessons will encourage critical thinking and reflection. They will cover an introduction to statelessness; citizenship and discrimination; childhood statelessness; citizenship stripping; statelessness and forced migration; and access to citizenship in Myanmar. Most learning materials will be in English. Where possible we will provide written and listening materials in Burmese. Following the release of each lesson and a self-study period, we will also be available for discussion sessions with the students. We also encourage peer-to-peer discussion of the lessons.", navPath: $navPath, showMenu: $showMenu)) )
                    
                    BoxColumn(color: Color("menublue"), header: "Lies my teacher told me", description: "Envisioned by Myanmar students who are currently taking part in the democracy movement from within the country, the Virtual Federal University provides a portal for ", dest:
                                CIView(courseTitle: "LIES MY TEACHER TOLD ME", instructor: "Dr. Rose Metro, University of Missouri-Columbia", numberModules: "Numbers of modules - 6", languages: "Languages - English, Burmese, Kachin", abstract: "This course will cover 5 “myths” about Burma’s history: “master narratives” that have been repeated in school textbooks and state media for so long that they may subtly influence even people who are skeptical of government propaganda. The first episode will cover how history curricula have been used as political tools in Burma and worldwide. The other 5 episodes use primary source documents to deconstruct these 5 myths by examining how they came about and who they benefit: 1. All the ethnic groups were happily united under the rule of the Burmans before the British colonized the region. 2. There are 8 national races and 135 ethnic groups indigenous to Myanmar. 3. All the national races agreed to unify in the Panglong Agreement. 4. Myanmar is a Buddhist country. 5. The 1962 military coup was necessary to prevent the country from disintegrating.", navPath: $navPath, showMenu: $showMenu)
                    
                    )
                    
                    BoxColumn(color: Color("menublue"), header: "the best course ever", description: " faculty and students who refuse to cooperate with the Myanmar junta, as well as to those facing persecution by the regime..", dest:
                    
                                CIView(courseTitle: "Labour Issues in Myanmar History", instructor: "Ko Maung and Stephen Campbell", numberModules: "Numbers of modules - 6", languages: "Languages - English and Burmese", abstract: " This course will introduce students to various issues and theories in labour studies through a survey of Myanmar labour history since the colonial period. The aim is to provide students with conceptual tools to analyse labour and employment dynamics and trends in their own country and elsewhere. The course will familiarise students with key moments in Myanmar labour history, and with the importance of workers and labour in the country’s development. By highlighting ongoing theoretical debates about labour and employment, the course will prompt students to draw on their own experience and knowledge to make sense of the diversity of historical and contemporary labour arrangements in Myanmar, and labour arrangements affecting Myanmar migrant workers abroad.", navPath: $navPath, showMenu: $showMenu)
                    )
                }
                .padding(.top, 60)
                
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
            
            
        } // end of VStack
    }
}

struct BoxColumn: View {
    let color: Color
    let header: String
    let description: String
    let dest: CIView
    
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
            NavigationLink(destination: dest) {
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
