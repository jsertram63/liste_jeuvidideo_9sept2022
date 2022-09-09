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
        NavigationView{
            List(jeuVideoVM.personnages, id: \.id) { perso in
                NavigationLink {
                    // DetailView( : )
                } label: {
                    HStack {
                        AsyncImage(url: URL(string: perso.imageName)!) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(.black))
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
                    .padding(.vertical)
                }
                .listRowBackground(Color("Color2"))
            }
            .background(Color("Color2").ignoresSafeArea())
            .navigationTitle("Héros de jeux vidéo")
            .onAppear {
                UINavigationBar.appearance().largeTitleTextAttributes = [
                    .foregroundColor: UIColor.tintColor,
                    .font : UIFont(name:"Noteworthy", size: 30)!
                ]
                
                UITableView.appearance().backgroundColor = .clear
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
