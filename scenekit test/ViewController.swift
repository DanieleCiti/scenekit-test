//
//  ViewController.swift
//  scenekit test
//
//  Created by Daniele Citi on 21/06/18.
//  Copyright © 2018 Daniele Citi. All rights reserved.
// // 

import UIKit
import SceneKit

class ViewController: UIViewController, SCNSceneRendererDelegate {

    @IBOutlet weak var scnView: SCNView!
    
    weak var camera: SCNNode!
    
    var tap:UITapGestureRecognizer!
    var vc2 = ViewController2()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let scena1 = SCNScene(named: "scena1.scn")
        
        scnView.scene = scena1
        scnView.delegate = self
        
        camera = scena1?.rootNode.childNode(withName: "camera", recursively: true)!
        
        tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
       tap.numberOfTapsRequired = 1
        scnView.addGestureRecognizer(tap)
    }
    
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        
    ///    print("Ciao sono la scena1!")
    }
  
    @objc func handleTap(_: UITapGestureRecognizer)
    {
        performSegue(withIdentifier: "segue1", sender: self)
       
    }
    
    deinit {
        print("ok")
    }
}

