//
//  CapturarViewController.swift
//  2DA_EVA_EXA_PLAT1_PRAC2
//
//  Created by  on 05/04/17.
//
//

import UIKit

class CapturarViewController: UIViewController{
    
    var imagenCap = "ico-tasa"
    var Name = ""
    var Des = ""
    var Dirt = ""
    var img = ""
    
    @IBOutlet weak var showImg: UIButton!
    @IBOutlet weak var outletBtn: UIButton!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfDesc: UITextField!
    @IBOutlet weak var tfDirTel: UITextField!
    
    
    @IBAction func btnEnviar(sender: UIButton) {
        Name = tfNombre.text!
        Des = tfDesc.text!
        Dirt = tfDirTel.text!
        img = imagenCap
        performSegueWithIdentifier("captura", sender: self)
    }
    
    @IBAction func env(sender: UIButton) {
        self.performSegueWithIdentifier("mostrarImg", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showImg.setImage(UIImage(named: imagenCap), forState: .Normal)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func unNuevoSegue(unwindSegue: UIStoryboardSegue) {
        let miView = unwindSegue.sourceViewController as! VistaImagenViewController
        print(miView.sNomImg)
        imagenCap = miView.sNomImg
        showImg.setImage(UIImage(named: imagenCap), forState: .Normal)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
