//
//  ViewController.swift
//  video player
//
//  Created by Belal medhat on 6/29/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    var video = AVPlayer()
    let videoPlayerInView = AVPlayerViewController()
    let videoPlayerInTotalView = AVPlayerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        VideoView.layer.cornerRadius = 10
        VideoView.clipsToBounds = true
        VideoView.addSubview(videoPlayerInView.view)
        videoPlayerInView.view.translatesAutoresizingMaskIntoConstraints = false
        videoPlayerInView.view.center = VideoView.center
        videoPlayerInView.view.widthAnchor.constraint(equalTo: VideoView.widthAnchor).isActive = true
        videoPlayerInView.view.heightAnchor.constraint(equalTo: VideoView.heightAnchor).isActive = true
    AddVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var VideoView: UIView!
    @IBAction func buttonAction(_ sender: Any)
      {
        if let Url = URL(string: "http://techslides.com/demos/sample-videos/small.mp4")
                     {
                         video = AVPlayer(url:(Url))
                         videoPlayerInTotalView.player = video
                         

                     }
                
        present(videoPlayerInTotalView, animated: true, completion:
        {
          self.video.play()
        })
         
      }
    
    func AddVideo(){
        if let Url = URL(string: "http://techslides.com/demos/sample-videos/small.mp4")
                 {
                     video = AVPlayer(url:(Url))
                     videoPlayerInView.player = video
                     

                 }
               
    }
      

}

