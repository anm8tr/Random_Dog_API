//
//  DogAPI.swift
//  Random_Dog_API
//
//  Created by Richard Garrison on 8/8/20.
//  Copyright © 2020 Richard Garrison. All rights reserved.
//

import UIKit


class DogAPI {
    // enum to hold endpoints
    enum Endpoint: String {
        case randomImageFromAllDogsCollection =
        "https://dog.ceo/api/breeds/image/random"
        
        // Make computed property to access URL, unwrapped
        var url: URL {
            return URL(string: self.rawValue)!
        }
    }
}
