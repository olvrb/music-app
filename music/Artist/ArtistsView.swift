//
//  Artists.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import SwiftUI

struct ArtistsView: View {
    var body: some View {
        NavigationView {
            List(artists) { artist in
                NavigationLink(destination: ArtistDetail(artist: artist)) {
                    ArtistRow(artist: artist)
                }
            }.navigationBarTitle("Artists")
        }
    }
}

struct ArtistsView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistsView()
    }
}
