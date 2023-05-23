//
//  VarLetViewController.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 03/05/23.
//

import UIKit
import WebKit

class ConceptPageViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var pdf: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let resourceUrl = self.resourceUrl(forFileName: pdf) {
            webView.loadFileURL(resourceUrl,
                                allowingReadAccessTo: resourceUrl)
        }
        
    }
    
    func setupPage(pdf: String){
        self.pdf = pdf
    }
    
    private func resourceUrl(forFileName fileName: String) -> URL? {
        if let resourceUrl = Bundle.main.url(forResource: fileName,
                                             withExtension: "pdf") {
            return resourceUrl
        }
        return nil
    }
}
