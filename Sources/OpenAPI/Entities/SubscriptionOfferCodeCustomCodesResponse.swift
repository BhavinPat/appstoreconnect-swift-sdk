// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionOfferCodeCustomCodesResponse: Codable {
	public var data: [SubscriptionOfferCodeCustomCode]
	public var included: [SubscriptionOfferCode]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [SubscriptionOfferCodeCustomCode], included: [SubscriptionOfferCode]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}
