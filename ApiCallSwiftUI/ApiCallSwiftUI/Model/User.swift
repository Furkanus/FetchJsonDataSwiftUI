//
//  User.swift
//  ApiCallSwiftUI
//
//  Created by Furkan Hanci on 2/27/21.
//

import SwiftUI

struct User : Codable, Identifiable {
    let id = UUID()
    let city : String
    let name : String
}
