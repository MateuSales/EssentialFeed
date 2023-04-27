//
// Copyright © Essential Developer. All rights reserved.
//

import XCTest
import EssentialFeed

final class ImageCommentsEndpointTests: XCTestCase {
	func test_imageComments_endpointURL() {
		let imageID = UUID(uuidString: "B908840A-DF09-11ED-B5EA-0242AC120002")!
		let baseURL = URL(string: "http://base-url.com")!

		let receivedURL = ImageCommentsEndpoint.get(imageID).url(baseURL: baseURL)
		let expectedURL = URL(string: "http://base-url.com/v1/image/B908840A-DF09-11ED-B5EA-0242AC120002/comments")!

		XCTAssertEqual(receivedURL, expectedURL)
	}
}
