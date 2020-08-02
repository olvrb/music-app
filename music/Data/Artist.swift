//
//  File.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import Foundation
import SwiftUI

let artists = [
    Artist(Name: "Gojira",
           Albums: [
               Album(Name: "The Art of Dying",
                     Tracks: [Track(Name: "Oroborus", Length: 322)],
                     photo: #imageLiteral(resourceName: "The Art of Dying")),
               Album(Name: "Terra Icognita",
                     Tracks: [Track(Name: "Clone", Length: 322)],
                     photo: #imageLiteral(resourceName: "Terra Icognita"))
           ],
           photo: #imageLiteral(resourceName: "Gojira")),
    Artist(Name: "The Main Squeeze",
           Albums: [
               Album(Name: "The Main Squeeze",
                     Tracks: [Track(Name: "Dr. Funk", Length: 322)],
                     photo: #imageLiteral(resourceName: "main aqueez"))
           ],
           photo: #imageLiteral(resourceName: "The Main Squeeze"))
]

class Artist: Identifiable {
    init(Name: String, Albums: [Album], photo: UIImage) {
        self.Name = Name
        self.Albums = Albums

        self.Photo = Image(uiImage: photo)
    }

    var Name: String = ""
    var Albums: [Album] = []

    var Photo: Image
}
