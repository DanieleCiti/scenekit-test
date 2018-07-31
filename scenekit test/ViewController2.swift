//
//  ViewController2.swift
//  scenekit test
//
//  Created by Daniele Citi on 21/06/18.
//  Copyright © 2018 Daniele Citi. All rights reserved.
//

import UIKit
import SceneKit

class ViewController2: UIViewController, SCNSceneRendererDelegate {
    
    @IBOutlet weak var scnView: SCNView!
    
    var tap:UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let scena2 = SCNScene(named: "scena2.scn")
        
        scnView.scene = scena2
        scnView.delegate = self
        
        tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        tap.numberOfTapsRequired = 1
        scnView.addGestureRecognizer(tap)
    }

    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        
      //  print("sono la scena2!")
    }
  
    @objc func handleTap(_: UITapGestureRecognizer)
    {
        dismiss(animated: true, completion: nil)
    }
    
    deinit {
        print("deinit called")
    }
   
}
