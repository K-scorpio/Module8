//
//  Song.swift
//  Playlist
//
//  Created by Kevin Hartley on 5/11/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import Foundation


class Song: Equatable {
    
    let title: String
    let artist: String
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
    }
}

    func ==(lhs: Song, rhs: Song) -> Bool {
        return lhs.title == rhs.title && lhs.artist == lhs.artist
    }
