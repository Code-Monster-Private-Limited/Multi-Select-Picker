//
//  GridViewCell.swift
//  MultiSelectPicker
//
//  Created by IRI-GOC-MAC on 6/27/20.
//  Copyright © 2020 Code Monster. All rights reserved.
//

import UIKit

class GridViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var livePhoto: UIImageView!
    
    var representedAssetIdentifier: String!
    
    var thumbnailImage: UIImage! {
        didSet {
            imageView.image = thumbnailImage
        }
    }
    
    var livePhotoBadgeUpdate: UIImage! {
        didSet {
            livePhoto.image = livePhotoBadgeUpdate
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        livePhoto.image = nil
    }
}
