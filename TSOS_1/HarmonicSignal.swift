import Foundation
import Charts
class HarmonicSignal {
    let N : Double = 1024
    func calculate(initdata : (a : Double, f: Double, u: Double)) -> LineChartData {
        let a = initdata.a
        let f = initdata.f
        let u = initdata.u
        var chartData : [ChartDataEntry] = []
        var y : Double
        var n : Double = 0
        while n < N {
            y = a * sin((2 * Double.pi * f *  n ) / N + (u * Double.pi / 180))
            chartData.append(ChartDataEntry(x: n, y: y))
            n = n + 1
        }
        let data = LineChartData()
        let ds1 = LineChartDataSet(entries: chartData)
        ds1.drawCirclesEnabled = false
        ds1.drawValuesEnabled = false
        ds1.colors = [NSUIColor.blue]
        data.addDataSet(ds1)
        return data
    }
}
