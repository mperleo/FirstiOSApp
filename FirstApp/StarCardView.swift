//
//  StarCardView.swift
//  FirstApp
//
//  Created by Miguel Pérez León on 27/6/25.
//

import SwiftUI

struct StarCardView: View {
    let card: StarCard
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(card.nombre).font(.headline)
                Text(card.raza).foregroundStyle(.secondary)
                Text(card.afiliacion.formatted(.list(type: .and))).font(.footnote)
                Text(card.descripcion).font(.footnote)

            }
            Spacer()
            Image(card.imagen).resizable().scaledToFill().frame(width: 100, height: 100).clipShape(Circle())
            
        }
    }
}

#Preview {
    StarCardView(card: .test)
}
