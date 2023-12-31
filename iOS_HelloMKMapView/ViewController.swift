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
    
    // 1. new UILongPressGestureRecognizer 元件
    // 2. connect UILongPressGestureRecognizer Action
    // 3. sender.location(in: map) 取得點擊位置
    
    @IBAction func addMeAnnotation(_ sender: UILongPressGestureRecognizer) {
        let touchPoint = sender.location(in: map)
        let touchCoordinate:CLLocationCoordinate2D = map.convert(touchPoint, toCoordinateFrom: map) // 轉換座標
        
        let annotation = MKPointAnnotation() // 大頭針
        annotation.coordinate = touchCoordinate
        annotation.title = "New Place"
        annotation.subtitle = "One day I wanna be here"
        
        map.addAnnotation(annotation)
    }
    
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
        
        // 地圖顯示模式 // 衛星模式
        // map.mapType = .satellite
        
        // 大頭針marker
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = location // 座標
//        annotation.title = "Eiffel Tower" // 標題
//        annotation.subtitle = "I was here once" // 副標題
//        map.addAnnotation(annotation)
        
    }


}

