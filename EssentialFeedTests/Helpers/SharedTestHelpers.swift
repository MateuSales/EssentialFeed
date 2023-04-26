//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by user on 26/04/23.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
