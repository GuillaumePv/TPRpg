//
//  main.swift
//  TPRpg
//
//  Created by PAVÉ Guillaume on 30/09/2019.
//  Copyright © 2019 PAVÉ Guillaume. All rights reserved.
//

import Foundation

// Fonction permettant de demander à l'utilisateur d'entrer un nombre et de le convertir en entier
func input() -> Int {
    let strData = readLine();
    
    return Int(strData!)!
}
var choixUtilisateur1: Int
var choixUtilisateur2: Int

//demande de choix pour le joueur 1
repeat{
    print("Classe du personnage 1 :")
    print("1. Archer")
    print("2. Guerrier")
    print("3. Mage")
    choixUtilisateur1 = input()
} while choixUtilisateur1 != 1 && choixUtilisateur1 != 2 && choixUtilisateur1 != 3

var classe1: Classe!
switch choixUtilisateur1{
case 1:
    classe1 = .Archer
case 2:
    classe1 = .Guerrier
case 3:
    classe1 = .Mage
default:
    break
}

//demande de choix pour le joueur 2
repeat{
    print("Classe du personnage 2 :")
    print("1. Archer")
    print("2. Guerrier")
    print("3. Mage")
    choixUtilisateur2 = input()
} while choixUtilisateur2 != 1 && choixUtilisateur2 != 2 && choixUtilisateur2 != 3

var classe2: Classe!
switch choixUtilisateur2{
case 1:
    classe2 = .Archer
case 2:
    classe2 = .Guerrier
case 3:
    classe2 = .Mage
default:
    break
}

// définition des joueurs
var joueur1 = Personnage(nom: "joueur 1", classe: classe1)
// print(joueur1.classe, joueur1.arme, joueur1.vie)
var joueur2 = Personnage(nom: "joueur 2", classe: classe2)

// on joue tant que les joueurs sont en vie


while joueur1.vie > 0 && joueur2.vie > 0{
    joueur1.Jouer(ContrePersonnage: joueur2)
    
    //cette condition permet de ne pas faire jouer le joueur 2 s'il est mort
    if joueur2.vie > 0{
        joueur2.Jouer(ContrePersonnage: joueur1)
    }
}

if joueur1.vie > 0{
    print("le vainqueur est \(joueur1.nom)")
}
else{
    print("le vainqueur est \(joueur2.nom)")
}

