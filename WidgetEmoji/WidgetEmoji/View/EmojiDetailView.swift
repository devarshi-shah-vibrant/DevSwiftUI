//
//  EmojiDetailView.swift
//  WidgetEmoji
//
//  Created by Vibrant on 22/05/22.
//

import SwiftUI

struct EmojiDetailView: View {
    let emojiDetail : EmojiDetails
    var body: some View {
        ZStack{
            Color(UIColor.systemIndigo).edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                Text("\(emojiDetail.emoji) \(emojiDetail.name)")
                    .font(.largeTitle)
                    .bold()
                
                Text(emojiDetail.description)
                    .font(.title)
                    .padding(.all, 1.0)
            }
            .padding()
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(emojiDetail: EmojiProvider.all()[0])
    }
}
