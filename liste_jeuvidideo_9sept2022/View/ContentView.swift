//
//  ContentView.swift
//  liste_jeuvidideo_9sept2022
//
//  Created by Lunack on 09/09/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var jeuVideoVM: JeuVideoViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Color1").ignoresSafeArea()
                
                VStack {
                    Divider()
                        .background(Color("Color2"))
                    
                    List(jeuVideoVM.personnages, id: \.id) { perso in
                        NavigationLink {
                            DetailView(personnage: perso)
                        } label: {
                            HStack(spacing: 15.0) {
                                AsyncImage(url: URL(string: perso.imageName)!) { image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                        .overlay(
                                            Circle()
                                                .stroke(.tint, lineWidth: 2)
                                                .padding(-5.0)
                                                .shadow(radius: 5)
                                        )
                                } placeholder: {
                                    ProgressView()
                                }
                                
                                VStack(alignment:.leading){
                                    Text(perso.nomPersonnage)
                                        .font(.system(size: 21,
                                                      weight: .medium,
                                                      design: .default))
                                    Text(perso.nomDuJeuAppartenance)
                                        .font(.system(size: 14))
                                }
                            }
                            .padding(.vertical, 8.0)
                        }
                        .listRowBackground(Color("Color2"))
                    }
                    .navigationBarTitle("Héros de jeux vidéo")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(
                        trailing:
                            Image("GameOne")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(.tint)
                            )
                    )
                    .onAppear {
                        UINavigationBar.appearance().largeTitleTextAttributes = [
                            .foregroundColor: UIColor.tintColor
                        ]
                        
                        UITableView.appearance().backgroundColor = .clear
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(JeuVideoViewModel())
    }
}
