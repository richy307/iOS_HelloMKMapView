//
//  ViewController.swift
//  iOS_HelloMKMapView
//
//  Created by 王麒翔 on 2023/7/20.
//

import UIKit
import MapKit // Apple Maps

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 經緯度
        let latitude:CLLocationDegrees = 48.858547
        let longitude:CLLocationDegrees = 2.294524
        // 座標
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        // 放大比例Scale
        let xScale:CLLocationDegrees = 0.01
        let yScale:CLLocationDegrees = 0.01
        // 整體放大比例
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: yScale, longitudeDelta: xScale)
        
        
        // 顯示區域
        let region:MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
    }


}

