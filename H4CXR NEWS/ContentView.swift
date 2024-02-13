//
//  ContentView.swift
//  H4CXR NEWS
//
//  Created by Tejash Singh on 06/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager=NetworkManager()
    
    var body: some View {
        NavigationStack{
                List(networkManager.posts) { Post in
                    NavigationLink(destination: webUrlView(url: Post.url ?? "https://www.google.com")) {
                        HStack{
                            Text(String(Post.points))
                            Text(Post.title)
                        }
                    }
                }
            .navigationTitle("H4CXR")
            
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}




#Preview {
    ContentView()
}


//struct Post:Identifiable{
//    
//    var id: String
//    let title:String
//    
//}

//let posts=[
//    Post(id:"1",title:"1st title"),
//    Post(id:"2",title:"2st title"),
//    Post(id:"3",title:"3st title")
//    ]
