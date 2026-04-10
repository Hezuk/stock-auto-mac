import Foundation

class StockViewModel: ObservableObject {
    @Published var stocks: [Stock] = []

    init() {
        // Mock data
        stocks = [
            Stock(ticker: "AAPL", price: 175.43, change: 1.25),
            Stock(ticker: "GOOGL", price: 142.30, change: -0.45),
            Stock(ticker: "MSFT", price: 402.12, change: 3.10),
            Stock(ticker: "TSLA", price: 180.50, change: -2.15)
        ]
    }

    func addTicker(_ ticker: String) {
        let tickerUpper = ticker.uppercased()
        guard !tickerUpper.isEmpty else { return }

        // In a real app, this would call an API.
        // For now, we add a mock entry.
        let randomPrice = Double.random(in: 10...1000)
        let randomChange = Double.random(in: -10...10)
        let newStock = Stock(ticker: tickerUpper, price: randomPrice, change: randomChange)

        stocks.append(newStock)
    }
}
