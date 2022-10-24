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
    
    @IBOutlet weak var viewUnderScrollview: UIView!
    var randomNum = 0
    var totalScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewUnderScrollview.backgroundColor = UIColor.lightGray
    }

    //Click Try button to generate random number
    @IBAction func tryButton(_ sender: UIButton) {
        randomNum = Int.random(in: 1..<100);
        randomNumTextfield.text = String(randomNum);
    }
    
    @IBOutlet weak var checkButton: UIButton!
    
    //Click Check button to check number from slide against random number
    
    @IBOutlet weak var congratImage: UIImageView!
    @IBAction func checkButton(_ sender: Any) {
        checkButton.isEnabled = false;
        
        let sliderRndValue = Int(aSlider.value)
        print(sliderRndValue)
        
        if(randomNum == sliderRndValue){
            totalScore += 3;
            totalScoreTextfield.text = String(totalScore)
            
            viewUnderScrollview.backgroundColor = UIColor.green
            congratImage.isHidden = false;
            
        }else{
            totalScoreTextfield.text = String(totalScore)
        }
    }
    
    //Click rest button to rest all values and background color
    @IBAction func resetButton(_ sender: UIButton) {
        totalScoreTextfield.text = ""
        randomNumTextfield.text = ""
        randomNum = 0
        totalScore = 0
        checkButton.isEnabled = true
        viewUnderScrollview.backgroundColor = UIColor.lightGray
        congratImage.isHidden = true
    }

    @IBAction func rndSlider(_ sender: Any) {
        checkButton.isEnabled = true
        viewUnderScrollview.backgroundColor = UIColor.lightGray
        congratImage.isHidden = true
    }

}

