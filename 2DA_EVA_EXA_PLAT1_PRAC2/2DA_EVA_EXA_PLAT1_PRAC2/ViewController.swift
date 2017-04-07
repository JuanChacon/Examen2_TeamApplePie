//
//  ViewController.swift
//  2DA_EVA_EXA_PLAT1_PRAC2
//
//  Created by  on 05/04/17.
//
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var row = 0
    var cal = ""
    var calif = ""
    var indexado:Int = 0
    
    @IBOutlet weak var miTableView: UITableView!
    
    var starVacia = "star-a"
    var starBlue = "star-b"
    
    var nombreRest = ["Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante","Nombre Restaurante"]
    //Creamos el segundo array para introducir las imagenes asociadas a los datos que se colocaran en cada celda
    var imgFondo = ["ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa","ico-tasa"]
    var imgStar = [["star-a","star-a","star-a"],["star-a","star-a","star-a"],
                    ["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"],["star-a","star-a","star-a"]]
    
    var descRes = ["Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción","Descripción"]
    var dirTel = ["Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono","Dirección y Teléfono"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Se crearan las celdas correspondientes al numero de datos
        return nombreRest.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCellWithIdentifier("myCell") as! TableViewCellMia
        
        celda.lblNombre.text = nombreRest[indexPath.row]
        celda.lblDesc.text = descRes[indexPath.row]
        celda.lblDirTel.text = dirTel[indexPath.row]
        if indexado == indexPath.row  {
            if (cal == "Malo"){
                celda.star1.image = UIImage(named: "star-b")
                celda.star2.image = UIImage(named: "star-a")
                celda.star3.image = UIImage(named: "star-a")
            }else if (cal == "Bueno"){
                celda.star1.image = UIImage(named: "star-b")
                celda.star2.image = UIImage(named: "star-b")
                celda.star3.image = UIImage(named: "star-a")
            }else if (cal == "Muy Bueno"){
                celda.star1.image = UIImage(named: "star-b")
                celda.star2.image = UIImage(named: "star-b")
                celda.star3.image = UIImage(named: "star-b")
            }
        }
        
        //let img = imgFondo[indexPath.row]
        let img = UIImage(named: imgFondo[indexPath.row])
        celda.imgImagen.image = img
        return celda
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let compartirAct = UITableViewRowAction(style: .Default, title: "Compartir", handler: comparteRest)
        let capturarRest = UITableViewRowAction(style: .Default, title: "Capturar", handler: {action in self.performSegueWithIdentifier("agregar", sender: self)})
        let calificarRest = UITableViewRowAction(style: .Default, title: "Calificar", handler: {action in self.performSegueWithIdentifier("calificar", sender: self)})
        
        
        calificarRest.backgroundColor = UIColor.blueColor()
        capturarRest.backgroundColor = UIColor.purpleColor()
        
        row = (indexPath.row)
        
        return [calificarRest,capturarRest,compartirAct]
    }
    
    func comparteRest(action: UITableViewRowAction, indexPath: NSIndexPath) -> Void {
        let miTexto = "Vine a comer en " + nombreRest[indexPath.row]
        let miImagen = UIImage(named: imgFondo[indexPath.row])
        if indexado == indexPath.row{
            if (cal == "Malo"){
            calif = "Malo"
        }else if(cal == "Bueno"){
            calif = "Bueno"
        }else if(cal == "Muy Bueno"){
            calif = "Muy Bueno"
            }
        }
        let actController = UIActivityViewController(activityItems: [miTexto, calif, miImagen!], applicationActivities: nil)
        presentViewController(actController, animated: true, completion: nil)
    }
    /*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "capturar" {
            if let indexPath = miTableView.indexPathForSelectedRow {
                let miDetalleViewController = segue.destinationViewController as! DetallesViewController
                //miDetalleViewController.sNomImg = imgFondo[indexPath.row]
                //miDetalleViewController.sNomRest = misDatos[indexPath.row]
                //miDetalleViewController.sUbica = "Chihuahua"
                //miDetalleViewController.sDesc = "Far far away"
            }
        }
    }
*/
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "calificar" {
            let miViewController = segue.destinationViewController as! CalificarViewController
                miViewController.nombreRtr = nombreRest[row]
                print(nombreRest)
                miViewController.descRtr = descRes[row]
                miViewController.direcTel = dirTel[row]
                miViewController.imagenRtr = imgFondo[row]
            miViewController.rowe = row
        }
    }
    
    @IBAction override func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        
        let miView = unwindSegue.sourceViewController as! CapturarViewController
        nombreRest[row] = miView.Name
        descRes[row] = miView.Des
        dirTel[row] = miView.Dirt
        imgFondo[row] = miView.imagenCap
        miTableView.reloadData()
        
    }
    
    @IBAction func unodfwindForSegue(unwindSegue: UIStoryboardSegue) {
        
        let miViewe = unwindSegue.sourceViewController as! CalificarViewController
        cal = miViewe.calificacion
        indexado = miViewe.rowe
        print(indexado)
        miTableView.reloadData()
        
    }
    
}

