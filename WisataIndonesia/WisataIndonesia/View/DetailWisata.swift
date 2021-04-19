//
//  DetailWisata.swift
//  WisataIndonesia
//
//  Created by mac on 14/04/21.
//

import SwiftUI

struct DetailWisata: View {
    
    let isidata : Indonesia
    
    var body: some View {
        
        ScrollView(showsIndicators: false){
            VStack(alignment:.leading){
                Image(isidata.gambar)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                VStack(alignment:.trailing){
                    HStack{
                        Text(isidata.judul)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(1)
                        Image(systemName: "heart")
                            .foregroundColor(Color.red)
                    }
                    
                    HStack{
                        ForEach(0..<isidata.rating){ data in
                            Image(systemName: "star.fill")
                        }
                        .foregroundColor(Color.orange)
                        .font(.system(size: 12))
                        Text(isidata.view)
                            .font(.callout)
                            .fontWeight(.regular)
                            .font(.system(size: 12))
                        
                    }
                }
                .padding()
                
                Spacer()
                
                VStack(alignment:.leading){
                    Text("Deskripsi")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()
                    VStack{
                        Text(isidata.detail)
                            .font(.caption)
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .padding()
                        
                    }
                    HStack{
                        Image(systemName:"location.fill")
                            .padding()
                            .font(.system(size: 15))
                        VStack{
                            Text(isidata.lokasi)
                                .font(.title3)
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                        }
                        
                    }
                    
                }
                
            }
        }
    }
}


struct DetailWisata_Previews: PreviewProvider {
    static var previews: some View {
        DetailWisata(isidata: Indonesia(id: 0, gambar: "", judul: "", lokasi: "", detail: "", rating: 4, view: ""))
    }
}
