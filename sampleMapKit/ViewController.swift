//
//  ViewController.swift
//  sampleMapKit
//
//  Created by Tatsuki Nakatsuka on 2017/11/08.
//  Copyright © 2017年 Tatsuki Nakatsuka. All rights reserved.
//

import UIKit
import MapKit //地図用のフレームワーク読み込み
class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
       //アヤラを中心とした地図
        //1.中心となる場所の座標オブジェクトを作る（場所の緯度経度が必要）
        let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
  
        
        //２.縮尺を設置 (縮尺率)
        let span = MKCoordinateSpanMake(0.1, 0.1)
        
        
        //3.範囲オブジェクトをるくる(1.2を代入)
        let region = MKCoordinateRegionMake(coodinate, span)
  
        //4.MspViewに範囲オブジェクトを設定
        mapView.setRegion(region, animated: true)
        
        //アヤラ（中心）にピンを立てる
        
        
        //1.pinオブジェクトを生成
        let centerPin = MKPointAnnotation()
        
        //2.pinの座標を設定
        //これでもいける
        //centerPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        centerPin.coordinate = coodinate
 
        //3.タイトル、サブタイトルを設定（タップしたときに吹き出し情報）
        centerPin.title = "アヤラショッピングモール"
        centerPin.subtitle = "セブのセレブのための場所"

        //4.mapViewにpinを追加
        mapView.addAnnotation(centerPin)
     
        
        
        //オクタゴン　中心となる場所の座標オブジェクトを作る（場所の緯度経度が必要）
        let oqtagon = CLLocationCoordinate2DMake(10.314659, 123.926337)
        
        //1.pinオブジェクトを生成 (ピンを設定)
        let oqutapin = MKPointAnnotation()
        
        
        //2.pinの座標を設定
        oqutapin.coordinate = oqtagon
        //3.タイトル、サブタイトルを設定（タップしたときに吹き出し情報）
        oqutapin.title = "oqutagon"
        oqutapin.subtitle = "私たちの「TGIF」"

          //4.mapViewにpinを追加
        mapView.addAnnotation(oqutapin)
        
        //　LIVの場所　中心となる場所の座標オブジェクトを作る（場所の緯度経度が必要）
        let liv = CLLocationCoordinate2DMake(10.326697, 123.932321)
        
        //1.pinオブジェクトを生成 (ピンを設定)
        let livpin = MKPointAnnotation()
        
        
        //2.pinの座標を設定
        livpin.coordinate = liv
        //3.タイトル、サブタイトルを設定（タップしたときに吹き出し情報）
        livpin.title = "LIV Super Club"
        livpin.subtitle = "あの日検索したLIVの楽しさを僕たちはまだ知らない。"
        
        //4.mapViewにpinを追加
        mapView.addAnnotation(livpin)
        
        //宿の場所　中心となる場所の座標オブジェクトを作る（場所の緯度経度が必要）
        let laGuardia = CLLocationCoordinate2DMake(10.329447, 123.904022)
        
        //1.pinオブジェクトを生成 (ピンを設定)
        let laGuardiapin = MKPointAnnotation()
        
        
        //2.pinの座標を設定
        laGuardiapin.coordinate = laGuardia
        //3.タイトル、サブタイトルを設定（タップしたときに吹き出し情報）
        laGuardiapin.title = "La Guardia Flats II"
        laGuardiapin.subtitle = "Clab からだとタクシーで１００ペソ前後"
        
        //4.mapViewにpinを追加
        mapView.addAnnotation(laGuardiapin)
        
        
        
        //ホテルの場所　中心となる場所の座標オブジェクトを作る（場所の緯度経度が必要）
        let hotel = CLLocationCoordinate2DMake(10.335306, 123.934170)
        
        //1.pinオブジェクトを生成 (ピンを設定)
        let hotelpin = MKPointAnnotation()
        
        //2.pinの座標を設定
        hotelpin.coordinate = hotel
        //3.タイトル、サブタイトルを設定（タップしたときに吹き出し情報）
        hotelpin.title = "東横In Cebu"
        hotelpin.subtitle = "①泊１５００ペソくらい！毎週土曜は６階でプールパーリー！！"
        
        //4.mapViewにpinを追加
        mapView.addAnnotation(hotelpin)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

