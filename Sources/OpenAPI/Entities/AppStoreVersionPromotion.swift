// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppStoreVersionPromotion: Codable {
	public var type: `Type`
	public var id: String
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case appStoreVersionPromotions
	}

	public init(type: `Type`, id: String, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.links = links
	}
}
