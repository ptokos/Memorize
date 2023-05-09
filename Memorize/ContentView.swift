//
//  ContentView.swift
//  Memorize
//
//  Created by 최지석 on 2023/05/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            
            CardView()
            CardView()
            CardView()
            CardView()
            
            
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            
        

    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                    
                    
                Text("✈️")
                    .font(.largeTitle)
                  
            } else {
                shape.fill()
            }
          
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
