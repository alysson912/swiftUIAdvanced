//
//  ViewModifierBootcamp.swift
//  advancedProjectBootcamp
//
//  Created by Alysson Menezes on 03/09/24.
//

import SwiftUI


struct DefaultButtonViewModifier: ViewModifier {
    //MARK: Caso altere algum modifier ira mudar em todos os botoes q estao utilizando
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        // podemos empilhar varios modifiers
        content
            .foregroundStyle(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 8.0))
            .shadow(radius: 10)
    }
}
//  facilitando a chamada do modifier
    extension View {
        // passando parametro para definir cor padrao
        func withDefaultButtonFormatting(backgroundColor: Color = .gray) -> some View {
            modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
        }
    }


struct ViewModifierBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.headline)
                .withDefaultButtonFormatting()
            
            Text("Hello, everyone!")
                .font(.subheadline)
                .withDefaultButtonFormatting(backgroundColor: .blue)
            // caso queira usar outra cor
            Text("Hello !")
                .font(.title)
                .withDefaultButtonFormatting(backgroundColor: .cyan)
                
        }
        .padding(.horizontal)
    }
}

#Preview {
    ViewModifierBootcamp()
}
