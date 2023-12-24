//
//  DiceView.swift
//  DiceRoller
//
//  Created by Ricardo Camarena on 07/12/23.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
            .frame(maxWidth: 100, maxHeight: 100)
            .aspectRatio(1, contentMode: .fit)
            .foregroundStyle(.black, .white)
            
            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
