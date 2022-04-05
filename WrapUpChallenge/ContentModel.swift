//
//  ContentModel.swift
//  WrapUpChallenge
//
//  Created by Lukas Herman on 05.04.2022.
//

import Foundation
class ContentModel:ObservableObject {
    @Published var pages = [Page]()
    
    init(){
        getRemoteData()
    }
    
    func getRemoteData() {
        //String path
        let urlString = "https://codewithchris.github.io/Module5Challenge/Data.json"
        
        //Create url object
        let url = URL(string: urlString)
        guard url != nil else {
           return print("mas tam nil")
        }
        
        //Create url request object
        let request = URLRequest(url: url!)
        
        //get the session and kick off the task
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error )in
            guard error == nil else {
                return print("Chybka")
            }
            do {
                let decoder = JSONDecoder()
                let pages = try decoder.decode([Page].self, from: data!)
                DispatchQueue.main.async {
                    self.pages += pages
                }
            }
            catch {
                print("zase chybka")
            }
        }
        dataTask.resume()
    }
    
}
