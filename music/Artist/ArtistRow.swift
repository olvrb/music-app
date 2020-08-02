//
//  ArtistRow.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import SwiftUI

struct ArtistRow: View {
    var artist: Artist
    var body: some View {
        HStack {
            
            artist.Photo
                .resizable()
                .frame(width: 50)
                .aspectRatio(1, contentMode: .fit)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(artist.Name)
                    .font(.title)
            }
            Spacer()
        }.padding()
    }
}

struct ArtistRow_Previews: PreviewProvider {
    static var previews: some View {
        ArtistRow(artist: artists[0])
    }
}
