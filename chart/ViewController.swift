//
//  ViewController.swift
//  chart
//
//  Created by Haruto Hamano on 2023/05/26.
//

import UIKit
import Charts
import TinyConstraints

class ViewController: UIViewController {
    lazy var lineChartView: LineChartView = {
            let charView = LineChartView()
            charView.backgroundColor = .systemBlue
            return charView
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(lineChartView)
                        lineChartView.centerInSuperview()
                lineChartView.width(to: view)
                lineChartView.heightToWidth(of: view)
                        setData()
    }
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
            print(entry)
        }
        func setData() {
            let set1 = LineChartDataSet(entries: yValues, label: "Subscribers")
            let data = LineChartData(dataSet: set1)
            lineChartView.data = data
        }
        let yValues: [ChartDataEntry] = [
            ChartDataEntry(x: 0.0, y: 10.0),
            ChartDataEntry(x: 1.0, y: 12.0),
            ChartDataEntry(x: 2.0, y: 14.0),
            ChartDataEntry(x: 3.0, y:  9.0),
            ChartDataEntry(x: 4.0, y:  8.0),
            ChartDataEntry(x: 5.0, y:  7.0),
            ChartDataEntry(x: 6.0, y: 20.0),
            ChartDataEntry(x: 7.0, y: 22.0),
            ChartDataEntry(x: 8.0, y: 17.0),
            ChartDataEntry(x: 9.0, y: 16.0),
            ChartDataEntry(x:10.0, y: 15.0)
        ]
    


}

