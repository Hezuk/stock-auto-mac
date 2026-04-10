import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = StockViewModel()
    @State private var newTicker: String = ""

    var body: some View {
        VStack {
            HStack {
                TextField("티커 입력 (예: AAPL)", text: $newTicker)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onSubmit {
                        addStock()
                    }

                Button(action: addStock) {
                    Text("추가")
                }
            }
            .padding()

            List(viewModel.stocks) { stock in
                HStack {
                    VStack(alignment: .leading) {
                        Text(stock.ticker)
                            .font(.headline)
                        Text("$\(String(format: "%.2f", stock.price))")
                            .font(.subheadline)
                    }

                    Spacer()

                    Text(stock.changePercent)
                        .foregroundColor(stock.change >= 0 ? .green : .red)
                }
                .padding(.vertical, 4)
            }
        }
        .frame(minWidth: 400, minHeight: 300)
    }

    private func addStock() {
        guard !newTicker.isEmpty else { return }
        viewModel.addTicker(newTicker)
        newTicker = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
