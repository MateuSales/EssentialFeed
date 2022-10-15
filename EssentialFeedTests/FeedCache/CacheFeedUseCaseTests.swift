//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by user on 15/10/22.
//

import XCTest

class FeedStore {
    var deleteCachedFeedCount = 0
}

class LocalFeedLoader {
    init(store: FeedStore) {

    }
}

final class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCount, 0)
    }

}
