//
//  PokemonDeatailVC.swift
//  Pokedex3
//
//  Created by Umair Ahmad on 12/25/16.
//  Copyright © 2016 Umair Ahmad. All rights reserved.
//

import UIKit

class PokemonDeatailVC: UIViewController {
    
    var pokemon:Pokemon!

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mainImg: UIImageView!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
    
    @IBOutlet weak var defenseLabel: UILabel!
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var pokedexLabel: UILabel!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var attackLabel: UILabel!
    
    
    @IBOutlet weak var currentEvoImg: UIImageView!
    
    
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    @IBOutlet weak var evoLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        pokedexLabel.text = "\(pokemon.pokedexId)"
        
        pokemon.downloadPokemonDetail {

            // whatever we write here, only be called after the network call is complete!
            self.UpdateUI()
        }
    }
    
    func UpdateUI(){
        attackLabel.text = pokemon.attack
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        defenseLabel.text = pokemon.defense
        typeLabel.text = pokemon.type
        descriptionLabel.text = pokemon.description
        
        if pokemon.nextEvolutionId == ""{
            evoLabel.text = "No Evolutions"
            nextEvoImg.isHidden = true
        
        }else{
            nextEvoImg.isHidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) -LVL \(pokemon.nextEvolutionLevel)"
            evoLabel.text = str
        }
    
    }
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }

}
