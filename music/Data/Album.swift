//
//  Album.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import Foundation
import SwiftUI


class Album : Identifiable {
    internal init(Name: String, Tracks: [Track], photo: UIImage) {
        self.Name = Name
        self.Tracks = Tracks
        
        self.Photo = Image(uiImage: photo)
    }
    
    
    var Name: String = ""
    
    var Tracks: [Track]
    
    var Photo: Image
}
