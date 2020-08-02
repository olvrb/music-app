//
//  TrackRow.swift
//  music
//
//  Created by Oliver Boudet on 2020-08-02.
//  Copyright © 2020 Oliver Boudet. All rights reserved.
//

import SwiftUI

struct TrackRow: View {
    let track: Track
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(track.Name)
            }

            Spacer()
            Text(String(track.getReadableLength()))
                .font(.footnote)

        }.padding()
    }
}

struct TrackRow_Previews: PreviewProvider {
    static var previews: some View {
        TrackRow(track: artists[0].Albums[0].Tracks[0])
    }
}
