//
//  AlbumRow.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import SwiftUI

struct AlbumRow: View {
    var album: Album
    var body: some View {
        HStack {
            album.Photo
                .resizable()
                .frame(width: 50)
                .aspectRatio(1, contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 30))
            VStack(alignment: .leading) {
                Text(album.Name)
                    .font(.title)
            }
            Spacer()
        }.padding()
    }
}

struct AlbumRow_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRow(album: artists[0].Albums[0])
    }
}
