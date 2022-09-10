//
//  File.swift
//  liste_jeuvidideo_9sept2022
//
//  Created by Lunack on 09/09/2022.
//

import Foundation

// protocol Identifiable pour implémenter id
struct PersonnageModel: Identifiable {
    let id = UUID()
    let nomPersonnage: String
    let nomDuJeuAppartenance: String
    let description: String
    let imageName: String
}
