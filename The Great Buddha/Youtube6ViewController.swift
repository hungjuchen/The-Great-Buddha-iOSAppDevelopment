//
//  Youtube6ViewController.swift
//  Frozen
//
//  Created by HUNG-JU CHEN on 2017/11/6.
//  Copyright © 2017 HUNG-JU CHEN. All rights reserved.
//  Movie Copyright © 甲上娛樂 Applause Entertainment Limited.

import UIKit

class Youtube6ViewController: UIViewController {
    //SOUNDTRACK
    @IBOutlet weak var yt6: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "vz20uZMzHMg")
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
        yt6.loadRequest( URLRequest(url: youtubeURL) )
    }
    

    

}
