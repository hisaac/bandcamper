// Created by Isaac Halvorson on 8/15/18

import Foundation

extension DateFormatter {

	static let bandcampDateFormatter: DateFormatter = {
		let formatter = DateFormatter()
		formatter.locale = Locale(identifier: "en_US_POSIX")
		formatter.dateFormat = "dd MMM y HH:mm:ss zzz"
		return formatter
	}()

}
