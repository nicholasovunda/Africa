//
//  VideoModel.swift
//  Africa
//
//  Created by Nicholas on 15/06/2022.
//

import Foundation

struct Video: Codable, Identifiable { 
    let id: String
    let name: String
    let headline: String
    
    
    //Computed Property
    var thumbnail: String{
        "video-\(id)"
    }
}
