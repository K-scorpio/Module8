//
//  Artist.swift
//  Playlist
//
//  Created by Kevin Hartley on 5/11/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import Foundation


class Playlist: Equatable {
    
    let name: String
    var songs: [Song]
    
    init(name: String, songs: [Song] = [] ) {
        self.name = name
        self.songs = songs
    }
}

func ==(lhs: Playlist, rhs: Playlist) -> Bool {
    return lhs.name == rhs.name && lhs.songs == rhs.songs
}