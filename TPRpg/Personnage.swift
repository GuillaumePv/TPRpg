//
//  Personnage.swift
//  TPRpg
//
//  Created by PAVÉ Guillaume on 01/10/2019.
//  Copyright © 2019 PAVÉ Guillaume. All rights reserved.
//

import Foundation

class Personnage{
    var nom: String
    let classe: Classe
    var vie: Int
    var arme: Arme
    
    //initialisation des paramètres du personnage
    init(nom: String, classe: Classe) {
        self.nom = nom
        self.classe = classe
        
        //permet de définir la classe selon le choix de l'utilisateur
        switch self.classe{
        case .Archer:
            self.vie = 90
            self.arme = Arc()
        case .Guerrier:
            self.vie = 110
            self.arme = Epee()
        case .Mage:
            self.vie = 80
            self.arme = Sceptre()
        
        }
    }
    
    func Jouer(ContrePersonnage : Personnage){
        var choixUtilisateur: Int
        
        self.description()
        //boucler tant que le choix de l'utilisateur n'est pas bon
        repeat{
            print("Quel choix ?")
            print("1. Attaquer")
            print("2. Améliorer")
            choixUtilisateur = input()
        }while choixUtilisateur != 1 && choixUtilisateur != 2

        //fait l'action voulu par l'utilisateur
        if choixUtilisateur == 1 {
            self.attaquer(ContrePersonnage: ContrePersonnage)
        }else{
            self.ameliorerArme()
        }
    }
    
    // fonction qui fat recevroir les degats reçu par l'autre joueur
    func recevoir(degats :Int){
        self.vie = self.vie - degats
        
        // si la vie du personnage est négatif, la remettre à zéro.
        if self.vie < 0{
            self.vie = 0
        }
    }

    // fonction qui permet de matérialiser l'attaque
    func attaquer(ContrePersonnage: Personnage){
        ContrePersonnage.recevoir(degats: self.arme.degats)
    }

    //fonction qui améliore l'arme du personnages
    func ameliorerArme(){
        self.arme.degats += 5
    }
    
    func description(){
        print("Nom : \(self.nom)")
        print("Vie : \(self.vie)")
        print("Degats de son arme : \(self.arme.degats)")
        
    }
}
