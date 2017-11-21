//
//  Youtube5ViewController.swift
//  The Great Buddha
//
//  Created by HUNG-JU CHEN on 2017/11/6.
//  Copyright © 2017 HUNG-JU CHEN. All rights reserved.
//

import UIKit

class Youtube5ViewController: UIViewController {
    //TEASER TRAILER_3
    @IBOutlet weak var yt5: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "3Yu37_vjFu4")
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
        yt5.loadRequest( URLRequest(url: youtubeURL) )
    }
    

    

}
