// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct FileLocation: Codable {
	public var path: String?
	public var lineNumber: Int?

	public init(path: String? = nil, lineNumber: Int? = nil) {
		self.path = path
		self.lineNumber = lineNumber
	}
}
