//
//  ViewController.swift
//  Bradford Factor
//
//  Created by Muhamed Alkhatib on 21/08/2020.
//

import UIKit

class ViewController: UIViewController {
    var sDays = 0
    var tDays = 0
    var brafordFactor = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sSteppeChanged(_ sender: UIStepper) {
        sDaysLabel.text = String(Int(sender.value))
        sDays = Int(sender.value)
    }
    @IBAction func TStepperChange(_ sender: UIStepper) {
        tDaysLabel.text = String(Int(sender.value))
        tDays = Int(sender.value)
    }
    @IBAction func calBradfordPreseed(_ sender: UIButton) {
         brafordFactor = sDays * sDays * sDays
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }

    @IBOutlet weak var sDaysLabel: UILabel!
    @IBOutlet weak var tDaysLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController2
        resultVC.BFResult = self.brafordFactor
        
        
    }
}
