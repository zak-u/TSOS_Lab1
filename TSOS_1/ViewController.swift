//
//  ViewController.swift
//  TSOS_1
//
//  Created by Zakhary on 9/20/21.
//

import Cocoa
import Charts

class ViewController: NSViewController {


    

    @IBOutlet weak var chart: LineChartView!
    @IBOutlet weak var aParam: NSTextField!
    @IBOutlet weak var fParam: NSTextField!
    @IBOutlet weak var uParam: NSTextField!
    
    @IBAction func calculateChart(_ sender: Any) {
//        let a = aParam.doubleValue
//        let f = fParam.doubleValue
//        let u = uParam.doubleValue
//        let data = LineChartData()
////        let char1 = HarmonicSignal().calculate(a: a, f: f, u: u)
//        let ds1 = LineChartDataSet(entries: char1)
////        ds1.colors = [NSUIColor.red]
//        ds1.drawCirclesEnabled = false
//        ds1.drawValuesEnabled = false
//        data.addDataSet(ds1)
//        
//        self.chart.data = data
//
//        self.chart.gridBackgroundColor = NSUIColor.white
//
////        self.chart.chartDescription?.text = "Linechart Demo"
//        self.chart.xAxis.labelPosition = .bottom
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

