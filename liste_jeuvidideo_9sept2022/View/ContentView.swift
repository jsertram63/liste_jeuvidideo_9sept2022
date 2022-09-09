//
//  ContentView.swift
//  liste_jeuvidideo_9sept2022
//
//  Created by Lunack on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(personnages){ perso in
                PersonnageRow(perso: perso)
            }
            .navigationTitle("Personnage de jeu")
            .listStyle(.plain)
        }
        
    }
}


struct PersonnageRow: View {
    let perso: PersonnageModel
    
    var body: some View {
        
        HStack {
            AsyncImage(url: URL(string: perso.imageName)!){ image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.black))
                    
                
            }placeholder: {
                ProgressView()
            }
            
            
            /*Image(systemName: "gamecontroller.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .cornerRadius(50)*/
            VStack(alignment:.leading){
                Text(perso.nomPersonnage)
                    .font(.system(size: 21,
                                  weight: .medium,
                                  design: .default))
                Text(perso.description)
                Text(perso.nomDuJeuAppartenance)
                    .font(.system(size: 14))
            }
        }
       
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
