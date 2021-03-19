//
//  ViewController.swift
//  EnviarRecibirParametrosEntreVistas
//
//  Created by marco rodriguez on 16/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var recibirTextoRegresa: String?
    
    @IBOutlet weak var textoLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func enviarButton(_ sender: UIButton) {
        //
        performSegue(withIdentifier: "envia", sender: self)
    }
    
    @IBAction func mandarButton(_ sender: UIButton) {
        performSegue(withIdentifier: "envia", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "envia" {
            let objVC = segue.destination as! RecibirViewController
            objVC.recibirTexto = textField.text
        }
    }
 
    @IBAction func regresaParametro(segue: UIStoryboardSegue) {
        if let objRecibirVC = segue.source as? RecibirViewController {
            textoLabel.text = objRecibirVC.textoTextField.text
        }
    }
    
//    @IBAction func regresarButton(segue: UIStoryboardSegue) {
//        if let regresar = segue.source as? RecibirViewController {
//            textoLabel.text = regresar.textoTextField.text
//        }
//    }
    
}

