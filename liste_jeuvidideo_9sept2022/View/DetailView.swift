//
//  DetailView.swift
//  liste_jeuvidideo_9sept2022
//
//  Created by Pierric Marye on 13/09/2022.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var jeuVideoVM: JeuVideoViewModel
    let personnage: PersonnageModel
    
    var body: some View {
        ZStack {
            Color("Color1").ignoresSafeArea()
            
            VStack {
                Divider().background(Color("Color2"))
                
                ScrollView {
                    AsyncImage(
                        url: URL(string: personnage.imageName)!) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300.0, height: 300.0)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .stroke(.tint, lineWidth: 10)
                                        .padding(-10.0)
                                        .shadow(radius: 5)
                                )
                                .padding([.top, .leading, .trailing])
                        } placeholder: {
                            ProgressView()
                        }
                    
                    VStack(alignment: .center, spacing: 25.0) {
                        VStack(alignment: .center) {
                            Text(personnage.nomPersonnage)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                                .multilineTextAlignment(.center)
                                .padding(.top, 30.0)
                            
                            Text(personnage.nomDuJeuAppartenance)
                                .font(.title3)
                                .fontWeight(.medium)
                        }
                        
                        VStack {
                            Text(personnage.description)
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                    }
                    .padding()
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(personnage: JeuVideoViewModel().personnages[0])
            .environmentObject(JeuVideoViewModel())
    }
}
