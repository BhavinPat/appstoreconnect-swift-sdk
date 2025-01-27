// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct InAppPurchaseV2CreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case inAppPurchases
		}

		public struct Attributes: Codable {
			public var name: String
			public var productID: String
			public var inAppPurchaseType: InAppPurchaseType
			public var reviewNote: String?
			public var isFamilySharable: Bool?
			public var isAvailableInAllTerritories: Bool?

			public init(name: String, productID: String, inAppPurchaseType: InAppPurchaseType, reviewNote: String? = nil, isFamilySharable: Bool? = nil, isAvailableInAllTerritories: Bool? = nil) {
				self.name = name
				self.productID = productID
				self.inAppPurchaseType = inAppPurchaseType
				self.reviewNote = reviewNote
				self.isFamilySharable = isFamilySharable
				self.isAvailableInAllTerritories = isAvailableInAllTerritories
			}

			private enum CodingKeys: String, CodingKey {
				case name
				case productID = "productId"
				case inAppPurchaseType
				case reviewNote
				case isFamilySharable = "familySharable"
				case isAvailableInAllTerritories = "availableInAllTerritories"
			}
		}

		public struct Relationships: Codable {
			public var app: App

			public struct App: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case apps
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data) {
					self.data = data
				}
			}

			public init(app: App) {
				self.app = app
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
