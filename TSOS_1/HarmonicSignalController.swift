//
//  HarmonicSignalController.swift
//  TSOS_1
//
//  Created by Zakhary on 9/21/21.
//

import Cocoa
import Charts

class HarmonicSignalController: NSViewController {

    @IBOutlet weak var chart1: LineChartView!
    @IBOutlet weak var chart2: LineChartView!
    @IBOutlet weak var chart3: LineChartView!
    @IBOutlet weak var chart4: LineChartView!
    @IBOutlet weak var chart5: LineChartView!
    
    @IBOutlet weak var labelForChart1: NSTextField!
    @IBOutlet weak var labelForChart2: NSTextField!
    @IBOutlet weak var labelForChart3: NSTextField!
    @IBOutlet weak var labelForChart4: NSTextField!
    @IBOutlet weak var labelForChart5: NSTextField!
    
    @IBOutlet weak var comboBox: NSComboBox!
    
    @IBOutlet weak var segment: NSSegmentedControl!
    @IBAction func segmentAction(_ sender: Any) {
        var initdata : [(a : Double, f: Double, u: Double)]
        switch segment.selectedSegment {
        case 0 : initdata =  [(9,4,60 ),
                              (9,4,135 ),
                              (9,4,360),
                              (9,4,180 ),
                              (0,4,30 )]
        case 1 : initdata =  [(7,4,30 ),
                              (7,8,30 ),
                              (7,2,30),
                              (7,1,30 ),
                              (7,9,30 )]
        case 2 : initdata =  [(4,7,30 ),
                              (5,7,30 ),
                              (3,7,30),
                              (1,7,30 ),
                              (7,7,30 )]
        default: initdata =  [(7,1,180 ),
                                  (7,2,45 ),
                                  (7,3,0),
                                  (7,4,135 ),
                              (7,5,90 )]}
        self.labelForChart1.stringValue = LineChartPreparation().makeString(parametrs: initdata[0])
        self.labelForChart2.stringValue = LineChartPreparation().makeString(parametrs: initdata[1])
        self.labelForChart3.stringValue = LineChartPreparation().makeString(parametrs: initdata[2])
        self.labelForChart4.stringValue = LineChartPreparation().makeString(parametrs: initdata[3])
        self.labelForChart5.stringValue = LineChartPreparation().makeString(parametrs: initdata[4])
        
        let data1 = HarmonicSignal().calculate(initdata:initdata[0])
        let data2 = HarmonicSignal().calculate(initdata:initdata[1])
        let data3 = HarmonicSignal().calculate(initdata:initdata[2])
        let data4 = HarmonicSignal().calculate(initdata:initdata[3])
        let data5 = HarmonicSignal().calculate(initdata:initdata[4])
  
//        let defaultchart :LineChartView! = LineChartView()
//        defaultchart.data = data1
//        defaultchart.gridBackgroundColor = NSUIColor.white
//        defaultchart.xAxis.labelPosition = .bottom
//        self.chart1.set = defaultchart
        self.chart1.data = data1
        
       
        
    
        self.chart2.data = data2
       
        
        
        self.chart3.data = data3
     
        
        
        self.chart4.data = data4
    
        
        
        self.chart5.data = data5
   
//        if segment.selectedSegment == 1
//        { self.chart1.data = LineChartData()}
//        else if segment.selectedSegment == 2
//        { self.chart4.data = LineChartData()}
//        else if segment.selectedSegment == 3
//        { self.chart5.data = LineChartData()}
        
    }
//    @IBAction func actionCombo(_ sender: Any) {
//        self.chart1.data = LineChartData()
//        comboBox.selectedTag()
//        switch comboBox.indexOfSelectedItem {
//        case 0:
//            self.chart1.data = LineChartData()
//        case 1:
//            self.chart1.data?.clearValues()
//        case 2:
//            self.chart2.data = LineChartData()
//        default:
//            self.chart3.data = LineChartData()
//        }
//
//    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
       
        let initdata : [(a : Double, f: Double, u: Double)] =
//        switch self.comboBox.indexOfSelectedItem {
//        case 0 : initdata =
            [(8,4,30 ),
                              (8,4,60 ),
                              (8,4,120),
                              (8,4,45 ),
                              (8,4,0 )]
//        case 1 : initdata =  [(4,7,30 ),
//                              (4,66,60 ),
//                              (4,4,120),
//                              (4,4,45 ),
//                              (4,7,0 )]
//        case 2 : initdata =  [(8,4,30 ),
//                              (8,4,60 ),
//                              (8,4,120),
//                              (8,4,45 ),
//                              (8,4,0 )]
//
//        default:
//            initdata =  [(8,4,30 ),
//                                  (8,4,60 ),
//                                  (8,4,120),
//                                  (8,4,45 ),
//                                  (8,4,0 )]
//        }
       
        
        self.labelForChart1.stringValue = LineChartPreparation().makeString(parametrs: initdata[0])
        self.labelForChart2.stringValue = LineChartPreparation().makeString(parametrs: initdata[1])
        self.labelForChart3.stringValue = LineChartPreparation().makeString(parametrs: initdata[2])
        self.labelForChart4.stringValue = LineChartPreparation().makeString(parametrs: initdata[3])
        self.labelForChart5.stringValue = LineChartPreparation().makeString(parametrs: initdata[4])
        
        let data1 = HarmonicSignal().calculate(initdata:initdata[0])
        let data2 = HarmonicSignal().calculate(initdata:initdata[1])
        let data3 = HarmonicSignal().calculate(initdata:initdata[2])
        let data4 = HarmonicSignal().calculate(initdata:initdata[3])
        let data5 = HarmonicSignal().calculate(initdata:initdata[4])
  
//        let defaultchart :LineChartView! = LineChartView()
//        defaultchart.data = data1
//        defaultchart.gridBackgroundColor = NSUIColor.white
//        defaultchart.xAxis.labelPosition = .bottom
//        self.chart1.set = defaultchart
        self.chart1.data = data1
        self.chart1.gridBackgroundColor = NSUIColor.white
        self.chart1.xAxis.labelPosition = .bottom
       
        
    
        self.chart2.data = data2
        self.chart2.gridBackgroundColor = NSUIColor.white
        self.chart2.xAxis.labelPosition = .bottom
        
        
        self.chart3.data = data3
        self.chart3.gridBackgroundColor = NSUIColor.white
        self.chart3.xAxis.labelPosition = .bottom
        
        
        self.chart4.data = data4
        self.chart4.gridBackgroundColor = NSUIColor.white
        self.chart4.xAxis.labelPosition = .bottom
        
        
        self.chart5.data = data5
        self.chart5.gridBackgroundColor = NSUIColor.white
        self.chart5.xAxis.labelPosition = .bottom
        // Do view setup here.
    }
    
    override func viewWillAppear() {
            super.viewWillAppear()
            preferredContentSize = NSSize(width: 1080, height: 720)
    }
    
    @IBAction func tap(_ sender: Any) {
        
    }
}
