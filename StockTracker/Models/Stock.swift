import Foundation

struct Stock: Identifiable {
    let id = UUID()
    let ticker: String
    let price: Double
    let change: Double

    var changePercent: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.maximumFractionDigits = 2
        formatter.positivePrefix = "+"
        return formatter.string(from: NSNumber(value: change / (price - change))) ?? "0.00%"
    }
}
