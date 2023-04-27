//
// Copyright © Essential Developer. All rights reserved.
//

import Foundation

public final class ImageCommentsPresenter {
	public static var title: String {
		NSLocalizedString(
			"IMAGE_COMMENTS_VIEW_TITLE",
			tableName: "ImageComments",
			bundle: Bundle(for: ImageCommentsPresenter.self),
			comment: "Title for the image comments view")
	}

	public static func map(
		_ comments: [ImageComments],
		currentDate: Date = Date(),
		calendar: Calendar = .current,
		locale: Locale = .current
	) -> ImageCommentsViewModel {
		let formatter = RelativeDateTimeFormatter()
		formatter.calendar = calendar
		formatter.locale = locale

		let commentsViewModel = comments.map {
			ImageCommentViewModel(
				message: $0.message,
				date: formatter.localizedString(for: $0.createdAt, relativeTo: currentDate),
				username: $0.username
			)
		}

		return ImageCommentsViewModel(comments: commentsViewModel)
	}
}
