//
//  YouTubeViewController.swift
//  The Great Buddha
//
//  Created by HUNG-JU CHEN on 2017/11/6.
//  Copyright © 2017 HUNG-JU CHEN. All rights reserved.

import UIKit

class YouTubeViewController: UIViewController {

    //https://stackoverflow.com/questions/33179698/how-to-embed-a-youtube-video-into-my-app
    //INTERNATIONAL TRAILER
    
    @IBOutlet weak var wv: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "ttodl0-_xG0")
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
        
        wv.loadRequest( URLRequest(url: youtubeURL) )
    }
}
