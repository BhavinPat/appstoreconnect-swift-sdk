// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var promotedPurchases: PromotedPurchases {
		PromotedPurchases(path: path + "/promotedPurchases")
	}

	public struct PromotedPurchases {
		/// Path: `/v1/promotedPurchases`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.PromotedPurchaseCreateRequest) -> Request<AppStoreConnect_Swift_SDK.PromotedPurchaseResponse> {
			.post(path, body: body)
		}
	}
}