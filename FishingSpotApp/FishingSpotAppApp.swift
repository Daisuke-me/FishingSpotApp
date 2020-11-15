//
//  FishingSpotAppApp.swift
//  FishingSpotApp
//
//  Created by daisuke on 2020/11/14.
//

import SwiftUI

@main
struct FishingSpotAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

struct FishingSpotAppApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
