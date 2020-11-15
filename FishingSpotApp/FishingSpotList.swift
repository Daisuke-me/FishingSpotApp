//
//  FishingSpotList.swift
//  FishingSpotApp
//
//  Created by daisuke on 2020/11/15.
//

import SwiftUI

struct FishingSpot: Identifiable {
    let id: Int
    let name: String
    let prefecture: String
}

struct FishingSpotList: View {
    var FishingSpots: [FishingSpot]
    
    var body: some View {
        List(FishingSpots) { fishingSpot in
            Text("\(fishingSpot.id)")
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 7.0)
                            .frame(width: 70.0, height: 22.0)
            Text("\(fishingSpot.name)")
                            .frame(width: 70.0, height: 22.0)
            Text("\(fishingSpot.prefecture)")
                            .padding(.leading, 20.0)
        }
    }
}

struct FishingSpotList_Previews: PreviewProvider {
    static var previews: some View {
        FishingSpotList(FishingSpots: [
            FishingSpot(id: 1, name: "江ノ島", prefecture: "神奈川県"),
            FishingSpot(id: 2, name: "三浦半島", prefecture: "神奈川県"),
            FishingSpot(id: 3, name: "小田原", prefecture: "神奈川県"),
            FishingSpot(id: 4, name: "熱海", prefecture: "静岡県")
        ])
    }
}
