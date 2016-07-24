//
//  ViewController.swift
//  SegmentFS
//
//  Created by David Wagner on 21/07/2016.
//  Copyright © 2016 Noise & Heat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var payloadObjC: UILabel!
    @IBOutlet weak var payloadSwift: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        payloadObjC.text = "length: \(MNMSegmentFS.data().count) bytes"
        payloadSwift.text = ""//String(data:SwiftSegmentFS.data(), encoding:String.Encoding.utf8)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

