//
//  InfoPopupViewController.swift
//  Assignment01
//
//  Created by Yin Thu Aye on 13/10/22.
//

import UIKit

class InfoPopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func closeInfoPopupButton(_ sender: UIButton) {
        
        //self.view.removeFromSuperview();
        // save the presenting ViewController
        let presentingViewController: UIViewController! = self.presentingViewController

        self.dismiss(animated: false) {
              // go back to MainMenuView as the eyes of the user
            presentingViewController.dismiss(animated: false, completion: nil)
        }
    }
    
}
