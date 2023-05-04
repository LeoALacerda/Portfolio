//
//  Screen1ViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 27/04/23.
//

import UIKit

class Screen1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func pressedVarLetButton(_ sender: UIButton) {
        let vc: VarLetViewController? = UIStoryboard(name: "VarLetViewController", bundle: nil).instantiateViewController(withIdentifier: "VarLetViewController") as? VarLetViewController
        present(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func pressedFunctionsButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedCollectionButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedWhileForRepeatButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedIfElseButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedClassButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedInheritanceButton(_ sender: UIButton) {
        
    }
    @IBAction func pressedEncapsulationButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedStructButton(_ sender: UIButton) {
        
    }
    
    @IBAction func pressedPolymorphismButton(_ sender: UIButton) {
        
    }
}
