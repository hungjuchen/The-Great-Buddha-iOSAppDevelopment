//
//  Youtube4ViewController.swift
//  Frozen
//
//  Created by HUNG-JU CHEN on 2017/11/6.
//  Copyright © 2017 HUNG-JU CHEN. All rights reserved.
//

import UIKit

class Youtube4ViewController: UIViewController {
    //TEASER TRAILER_2
    @IBOutlet weak var yt4: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "y8xzPfRQYZk")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadYoutube(videoID:String) {
        guard
            let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
            else { return }
        yt4.loadRequest( URLRequest(url: youtubeURL) )
    }
    

  

}
