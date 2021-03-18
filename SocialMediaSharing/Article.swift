//
//  Article.swift
//  SocialMediaSharing
//
//  Created by Rania Arbash on 2021-03-15.
//
import UIKit
import Foundation

class Article{
    var title: String
    var source: String
    var content: String
    var imageUrl1: String
    var image: UIImage?
    var link: String?
    //var type: Int
    //var dop: Timestamp
   // var documentID: String?

    init(title: String, content: String, source: String, imageURL: String, image: UIImage, link : String){
        self.title = title
        self.source = source
        self.content = content
        self.imageUrl1 = imageURL
        self.link = link
        self.image = image
    }
    
   
}
