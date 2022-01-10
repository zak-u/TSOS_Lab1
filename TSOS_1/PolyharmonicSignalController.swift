//
//  PolyharmonicSignalController.swift
//  TSOS_1
//
//  Created by Zakhary on 9/21/21.
//

import Cocoa
import Charts

class PolyharmonicSignalController: NSViewController {

    @IBOutlet weak var chart1: LineChartView!
    @IBOutlet weak var labelForChart1: NSTextField!
    
    @IBOutlet weak var chart2: LineChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let initdata : (a: [Double], f: [Double], u: [Double]) =

        ([7,7,7,7,7],[1,2,3,4,5],[180,45,0,135,90])
        
        let data1 = PolyharmonicSignal().calculate(initdata:initdata)
        
        
        self.chart1.data = data1
        self.chart1.gridBackgroundColor = NSUIColor.white
        self.chart1.xAxis.labelPosition = .bottom
        
        let initdata2 : (a: [Double], f: [Double], u: [Double]) =
        ([3,3.6,4.32,5.184,6.2208],[4,4.8,5.76,6.912,8,2944],[45,54,64.8,77.76,93.312])
        
        let data2 = PolyharmonicSignal().calculate(initdata:initdata2)
        
        
        self.chart2.data = data2
        self.chart2.gridBackgroundColor = NSUIColor.white
        self.chart2.xAxis.labelPosition = .bottom
        // Do view setup here.
    }
    override func viewWillAppear() {
            super.viewWillAppear()
            preferredContentSize = NSSize(width: 1080, height: 720)
    }
}
