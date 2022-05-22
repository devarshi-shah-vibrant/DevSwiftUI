//
//  EmojiListCellView.swift
//  WidgetEmoji
//
//  Created by Vibrant on 22/05/22.
//

import SwiftUI

struct EmojiListCellView: View {
    let emoji: String
    let emojiName: String
    var body: some View {
        HStack{
            Text("\(emoji) \(emojiName)")
        }
        .padding(.vertical)
        .font(.largeTitle)
        
    }
}

struct EmojiListCellView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListCellView(emoji: EmojiProvider.all()[0].emoji,emojiName: EmojiProvider.all()[0].name)
    }
}
