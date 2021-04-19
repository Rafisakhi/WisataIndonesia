//
//  ListWisata.swift
//  WisataIndonesia
//
//  Created by mac on 14/04/21.
//

import SwiftUI

struct ListWisata: View {
    var body: some View {
        Home()
    }
}

struct ListWisata_Previews: PreviewProvider {
    static var previews: some View {
        ListWisata()
    }
}

struct Home: View {
    var body: some View{
        NavigationView{
            
            List(Wisatadata){Data in
                NavigationLink(destination:DetailWisata(isidata:Data)){
                    ZStack(alignment:.top){
                        VStack{
                            HStack{
                                Image(Data.gambar)
                                    .resizable()
                                    .frame(width: 150, height: 100)
                                    .cornerRadius(10)
                                VStack(alignment:.leading){
                                    Text(Data.judul)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                    Text(Data.detail)
                                        .font(.caption2)
                                        .fontWeight(.regular)
                                         .foregroundColor(.black)
                                    
                                }
                            }//Hstack
                        }//Vstack
                    }.frame(width:350,height:100)
                }//navigationLink
                
            }//List
            .navigationTitle(Text("Wisata Indonesia"))
        }//NavigationView
        
    }
}
