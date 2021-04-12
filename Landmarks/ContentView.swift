//
//  ContentView.swift
//  Landmarks
//
//  Created by Rodrigo Brandão on 11/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                MapView()
                    .frame(height: 300)
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {

                    Text("Morro do diabo")
                        .font(.title)
                    HStack {
                        Text("Teodoro Sampaio")
                        Spacer()
                        Text("São Paulo")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()

                    Text("O Parque Estadual Morro do Diabo é um parque brasileiro que situa-se no Pontal do Paranapanema, município de Teodoro Sampaio, extremo oeste do Estado de São Paulo. Criado pelo Decreto-Lei n. 25.342 de 4 de junho de 1986")
                        .font(.system(size: 14))
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(.secondary)
                    Text("")
                }.padding()
                Spacer()
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
