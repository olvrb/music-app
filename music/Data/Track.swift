//
//  Track.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import Foundation


class Track : Identifiable {
    init(Name: String, Length: Int) {
        self.Name = Name
        self.Length = Length
    }
    
    var Name: String
    var Length: Int
    
    func getReadableLength() -> String {
        

        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .positional

        let formattedString = formatter.string(from: TimeInterval(self.Length))!
        return formattedString
    }
}
