//
//  ViewController.swift
//  SocialMediaSharing
//
//  Created by Rania Arbash on 2021-03-15.
//

import UIKit
import FacebookShare
import FBSDKShareKit


class ViewController: UIViewController, SharingDelegate {
    func sharer(_ sharer: Sharing, didCompleteWithResults results: [String : Any]) {
        //
    }
    
    func sharer(_ sharer: Sharing, didFailWithError error: Error) {
        //
    }
    
    func sharerDidCancel(_ sharer: Sharing) {
        //
    }
    

    var a = Article(title: "Facebook sharing", content: "Thanks for sharing the post via facebook", source: "ywca", imageURL: "https://www.recipetineats.com/wp-content/uploads/2017/06/Pancakes-SQ.jpg" ,image: UIImage(named: "pic.jpg")!, link: "www.ywca.ca")
    var photo : SharePhoto!
    var content : SharePhotoContent!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // ApplicationDelegate.initializeSDK(nil)
        //Settings.isAutoLogAppEventsEnabled = true
        //Settings.isAdvertiserIDCollectionEnabled = true
         photo = SharePhoto(image: a.image!, userGenerated: true)
         content = SharePhotoContent()
        content!.photos = [photo]
        
       
        
        //let dialog = ShareDialog(fromViewController: self, content: content, delegate: self)

        // Recommended to validate before trying to display the dialog
      
    }
    
    
    @IBAction func facebookShare(_ sender: Any) {
        let dialog =  ShareDialog(fromViewController: self, content: content, delegate: self)
        do {
            try dialog.validate()
        } catch {
            print("the error here \(error)")
        }

        dialog.show()
    }
//

}

