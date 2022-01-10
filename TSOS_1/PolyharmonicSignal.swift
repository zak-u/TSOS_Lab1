import Foundation
import Charts
class PolyharmonicSignal {
    let N : Double = 1024
    func calculate(initdata : (a: [Double], f: [Double], u: [Double])) -> LineChartData {
        var chartData : [ChartDataEntry] = []
        let a = initdata.a
        let f = initdata.f
        let u = initdata.u
        let changeU = [2,3,4,5,6]
    
        
        var y : Double
        var n : Double = 0
        var j = 0
        let jMax = a.count
        while n < N {
            j = 0
            y = 0
            while j <  jMax {
                y = y + (a[j] * sin((2 * Double.pi * f[j] *  n ) / N + (u[j] * Double.pi / 180)))
                j = j + 1
            }
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
    
//    func calculateWithLow(initdata : (a: Double, f: Double, u: Double), low: Double) -> LineChartData {
//        var chartData : [ChartDataEntry] = []
//        let a : [Double]
//        let f : [Double]
//        let u : [Double]
//       
//        var y : Double
//        var n : Double = 0
//        var j = 0
//        let jMax = 5
//        
//        while j <  jMax {
//            var new = initdata.a *  1.2
//            a.append(initdata.a *  1.2)
//        }
//    
//        while n < N {
//            j = 0
//            y = 0
//            while j <  jMax {
//                y = y + (a[j] * sin((2 * Double.pi * f[j] *  n ) / N + (u[j] * Double.pi / 180)))
//                j = j + 1
//            }
//            chartData.append(ChartDataEntry(x: n, y: y))
//            n = n + 1
//        }
//        let data = LineChartData()
//        let ds1 = LineChartDataSet(entries: chartData)
//        ds1.drawCirclesEnabled = false
//        ds1.drawValuesEnabled = false
//        ds1.colors = [NSUIColor.blue]
//        data.addDataSet(ds1)
//        return data
//    
//    }
}
