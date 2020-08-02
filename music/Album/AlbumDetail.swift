//
//  AlbumDetail.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import SwiftUI

struct AlbumDetail: View {
    let album: Album
    var body: some View {
        List(album.Tracks) { track in
            NavigationLink(destination: Text("polace")) {
                TrackRow(track: track)
            }
        }.navigationBarTitle(album.Name)
        
    }
}

struct AlbumDetail_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetail(album: artists[0].Albums[0])
    }
}
