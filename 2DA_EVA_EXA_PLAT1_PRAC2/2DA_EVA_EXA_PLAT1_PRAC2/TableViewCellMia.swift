//
//  TableViewCellMia.swift
//  2DA_EVA_EXA_PLAT1_PRAC2
//
//  Created by  on 05/04/17.
//
//

import UIKit

class TableViewCellMia: UITableViewCell {
    
    @IBOutlet var lblNombre: UILabel!
    @IBOutlet var lblDesc: UILabel!
    @IBOutlet var lblDirTel: UILabel!
    @IBOutlet var imgImagen: UIImageView!
    
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
