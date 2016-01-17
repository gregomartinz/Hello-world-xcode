//
//  ViewController.swift
//  Hola mundo
//
//  Created by g304 DIT UPM on 10/9/15.
//  Copyright (c) 2015 g304 DIT UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    

    @IBOutlet weak var msg: UILabel!

    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func holaPressed(sender: UIButton) {
        msg.text = "Hola"
        map.mapType = MKMapType.Hybrid
        
        slider.setValue(0.5, animated: true)
    }


    @IBAction func mundoPressed(sender: UIButton) {
        self.msg.text = "Mundo"
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let center = CLLocationCoordinate2DMake(40.452842, -3.726173)
        let reg = MKCoordinateRegionMake(center, span)
        
        map.setRegion(reg, animated: true)
        map.mapType = MKMapType.Satellite
    }
    
    @IBAction func sliderMoved(sender: UISlider) {
        msg.alpha = CGFloat(sender.value)
    }
    
    
    @IBAction func piramides(sender: AnyObject) {
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let center = CLLocationCoordinate2DMake(29.97729620916011, 31.132495500000005)
        let reg = MKCoordinateRegionMake(center, span)
        
        map.setRegion(reg, animated: true)
    }
 
    
}

