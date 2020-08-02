//
//  ArtistDetail.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import SwiftUI

struct ArtistDetail: View {
    let artist: Artist
    var body: some View {
        VStack {
            List(artist.Albums) { album in
                NavigationLink(destination: AlbumDetail(album: album)) {
                    AlbumRow(album: album)
                }
            }
        }
        
        .navigationBarTitle(artist.Name)
    }
}

struct ArtistDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArtistDetail(artist: artists[0])
    }
}
