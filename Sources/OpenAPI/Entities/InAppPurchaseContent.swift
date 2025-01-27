// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct InAppPurchaseContent: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case inAppPurchaseContents
	}

	public struct Attributes: Codable {
		public var fileName: String?
		public var fileSize: Int?
		public var url: URL?
		public var lastModifiedDate: Date?

		public init(fileName: String? = nil, fileSize: Int? = nil, url: URL? = nil, lastModifiedDate: Date? = nil) {
			self.fileName = fileName
			self.fileSize = fileSize
			self.url = url
			self.lastModifiedDate = lastModifiedDate
		}
	}

	public struct Relationships: Codable {
		public var inAppPurchaseV2: InAppPurchaseV2?

		public struct InAppPurchaseV2: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				private enum CodingKeys: String, CodingKey {
					case this = "self"
					case related
				}
			}

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case inAppPurchases
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}
			}

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}
		}

		public init(inAppPurchaseV2: InAppPurchaseV2? = nil) {
			self.inAppPurchaseV2 = inAppPurchaseV2
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}
}
