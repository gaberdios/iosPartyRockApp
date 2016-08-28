//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by G on 28/08/16.
//  Copyright © 2016 gaberdios. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videopreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    func updateUI(PartyRock: PartyRock) {
        videoTitle.text = PartyRock.videoTitle
        
        
        
        
    }
}
