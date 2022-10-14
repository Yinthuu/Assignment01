//
//  ViewController.swift
//  Assignment01
//
//  Created by Yin Thu Aye on 11/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNumTextfield: UITextField!
    
    @IBOutlet weak var aSlider: UISlider!
    
    @IBOutlet weak var totalScoreTextfield: UITextField!
    
    var randomNum = 0
    var totalScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tryButton(_ sender: UIButton) {
        randomNum = Int.random(in: 1..<100);
        randomNumTextfield.text = String(randomNum);
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        let sliderRndValue = Int(aSlider.value)
        if(randomNum == sliderRndValue){
            totalScore += 3;
            totalScoreTextfield.text = String(totalScore)
        }else if(sliderRndValue > (randomNum-3) && sliderRndValue < (randomNum+1)){
            totalScore += 3;
            totalScoreTextfield.text = String(totalScore)
        }else{
            totalScoreTextfield.text = String(totalScore)
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        totalScoreTextfield.text = ""
        randomNumTextfield.text = ""
        randomNum = 0
        totalScore = 0
    }

    @IBAction func infoButton(_ sender: UIButton) {
        
    }
}

