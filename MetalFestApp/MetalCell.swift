//
//  MetalCell.swift
//  MetalFestApp
//
//  Created by Ulices Meléndez on 17/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import UIKit

class MetalCell: UITableViewCell {
    
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTtile: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(metalVideo: MetalVideo) {
        videoTtile.text = metalVideo.videoTitle
        
        let url = URL(string: metalVideo.imageURL)!
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }                
            }catch {
                
            }
            
        }
    }

}
