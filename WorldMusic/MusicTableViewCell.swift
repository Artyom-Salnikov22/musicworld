//
//  MusicTableViewCell.swift
//  WorldMusic
//
//  Created by Артём Сальников on 04.09.2024.
//

import UIKit
import SDWebImage

class MusicTableViewCell: UITableViewCell {
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var musicLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(musician: Musicians) {
        nameLabel.text = musician.name
        musicLabel.text = musician.music
        songLabel.text = "Хит: \(musician.song)"
        
        pictureImageView.sd_setImage(with: URL(string: musician.picture), completed: nil)
    }

}
