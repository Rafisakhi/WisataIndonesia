//
//  ContentView.swift
//  WisataIndonesia
//
//  Created by mac on 14/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ListWisata()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Beranda")
                }
            Profile()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
