//
//  ViewController.swift
//  scenekit test
//
//  Created by Daniele Citi on 21/06/18.
//  Copyright © 2018 Daniele Citi. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController, SCNSceneRendererDelegate {

    @IBOutlet weak var scnView: SCNView!
    
    weak var camera: SCNNode!
    
    var tap:UITapGestureRecognizer!
    
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
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
       
        scnView.removeGestureRecognizer(tap)
        camera = nil
        scnView.scene = nil
        scnView.delegate = nil
        scnView = nil
        for sbw in self.view.subviews
        {
            sbw.removeFromSuperview()
        }
    }
    
    deinit {
        print("ok")
    }
}

