import Cocoa
import JavaScriptCore

// swiftlint:disable all

let formatter = DateFormatter()
formatter.locale = Locale(identifier: "en_US_POSIX")
formatter.dateFormat = "dd MMM y HH:mm:ss zzz"

let date = formatter.date(from: "29 Jun 2018 00:00:00 GMT")
let date2 = formatter.date(from: "29 Jun 2018 00:00:00 PST")
