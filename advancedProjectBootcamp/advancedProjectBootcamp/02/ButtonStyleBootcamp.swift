//
//  ButtonStyleBootcamp.swift
//  advancedProjectBootcamp
//
//  Created by Alysson Menezes on 03/09/24.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    
    let scaledAmount: CGFloat
    // usando valor padrao para criar um inicializador
    init(scaledAmount: CGFloat) {
        self.scaledAmount = scaledAmount
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label // retornando uma view
            .scaleEffect(configuration.isPressed ? scaledAmount : 1.0)
            //.brightness(configuration.isPressed ? 0.05 : 0)
            .opacity(configuration.isPressed ? 0.9 : 1.0)
    }
}
// facilitando a chamada no outro lado
extension View {
    func withPressableStyle(scaledAmount: CGFloat) -> some View {
        buttonStyle(PressableButtonStyle(scaledAmount: scaledAmount))
    }
}

struct ButtonStyleBootcamp: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Click-me")
                .font(.headline)
                .withDefaultButtonFormatting()
        })
        .withPressableStyle(scaledAmount: 0.9)
        .padding(25)
    }
}

#Preview {
    ButtonStyleBootcamp()
}
