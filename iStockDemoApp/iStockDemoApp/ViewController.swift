//
//  ViewController.swift
//  iStockDemoApp
//
//  Created by Equipo #3 on 11/17/17.
//  Copyright © 2017 Equipo3. All rights reserved.
//

// Librería que maneja toda la intefaz gráfica.
import UIKit

// Esta clase maneja toda la vista.
class ViewController: UIViewController {
    
    //: Enlazando la vista al código para poder manipular sus valores.
    @IBOutlet weak var StockMazda: UILabel!
    @IBOutlet weak var StockBugatti: UILabel!
    @IBOutlet weak var StockAudi: UILabel!
    @IBOutlet weak var StockMercedez: UILabel!
    @IBOutlet weak var StockLambo: UILabel!
    
    @IBOutlet weak var StockCoches: UISegmentedControl!
    
    @IBOutlet weak var ClienteNumeroVegetables: UITextField!
    @IBOutlet weak var AlertStockOFF: UILabel!
    
    @IBOutlet weak var ElClienteTiene: UILabel!
    
    @IBOutlet weak var TotalStockDelCliente: UILabel!
    
    @IBOutlet weak var TotalCoches: UILabel!
    
    @IBOutlet weak var CarImageView: UIImageView!
    @IBOutlet weak var CarTwoImageView: UIImageView!
    @IBOutlet weak var CarThreeImageView: UIImageView!
    @IBOutlet weak var CarFourImageView: UIImageView!
    @IBOutlet weak var CarFiveImageView: UIImageView!
    
    @IBOutlet weak var NextUserLabel: UILabel!
    
    @IBOutlet weak var ThanksLabel: UILabel!
    //: Enlazando la vista al código para poder manipular sus valores.
    
    //: Declarando nuestras variables.
    var Stock = 100
    var CantidadMazda = 100
    var CantidadBugatti = 100
    var CantidadAudi = 100
    var CantidadMercedez = 100
    var CantidadLambo = 100
    var StockTotal = 500
    //: Declarando nuestras variables.
    
    //: Función que se ejecuta cada que inicia nuestra aplicación.
    override func viewDidLoad() {
        super.viewDidLoad()
        NextUserLabel.isHidden = true
        ThanksLabel.isHidden = true
    }
    
    
    
    
    //: Función que se activará cada que el botón "Elegir" sea pulsado.
    @IBAction func PressedButton(_ sender: UIButton) {
        
        let segmentIndex = StockCoches.selectedSegmentIndex
        //: Comprobando que el usuario introduzca un valor númerico positivo. Una vez hecho eso, comprobamos que solo haya puesto un número.
        if let textFieldStringValue = ClienteNumeroVegetables.text, let textFieldValue = Int(textFieldStringValue), textFieldValue > 0 {
            
            //: Comprobando en cuál elemento de selección se encuentra nuestro usuario.
            if segmentIndex == 0  {
                AlertStockOFF.text = ""
                TotalStockDelCliente.text = ""
                
                
                if textFieldValue <= CantidadMazda {
                    CantidadMazda = CantidadMazda - textFieldValue
                    ElClienteTiene.text = "El cliente tiene \(textFieldValue) Mazda."
                    StockMazda.text = "\(CantidadMazda)"
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadMazda) Mazda."
                }
                    
                else if textFieldValue > CantidadMazda {
                    //                    ElClienteTiene.text = "El cliente tiene \(CantidadMazda) Mazda."
                    //                    CantidadMazda = CantidadMazda - textFieldValue
                    //                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadMazda) Mazda."
                    ElClienteTiene.text = "No hay suficientes"
                }
                
                if CantidadMazda <= 0 {
                    CantidadMazda = 0
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadMazda) Mazda."
                    AlertStockOFF.text = "Ya no hay Mazdaz."
                    CarImageView.isHidden = true
                    StockMazda.isHidden = true
                }
            }
            
            if segmentIndex == 1  {
                AlertStockOFF.text = ""
                TotalStockDelCliente.text = ""
                
                if textFieldValue <= CantidadBugatti {
                    CantidadBugatti = CantidadBugatti - textFieldValue
                    ElClienteTiene.text = "El cliente tiene \(textFieldValue) Bugatti."
                    StockBugatti.text = "\(CantidadBugatti)"
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadBugatti) Bugatti."
                }
                else if textFieldValue > CantidadBugatti {
                    //                    ElClienteTiene.text = "El cliente tiene \(CantidadBugatti) Bugatti."
                    //                    CantidadBugatti = CantidadBugatti - textFieldValue
                    //                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadBugatti) Bugatti."
                    ElClienteTiene.text = "No hay suficientes"
                }
                
                if CantidadBugatti <= 0 {
                    CantidadBugatti = 0
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadBugatti) Bugatti."
                    AlertStockOFF.text = "Ya no hay Bugatti."
                    CarTwoImageView.isHidden = true
                    StockBugatti.isHidden = true
                }
            }
            
            if segmentIndex == 2  {
                AlertStockOFF.text = ""
                TotalStockDelCliente.text = ""
                
                if textFieldValue <= CantidadAudi{
                    CantidadAudi = CantidadAudi - textFieldValue
                    ElClienteTiene.text = "El cliente tiene \(textFieldValue) Audi."
                    StockAudi.text = "\(CantidadAudi)"
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadAudi) Audi."
                }
                else if textFieldValue > CantidadAudi {
                    //                    ElClienteTiene.text = "El cliente tiene \(CantidadAudi) Audi."
                    //                    CantidadAudi = CantidadAudi - textFieldValue
                    //                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadAudi) Audi."
                    ElClienteTiene.text = "No hay suficientes"
                }
                
                if CantidadAudi <= 0 {
                    CantidadAudi = 0
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadAudi) Audi."
                    AlertStockOFF.text = "Ya no hay Audi."
                    CarThreeImageView.isHidden = true
                    StockAudi.isHidden = true
                }
            }
            
            if segmentIndex == 3 {
                AlertStockOFF.text = ""
                TotalStockDelCliente.text = ""
                
                if textFieldValue <= CantidadMercedez {
                    CantidadMercedez = CantidadMercedez - textFieldValue
                    ElClienteTiene.text = "El cliente tiene \(textFieldValue) Mercedez."
                    StockMercedez.text = "\(CantidadMercedez)"
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadMercedez) Mercedez."
                }
                else if textFieldValue > CantidadMercedez {
                    //                    ElClienteTiene.text = "El cliente tiene \(CantidadMercedez) Mercedez."
                    //                    CantidadMercedez = CantidadMercedez - textFieldValue
                    //                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadMercedez) Mercedez."
                    ElClienteTiene.text = "No hay suficientes"
                }
                
                if CantidadMercedez <= 0 {
                    CantidadMercedez = 0
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadMercedez) Mercedez."
                    AlertStockOFF.text = "Ya no hay Mercedez."
                    CarFourImageView.isHidden = true
                    StockMercedez.isHidden = true
                }
            }
            
            if segmentIndex == 4 {
                AlertStockOFF.text = ""
                TotalStockDelCliente.text = ""
                
                if textFieldValue <= CantidadLambo {
                    CantidadLambo = CantidadLambo - textFieldValue
                    ElClienteTiene.text = "El cliente tiene \(textFieldValue) Lambo."
                    StockLambo.text = "\(CantidadLambo)"
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadLambo) Lambo."
                    
                }
                else if textFieldValue > CantidadLambo {
                    //                    ElClienteTiene.text = "El cliente tiene \(CantidadLambo) Lambo."
                    //                    CantidadLambo = CantidadLambo - textFieldValue
                    //                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadLambo) Lambo."
                    ElClienteTiene.text = "No hay suficientes"
                }
                
                if CantidadLambo <= 0 {
                    CantidadLambo = 0
                    TotalStockDelCliente.text = "El cliente tiene \(Stock - CantidadLambo) Lambo."
                    AlertStockOFF.text = "Ya no hay Lambo."
                    CarFiveImageView.isHidden = true
                    StockLambo.isHidden = true
                }
            }
            //: Comprobando en cuál elemento de selección se encuentra nuestro usuario.
        }
            //: Si el usuario no ha escrito nada o lo que ha puesto no es un número, le indicamos que coloque números.
        else {
            TotalStockDelCliente.text = "Escribe un número por favor."
        }
        
        //: Mostramos la cantidad de coches en total que ha adquirido el cliente.
        TotalCoches.text = "La cantidad Total de autos \(StockTotal - (CantidadMazda + CantidadBugatti + CantidadAudi + CantidadMercedez + CantidadLambo))."
        
        //: Si la cantidad de cada uno de los coches llega a cero, es decir, ya no hay, entonces mostramos un mensaje que diga "Gracias por tu compra". Borrando todas las labels excepto la del total de coches.
        if CantidadMazda == 0  && CantidadBugatti  == 0 && CantidadMercedez  == 0 && CantidadAudi  == 0 && CantidadLambo  == 0  {
            ThanksLabel.isHidden = false
            AlertStockOFF.text = ""
            TotalStockDelCliente.text = ""
            ElClienteTiene.text = ""
        }
        
        //: Turno cliente dos. Se activa cuando damos clic en next.
        if  NextUserLabel.isHidden == false {
            NextUserLabel.isHidden = false
        }
        
    }
    
    @IBAction func NextUserButton(_ sender: UIButton) {
        NextUserLabel.isHidden = false
        
    }
}




