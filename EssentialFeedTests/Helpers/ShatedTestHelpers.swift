//
//  ShatedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by user on 16/10/22.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 1)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
