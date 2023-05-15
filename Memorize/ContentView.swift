//
//  ContentView.swift
//  Memorize
//
//  Created by 최지석 on 2023/05/01.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗", "🚌", "🚎", "🏎️","🚲","🏍️", "🛵", "✈️", "🚅", "🚠", "🚊", "🚆","🚙","🚜","🚛","🛴","🚇"]
    
    @State var emojiCount = 6
    
    var body: some View {
        VStack{
            
            
            HStack{
                ForEach(emojis[0..<emojiCount], id: \.self) { emojis in CardView(content: emojis)}
                
            }
            .padding(.horizontal)
            .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
        }
        Spacer()
        HStack{
            remove
            Spacer()
            add
            
        }
        .padding(.horizontal)
        .font(.largeTitle)
        
        
    }
    
    var remove: some View {
        Button{
            if emojiCount > 1{
                emojiCount -= 1
            }
            
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    
    var add: some View {
        Button{
            if emojiCount < emojis.count{
                emojiCount += 1
            }
            
        } label: {
            Image(systemName: "plus.circle")
        }
        
        
    }
    
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                
                
                Text(content)
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
