//
//  Arc.swift
//  TPRpg
//
//  Created by PAVÉ Guillaume on 01/10/2019.
//  Copyright © 2019 PAVÉ Guillaume. All rights reserved.
//

import Foundation

class Arc: Arme{
    init(){
        // héritage de la classe arme pour reprendre les dégats de cette dernière
        // initialisation de la valeur pour l'arc
        super.init(degats: 12)
        
        
    }
}
