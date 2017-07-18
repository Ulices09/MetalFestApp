//
//  MetalVideoService.swift
//  MetalFestApp
//
//  Created by Ulices Meléndez on 17/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import Foundation

class MetalVideoService {
    
    private var _metalVideos = [MetalVideo]()
    
    init() {
        _metalVideos.append(
            MetalVideo(
                imageURL: "https://i.axs.com/2015/05/78099831-image-optimized_555b835fc5151.jpg",
                videoURL: "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/HvOG5TFadTU?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>",
                videoTitle: "Avatar - Let It Burn")
        )
        
        _metalVideos.append(
            MetalVideo(
                imageURL: "https://i.ytimg.com/vi/4VXbAgI26yw/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLB3T8_Cw2WOCbc4ffLdOSAlCv9s0g",
                videoURL: "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/_DK_zWsUK04?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>",
                videoTitle: "Amon Amarth - Twilight of the Thunder God")
        )
        
        _metalVideos.append(
            MetalVideo(
                imageURL: "http://www.metaltraveller.com/images/blind_guardian/bards_song_marcus_siepen.JPG",
                videoURL: "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/eoYjtAX7w1M?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>",
                videoTitle: "Blind Guardian - The Bard Song")
        )
        
        _metalVideos.append(
            MetalVideo(
                imageURL: "https://i.ytimg.com/vi/i07i2CS8mzw/maxresdefault.jpg",
                videoURL: "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/i07i2CS8mzw?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>",
                videoTitle: "Avatar - Paint Me Red")
        )
        
        _metalVideos.append(
            MetalVideo(
                imageURL: "https://s-media-cache-ak0.pinimg.com/originals/07/c0/92/07c092095ade38b17374022eaf35223f.jpg",
                videoURL: "<div style=\"position:relative;height:0;padding-bottom:56.25%\"><iframe src=\"https://www.youtube.com/embed/9Re4Ix4Ahzk?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen></iframe></div>",
                videoTitle: "Children of Bodom - Are You Dead Yet")
        )
    }
    
    var metalVideos: [MetalVideo] {
        return _metalVideos
    }
}
