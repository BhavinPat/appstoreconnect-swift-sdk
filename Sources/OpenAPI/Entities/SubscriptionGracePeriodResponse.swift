// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionGracePeriodResponse: Codable {
	/// SubscriptionGracePeriod
	public var data: SubscriptionGracePeriod
	public var links: DocumentLinks

	public init(data: SubscriptionGracePeriod, links: DocumentLinks) {
		self.data = data
		self.links = links
	}
}
