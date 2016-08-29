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

    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!

        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videopreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handle the error
                
            }
        }
        
        
        
    }
}
