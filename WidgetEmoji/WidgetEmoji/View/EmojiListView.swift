//
//  EmojiListView.swift
//  WidgetEmoji
//
//  Created by Vibrant on 22/05/22.
//

import SwiftUI

struct EmojiListView: View {
    let emojiData =  EmojiProvider.all()
    @State private var emojiDetail: EmojiDetails?
    var body: some View {
        NavigationView {
            List{
                ForEach(emojiData) {emoji in
                    Button(action: {
                        emojiDetail = emoji
                    }, label: {
                        EmojiListCellView(emoji: emoji.emoji, emojiName: emoji.name)
                    })
                    
                }
            }
            .navigationBarTitle("Emoji Book")
            .listStyle(InsetListStyle())
        }
        .sheet(item: $emojiDetail,  content: {emoji in
            EmojiDetailView(emojiDetail: emoji)
            
        })
    }
    
        
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
