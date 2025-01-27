// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct CiScheduledStartCondition: Codable {
	public var source: CiBranchPatterns?
	public var schedule: Schedule?

	public struct Schedule: Codable {
		public var frequency: Frequency?
		public var days: [Day]?
		public var hour: Int?
		public var minute: Int?
		public var timezone: String?

		public enum Frequency: String, Codable, CaseIterable {
			case weekly = "WEEKLY"
			case daily = "DAILY"
			case hourly = "HOURLY"
		}

		public enum Day: String, Codable, CaseIterable {
			case sunday = "SUNDAY"
			case monday = "MONDAY"
			case tuesday = "TUESDAY"
			case wednesday = "WEDNESDAY"
			case thursday = "THURSDAY"
			case friday = "FRIDAY"
			case saturday = "SATURDAY"
		}

		public init(frequency: Frequency? = nil, days: [Day]? = nil, hour: Int? = nil, minute: Int? = nil, timezone: String? = nil) {
			self.frequency = frequency
			self.days = days
			self.hour = hour
			self.minute = minute
			self.timezone = timezone
		}
	}

	public init(source: CiBranchPatterns? = nil, schedule: Schedule? = nil) {
		self.source = source
		self.schedule = schedule
	}
}
