//
//  RecibirViewController.swift
//  EnviarRecibirParametrosEntreVistas
//
//  Created by marco rodriguez on 16/03/21.
//

import UIKit

class RecibirViewController: UIViewController {
    
    var recibirTexto: String?

    @IBOutlet weak var textoTextField: UITextField!
    @IBOutlet weak var textoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textoLabel.text = recibirTexto!
        
    }
    
   
    
    
}
