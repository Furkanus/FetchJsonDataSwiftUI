//
//  UserViewModel.swift
//  ApiCallSwiftUI
//
//  Created by Furkan Hanci on 2/27/21.
//

import Foundation

class apiCall {
    func getUsers(completion:@escaping ([User]) -> ()) {
        guard let url = URL(string: "https://api.mocki.io/v1/b043df5a") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try! JSONDecoder().decode([User].self, from: data!)
            print(users)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
}

