//
//  Musicians.swift
//  WorldMusic
//
//  Created by Артём Сальников on 04.09.2024.
//

import Foundation
import SwiftyJSON

struct Musicians {
    var name = ""
    var music = ""
    var song = ""
    var picture = ""
    
    init(json: JSON) {
        if let item = json["name"].string {
            name = item
        }
        if let item = json["music"].string {
            music = item
        }
        if let item = json["song"].string {
            song = item
        }
        if let item = json["picture"].string {
            picture = item
        }
    }
}
