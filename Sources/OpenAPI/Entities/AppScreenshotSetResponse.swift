// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppScreenshotSetResponse: Codable {
	/// AppScreenshotSet
	public var data: AppScreenshotSet
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable {
		case appStoreVersionLocalization(AppStoreVersionLocalization)
		case appCustomProductPageLocalization(AppCustomProductPageLocalization)
		case appStoreVersionExperimentTreatmentLocalization(AppStoreVersionExperimentTreatmentLocalization)
		case appScreenshot(AppScreenshot)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(AppStoreVersionLocalization.self) {
				self = .appStoreVersionLocalization(value)
			} else if let value = try? container.decode(AppCustomProductPageLocalization.self) {
				self = .appCustomProductPageLocalization(value)
			} else if let value = try? container.decode(AppStoreVersionExperimentTreatmentLocalization.self) {
				self = .appStoreVersionExperimentTreatmentLocalization(value)
			} else if let value = try? container.decode(AppScreenshot.self) {
				self = .appScreenshot(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .appStoreVersionLocalization(let value): try container.encode(value)
			case .appCustomProductPageLocalization(let value): try container.encode(value)
			case .appStoreVersionExperimentTreatmentLocalization(let value): try container.encode(value)
			case .appScreenshot(let value): try container.encode(value)
			}
		}
	}

	public init(data: AppScreenshotSet, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
