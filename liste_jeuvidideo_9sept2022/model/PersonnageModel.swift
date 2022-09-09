//
//  File.swift
//  liste_jeuvidideo_9sept2022
//
//  Created by Lunack on 09/09/2022.
//

import Foundation


struct PersonnageModel: Identifiable { // protocol Identifiable pour implémenter id
    
    let id = UUID()
    let nomPersonnage:String
    let nomDuJeuAppartenance: String
    let description: String
    let imageName:String
    
}


let personnages = [
    PersonnageModel(nomPersonnage: "Mario",
               nomDuJeuAppartenance: "Mario",
               description: "Plombier",
               imageName: "https://cdn-icons-png.flaticon.com/512/528/528107.png"),
   PersonnageModel(nomPersonnage: "Batman", nomDuJeuAppartenance: "Bruce wayne", description: "la Chauve Souris", imageName:"https://cdn-icons-png.flaticon.com/512/805/805385.png"),
   PersonnageModel(nomPersonnage: "Sonic", nomDuJeuAppartenance: "Sonic Herzog", description: "Hérisson", imageName: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0e738c17-7f3c-422e-8225-f8c782b08626/d8obg8n-b0b4af2d-8b88-4250-9a33-325a4616ca38.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzBlNzM4YzE3LTdmM2MtNDIyZS04MjI1LWY4Yzc4MmIwODYyNlwvZDhvYmc4bi1iMGI0YWYyZC04Yjg4LTQyNTAtOWEzMy0zMjVhNDYxNmNhMzgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.sB3LsRfQcumMxBQ0xn81xfm235MmWU0WTOJm_3bZ1No"),
  PersonnageModel(nomPersonnage: "Yoshi", nomDuJeuAppartenance: "Mario Kart", description: "dinosaure", imageName: "https://cdn-icons-png.flaticon.com/512/7518/7518463.png")

]
