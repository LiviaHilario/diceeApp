//
//  ViewController.swift
//  Dicee
//
//  Created by Treinamento on 15/08/19.
//  Copyright © 2019 LiviaHilario. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceeArray =  ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var randomDiceeIndex1 : Int = 0
    var randomDiceeIndex2 : Int = 0
    
    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
        
    }
    func updateDiceImages () {
        randomDiceeIndex1 = Int.random(in: 0 ... 5)
        randomDiceeIndex2 = Int.random(in: 0 ... 5)
        
        diceeImageView1.image = UIImage(named: diceeArray[randomDiceeIndex1])
        diceeImageView2.image = UIImage(named: diceeArray[randomDiceeIndex2])
        }
}

