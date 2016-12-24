//
//  Pokemon.swift
//  Pokedex3
//
//  Created by Umair Ahmad on 12/24/16.
//  Copyright © 2016 Umair Ahmad. All rights reserved.
//

import Foundation


class Pokemon{
    private var _name:String!
    private var _pokedxId:Int!
    
    var name:String{
        return _name
    }
    var pokedexId:Int{
        return _pokedxId
    }
    
    init(name:String,pokedexId:Int){
        self._name = name
        self._pokedxId = pokedexId
    }
}
