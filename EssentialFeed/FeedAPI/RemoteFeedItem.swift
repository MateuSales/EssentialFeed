//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by user on 15/10/22.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
