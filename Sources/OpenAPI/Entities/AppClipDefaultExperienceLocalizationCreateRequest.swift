// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppClipDefaultExperienceLocalizationCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appClipDefaultExperienceLocalizations
		}

		public struct Attributes: Codable {
			public var locale: String
			public var subtitle: String?

			public init(locale: String, subtitle: String? = nil) {
				self.locale = locale
				self.subtitle = subtitle
			}
		}

		public struct Relationships: Codable {
			public var appClipDefaultExperience: AppClipDefaultExperience

			public struct AppClipDefaultExperience: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case appClipDefaultExperiences
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

			public init(appClipDefaultExperience: AppClipDefaultExperience) {
				self.appClipDefaultExperience = appClipDefaultExperience
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
