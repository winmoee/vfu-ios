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
        HomeView()
        CView()
        AboutView()
        
        CIView(courseTitle: "Citizenship and Statelessness  ", instructor: "Natalie Brinham, Institute of Statelessness and Inclusion", numberModules: "Numbers of modules - 6", languages: "Languages - English, Burmese, Kachin, Arakan, Karenni", abstract: "This course will provide an overview of citizenship and statelessness in international contexts. Learning materials will be developed by the Institute on Statelessness and Inclusion. It is an entry level course that will provide an introduction to the issues. For those looking to extend their learning on these topics, we will provide links for materials that explore the issues in greater depth. We will utilise existing resources but will target lessons specifically to a multi-ethnic Myanmar audience and invite reflection on the relevance of the issues to the Myanmar context. The lessons will encourage critical thinking and reflection. They will cover an introduction to statelessness; citizenship and discrimination; childhood statelessness; citizenship stripping; statelessness and forced migration; and access to citizenship in Myanmar. Most learning materials will be in English. Where possible we will provide written and listening materials in Burmese. Following the release of each lesson and a self-study period, we will also be available for discussion sessions with the students. We also encourage peer-to-peer discussion of the lessons.")
    

    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
