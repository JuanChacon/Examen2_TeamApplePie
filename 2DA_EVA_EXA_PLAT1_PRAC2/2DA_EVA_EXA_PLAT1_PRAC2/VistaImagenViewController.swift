//
//  VistaImagenViewController.swift
//  2DA_EVA_EXA_PLAT1_PRAC2
//
//  Created by  on 05/04/17.
//
//

import UIKit

class VistaImagenViewController:  UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tbviewImg: UITableView!
    
    @IBAction func btnImgs(sender: UIButton) {
 
        
    }
    
    var sNomImg = ""
    let imgFondo = ["barrafina", "bourkestreetbakery", "cafedeadend", "cafeloisl", "cafelore", "confessional", "donostia", "fiveleaves", "forkeerestaurant", "grahamavenuemeats", "haighschocolate", "homei", "palominoespresso", "petiteoyster", "posatelier", "royaloak", "teakha", "thaicafe", "traif", "upstate", "wafflewolf"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //let img = UIImage(named: imgFondo[indexPath.row])

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Se crearan las celdas correspondientes al numero de datos
        return imgFondo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCellWithIdentifier("imgCell") as! TableViewCellArre
        
        let img = UIImage(named: imgFondo[indexPath.row])
        celda.viewRes.image = img
        return celda
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        sNomImg = imgFondo[indexPath.row]
        performSegueWithIdentifier("vista", sender: self)
      
    }
    
    @IBAction override func unwindForSegue(unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        
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
