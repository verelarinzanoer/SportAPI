//
//  SportDetail.swift
//  SportAPI
//
//  Created by MACBOOK on 19/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct SportDetail: View {
    let sport: Sport
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                WebImage(url: URL(string: sport.image))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 20){
                    Text(sport.title)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(sport.description)
                        .font(.body)
                    
                }.padding()
            }
        }
    }
}
