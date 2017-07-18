//
//  VideoViewController.swift
//  MetalFestApp
//
//  Created by Ulices Meléndez on 17/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!
    
    private var _metalVideo: MetalVideo!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = metalVideo.videoTitle
        webView.loadHTMLString(metalVideo.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var metalVideo: MetalVideo {
        get {
            return _metalVideo
        }
        set{
            _metalVideo = newValue
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
