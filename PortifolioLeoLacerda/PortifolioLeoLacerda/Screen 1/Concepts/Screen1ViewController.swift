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
    
    func openPDF(pdf: String){
        let vc: ConceptPageViewController? = UIStoryboard(name: "ConceptPageViewController", bundle: nil).instantiateViewController(withIdentifier: "ConceptPageViewController") as? ConceptPageViewController
        vc?.setupPage(pdf: pdf)
        present(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func pressedVarLetButton(_ sender: UIButton) {
        openPDF(pdf: "Variaveis Constantes")
    }
    
    @IBAction func pressedFunctionsButton(_ sender: UIButton) {
        openPDF(pdf: "Funções")
    }
    
    @IBAction func pressedCollectionButton(_ sender: UIButton) {
        openPDF(pdf: "Coleções")
    }
    
    @IBAction func pressedWhileForRepeatButton(_ sender: UIButton) {
        openPDF(pdf: "Estrutura de Repetição")
    }
    
    @IBAction func pressedIfElseButton(_ sender: UIButton) {
        openPDF(pdf: "Estrutura Condicional")
    }
    
    @IBAction func pressedClassButton(_ sender: UIButton) {
        openPDF(pdf: "Classe")
    }
    
    @IBAction func pressedInheritanceButton(_ sender: UIButton) {
        openPDF(pdf: "Herança")
    }
    @IBAction func pressedEncapsulationButton(_ sender: UIButton) {
        openPDF(pdf: "Encapsulamento")
    }
    
    @IBAction func pressedPolymorphismButton(_ sender: UIButton) {
        openPDF(pdf: "Polimorfismo")
    }
    
    @IBAction func pressedStructButton(_ sender: UIButton) {
        openPDF(pdf: "Struct")
    }
 
}
