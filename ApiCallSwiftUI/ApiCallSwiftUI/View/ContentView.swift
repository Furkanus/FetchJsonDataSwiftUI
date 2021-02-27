//
//  ContentView.swift
//  ApiCallSwiftUI
//
//  Created by Furkan Hanci on 2/27/21.
//

import SwiftUI
struct ContentView: View {
    
    @State var users: [User] = []

    var body: some View {
        List(users) { user in
          
            Text(user.city)
                    .font(.headline)
            Text(user.name)
                    .font(.subheadline)
        }
            .onAppear {
                apiCall().getUsers { (users) in
                    self.users = users
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
