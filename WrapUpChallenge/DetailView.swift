//
//  DetailView.swift
//  WrapUpChallenge
//
//  Created by Lukas Herman on 05.04.2022.
//

import SwiftUI
import AVKit
struct DetailView: View {
    @EnvironmentObject var model:ContentModel
    var page:Page
    let videoRatio:CGFloat = 1080/1920
    var body: some View {
        let url = URL(string: page.url)
        GeometryReader{ geo in
            VStack{
                Text(page.title)
                    .bold()
                    .font(.title)
                if url != nil {
                   VideoPlayer(player: AVPlayer(url: url!))
                        .frame(height: geo.size.width * videoRatio)
                       
                }
                    
                

            }
        }
        
        
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
