//
//  ToolbarView.swift
//  TabViewExample
//
//  Created by Enrique on 22/08/23.
//

import SwiftUI

struct ToolbarView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    ForEach(0..<20){ item in
                        Text("TzKakeruDev")
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                    }
                }
                .navigationTitle("Listado")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            print("Hola M.Dev")
                        }) {
                            Image(systemName: "square.and.pencil")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {}) {
                            Image(systemName: "plus.circle.fill")
                        }
                    }
                    // EL ATRIBUTO QUE ESTA EN PLACEMENTE : ES QUIEN LE DA EL ORDEN
                    // NO IMPORTA SI EL ORDEN DE LA CODEAR
                    //COMENT: BY TZKAKERU
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {}) {
                            Image(systemName: "folder.badge.plus")
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Text("Bienvenido, Tzkakeru")
                            .bold()
                        }
                    
                 }
            }
        }
    }
}


struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
