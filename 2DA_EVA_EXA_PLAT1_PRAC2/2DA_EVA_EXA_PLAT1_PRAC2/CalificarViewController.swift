//
//  CalificarViewController.swift
//  2DA_EVA_EXA_PLAT1_PRAC2
//
//  Created by  on 05/04/17.
//
//

import UIKit

class CalificarViewController: UIViewController {

    @IBOutlet weak var imgViewCal: UIImageView!
    @IBOutlet weak var lblNomRtr: UILabel!
    @IBOutlet weak var lblDescRtr: UILabel!
    @IBOutlet weak var lblDirTelRtr: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    let imgSelect = "star-b"
    let imgDese = "star-a"
    var calificacion = ""
    
    var nombreRtr = ""
    var descRtr = ""
    var direcTel = ""
    var imagenRtr = ""
    
    var rowe:Int = 0
    
    @IBAction func actBtn1(sender: UIButton) {
        btn1.setImage(UIImage(named: imgSelect), forState: .Normal)
        btn2.setImage(UIImage(named: imgDese), forState: .Normal)
        btn3.setImage(UIImage(named: imgDese), forState: .Normal)
        calificacion = "Malo"
        performSegueWithIdentifier("califa", sender: self)

    }
   
    @IBAction func actBtn2(sender: UIButton) {
        btn1.setImage(UIImage(named: imgSelect), forState: .Normal)
        btn2.setImage(UIImage(named: imgSelect), forState: .Normal)
        btn3.setImage(UIImage(named: imgDese), forState: .Normal)
        calificacion = "Bueno"
        performSegueWithIdentifier("califa", sender: self)
    }
    @IBAction func actBtn3(sender: UIButton) {
        btn1.setImage(UIImage(named: imgSelect), forState: .Normal)
        btn2.setImage(UIImage(named: imgSelect), forState: .Normal)
        btn3.setImage(UIImage(named: imgSelect), forState: .Normal)
        calificacion = "Muy Bueno"
        performSegueWithIdentifier("califa", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1.setImage(UIImage(named: imgDese), forState: .Normal)
        btn2.setImage(UIImage(named: imgDese), forState: .Normal)
        btn3.setImage(UIImage(named: imgDese), forState: .Normal)
        
        lblNomRtr.text = nombreRtr
        lblDescRtr.text = descRtr
        lblDirTelRtr.text = direcTel
        imgViewCal.image = UIImage(named: imagenRtr)
        //btn1.selected = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
