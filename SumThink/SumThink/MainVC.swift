//
//  ViewController.swift
//  SumThink
//
//  Created by Burak Altunoluk on 27/07/2022.
//

import UIKit

class MainVC: UIViewController {
    
    private var transferNumber = 0
    private var targetNumber = 14
    @IBOutlet private var cellButton1: UIButton!
    @IBOutlet private var cellButton2: UIButton!
    @IBOutlet private var cellButton3: UIButton!
    @IBOutlet private var cellButton4: UIButton!
    @IBOutlet private var cellButton5: UIButton!
    @IBOutlet private var cellButton6: UIButton!
    @IBOutlet private var cellButton7: UIButton!
    @IBOutlet private var cellButton8: UIButton!
    @IBOutlet private var cellButton9: UIButton!
    
  
    @IBOutlet var number1ButtonOutlet: UIButton!
    @IBOutlet var number2ButtonOutlet: UIButton!
    @IBOutlet var number3ButtonOutlet: UIButton!
    
    @IBAction private func cellNumberPressed(_ sender: UIButton) {
        
        if transferNumber != 0 {
            switch sender.restorationIdentifier! {
            case "1" : cellButton1.setTitle(String(transferNumber), for: UIControl.State.normal)
            case "2" : cellButton2.setTitle(String(transferNumber), for: UIControl.State.normal)
            case "3" : cellButton3.setTitle(String(transferNumber), for: UIControl.State.normal)
            case "4" : cellButton4.setTitle(String(transferNumber), for: UIControl.State.normal)
            case "5" : cellButton5.setTitle(String(transferNumber), for: UIControl.State.normal)
            case "6" : cellButton6.setTitle(String(transferNumber), for: UIControl.State.normal)
            case "7" : cellButton7.setTitle(String(transferNumber), for: UIControl.State.normal)
            case "8" : cellButton8.setTitle(String(transferNumber), for: UIControl.State.normal)
            case "9" : cellButton9.setTitle(String(transferNumber), for: UIControl.State.normal)
            default:break
            
            }
            transferNumber = 0
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.controlResult()
        }
    }
    }
    
    @IBAction private func numberButtonPressed(_ sender: UIButton) {
        switch sender.restorationIdentifier! {
        case "two" : transferNumber = 4
        case "tree" : transferNumber = 5
        case "four" : transferNumber = 6
        default: break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       // print(number3ButtonOutlet.titleLabel!.text!)
        
    }
    
    func controlResult() {
        var total = 0
        let row1 = [cellButton1,cellButton2,cellButton3]
        let row2 = [cellButton1,cellButton4,cellButton7]
        let row3 = [cellButton1,cellButton5,cellButton9]
        let row4 = [cellButton2,cellButton5,cellButton8]
        let row5 = [cellButton3,cellButton5,cellButton7]
        let row6 = [cellButton4,cellButton5,cellButton6]
        let row7 = [cellButton7,cellButton8,cellButton9]
        let row8 = [cellButton3,cellButton6,cellButton9]
        let rows = [row1,row2,row3,row4,row5,row6,row7,row8]
        

        for inn in 0...7 {
            for i in rows[inn] {
                total += Int((i?.titleLabel?.text)!)!
            print(total)
               
        }
            if total == targetNumber {
                print("You won")
                switch inn {
                case 0 : for i in row1 { i?.backgroundColor = .yellow
                    i?.isEnabled = false } ; print("den")
                case 1 : for i in row2 { i?.backgroundColor = .yellow
                    i?.isEnabled = false } ; print("den")
                case 2 : for i in row3 { i?.backgroundColor = .yellow
                    i?.isEnabled = false } ; print("den")
                case 3 : for i in row4 { i?.backgroundColor = .yellow
                    i?.isEnabled = false }
                case 4 : for i in row5 { i?.backgroundColor = .yellow
                    i?.isEnabled = false
                }
                case 5 : for i in row6 { i?.backgroundColor = .yellow
                    i?.isEnabled = false
                }
                case 6 : for i in row7 { i?.backgroundColor = .yellow
                    i?.isEnabled = false
                }
                case 7 : for i in row8 { i?.backgroundColor = .yellow
                    i?.isEnabled = false
                }
                default:
                    break
                }
                
                total = 0

            } else {
                total = 0
            }
            
        }
    
}

}
