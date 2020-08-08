//
//  ViewController.swift
//  Random_Dog_API
//
//  Created by Richard Garrison on 8/8/20.
//  Copyright © 2020 Richard Garrison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    let randomImageEndpoint = DogAPI.Endpoint.randomImageFromAllDogsCollection.url
        // create data task to download image
        let task = URLSession.shared.dataTask(with: randomImageEndpoint) { (data, response, error) in
            // guard statement to check if data is nil
            guard let data = data else {
                return
            }
            print(data)
        }
        // tasks are created in a suspended state, resume is used to kick them off
        task.resume()
    }


}

