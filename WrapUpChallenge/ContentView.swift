//
//  ContentView.swift
//  WrapUpChallenge
//
//  Created by Lukas Herman on 05.04.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model:ContentModel
    var body: some View {
        NavigationView{
            
                List(model.pages){ page in
                    NavigationLink(destination: DetailView(page: page), label: {Text(page.title)})
                    
                    
                }.navigationBarTitle("All Videos")
                    
               
        }
        }
    }


//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
