//
//  JeuVideoViewModel.swift
//  liste_jeuvidideo_9sept2022
//
//  Created by Pierric Marye on 09/09/2022.
//

import Foundation

class JeuVideoViewModel: ObservableObject {
    
    let personnages: [PersonnageModel] = [
        PersonnageModel(
            nomPersonnage: "Mario",
            nomDuJeuAppartenance: "Mario",
            description: "Mario est un personnage de jeu vidéo devenu la mascotte de Nintendo.",
            imageName: "https://cdn-icons-png.flaticon.com/512/528/528107.png"
        ),
        PersonnageModel(
            nomPersonnage: "Batman",
            nomDuJeuAppartenance: "Bruce wayne",
            description: " un super-héros de fiction appartenant à l'univers de DC Comics.",
            imageName:"https://cdn-icons-png.flaticon.com/512/805/805385.png"
        ),
        PersonnageModel(
            nomPersonnage: "Sonic",
            nomDuJeuAppartenance: "Sonic Hedgehog",
            description: "Sonic the Hedgehog, ou plus simplement Sonic, est une série de jeux vidéo, développée par la firme japonaise Sega depuis 1991. Elle met en avant la mascotte de la firme Sonic, un hérisson bleu anthropomorphe, luttant contre l'antagoniste principal de la série, le Dʳ Eggman.",
            imageName: "https://images.unsplash.com/photo-1550747545-c896b5f89ff7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2934&q=80"
        ),
        PersonnageModel(
            nomPersonnage: "Yoshi",
            nomDuJeuAppartenance: "Super Mario",
            description: "Yoshi est un personnage fictif de jeu vidéo créé par le japonais Shigefumi Hino. Il apparaît dans les jeux vidéo édités par Nintendo, d'abord dans la série Super Mario où il accompagne Mario et Luigi, puis dans sa propre série avec, entre autres, Super Mario World 2: Yoshi's Island.",
            imageName: "https://images.unsplash.com/photo-1592007694563-dc0a128d6c69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
        )
    ]
}
