
import Foundation
import Charts

enum signalType {
case Harmonic
case Polyharmonic
}
class ChartDataInf {
    var description : String = ""
    var data : LineChartData!
}

class LineChartPreparation{
    func makeData ( parametrs : (a : Double, f: Double, u: Double), signal : signalType) -> ChartDataInf {
        let inf = ChartDataInf()
        inf.description = "A = \(parametrs.a); f = \(parametrs.f); u = \(parametrs.u)"
        
        return inf
    }
    
    func makeString ( parametrs : (a : Double, f: Double, u: Double)) -> String {
        return "A = \(parametrs.a); f = \(parametrs.f); u = \(parametrs.u )"
    }
}
