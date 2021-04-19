//
//  Profile.swift
//  WisataIndonesia
//
//  Created by mac on 14/04/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView{
                VStack{
                    Image("bagus")
                        .clipped()
                        .frame(width:150,height: 100)
                        .clipShape(Circle())
                    Text("User")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Form{
                        HStack{
                            Text("email")
                            Spacer()
                            Text("Rafi12@gmail.com")
                        }
                        HStack{
                            Text("Name")
                            Spacer()
                            Text("M Rafi Sakhi Rahman")
                        }
                        
                    }
                }
                .navigationTitle(Text("Profile"))
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
