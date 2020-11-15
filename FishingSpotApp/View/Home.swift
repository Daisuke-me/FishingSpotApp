//
//  Home.swift
//  FishingSpotApp
//
//  Created by daisuke on 2020/11/15.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Text("今日の釣りスポット")
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(Color.blue)
            HomeMap()
            Text("お気に入りスポット")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.leading)
                .lineLimit(0)
                .padding()
                .frame(width: 300.0, height: 50.0)
                .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/60/*@END_MENU_TOKEN@*/)
            FishingSpotList(FishingSpots: [
                FishingSpot(id: 1, name: "江ノ島", prefecture: "神奈川県"),
                FishingSpot(id: 2, name: "三浦半島", prefecture: "神奈川県"),
                FishingSpot(id: 3, name: "小田原", prefecture: "神奈川県"),
                FishingSpot(id: 4, name: "熱海", prefecture: "静岡県")
            ])
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
