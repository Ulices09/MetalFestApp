//
//  MetalVideo.swift
//  MetalFestApp
//
//  Created by Ulices Meléndez on 17/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import Foundation

class MetalVideo {
    
    private var _imageURL: String
    private var _videoURL: String
    private var _videoTitle: String
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
}
