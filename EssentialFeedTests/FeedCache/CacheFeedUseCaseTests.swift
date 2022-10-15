//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by user on 15/10/22.
//

import XCTest
import EssentialFeed

class FeedStore {
    var deleteCachedFeedCount = 0
    
    func deleteCachedFeed() {
        deleteCachedFeedCount += 1
    }
}

class LocalFeedLoader {
    private let store: FeedStore

    init(store: FeedStore) {
        self.store = store
    }
    
    func save(_ items: [FeedItem]) {
        store.deleteCachedFeed()
    }
}

final class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCount, 0)
    }

    func test_save_requestCacheDeletion() {
        let store = FeedStore()
        let sut = LocalFeedLoader(store: store)
        let items = [uniqueItem(), uniqueItem()]
        
        sut.save(items)
        
        XCTAssertEqual(store.deleteCachedFeedCount, 1)
    }
    
    // MARK: - Helpers
    
    private func uniqueItem() -> FeedItem {
        return FeedItem(
            id: UUID(),
            description: "any description",
            location: "any location",
            imageURL: anyURL())
    }
    
    private func anyURL() -> URL {
        return URL(string: "https://any-url.com")!
    }
}
