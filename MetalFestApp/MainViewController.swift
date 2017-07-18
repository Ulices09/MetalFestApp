//
//  ViewController.swift
//  MetalFestApp
//
//  Created by Ulices Meléndez on 17/07/17.
//  Copyright © 2017 Ulices Meléndez Acosta. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var metalVideos = [MetalVideo]()
    var service = MetalVideoService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        metalVideos = service.metalVideos
    }
    
    //Delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MetalCell", for: indexPath) as? MetalCell {
            let metalVideo = metalVideos[indexPath.row]
            cell.updateUI(metalVideo: metalVideo)
            return cell
        } else{
            return UITableViewCell()
        }
    }
    
    //DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return metalVideos.count
    }
    
    //Al presionar una fila del Table View
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let metalVideo = metalVideos[indexPath.row]
        //Moverse a otro View Controller
        performSegue(withIdentifier: "VideoViewController", sender: metalVideo);
    }
    
    //Pasar data al siguiente View Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoViewController{
            if let metalVideo = sender as? MetalVideo {
                destination.metalVideo = metalVideo
            }
        }
    }

}

