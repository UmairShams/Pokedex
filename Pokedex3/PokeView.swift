//
//  PokeView.swift
//  Pokedex3
//
//  Created by Umair Ahmad on 12/24/16.
//  Copyright © 2016 Umair Ahmad. All rights reserved.
//

import UIKit

class PokeView: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg:UIImageView!
    @IBOutlet weak var nameLbl:UILabel!
    
    
    required init?(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 8.0
    }
    
    
    var pokemon:Pokemon!
    
    func configureCell(pokemon:Pokemon){
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
}
