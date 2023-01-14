//
//  gols.swift
//  ofra.
//
//  Created by nura on 16/06/1444 AH.
//

import SwiftUI

struct gols: View {
    
    var body: some View {
        ZStack{
            //            .frame(width:40, height: 47)
//                     Image(systemName: "photo")     .background(.gray).opacity(0.9)
            //            .cornerRadius(8)
            Image(systemName: "photo").font(.system(size: 30))
                .padding(.bottom, 300)
                .foregroundColor(Color("DB"))
            
            
            Image(systemName: "photo")
                .foregroundColor(Color("DB"))
                .padding(.top, 100).font(.system(size: 30))
            VStack {
                
                Text(" اسم الهدف").font(Font.custom("Cairo-Bold", size: 30)).foregroundColor(.black)
                            .frame(width:350, height: 200)
                            .background(.gray).opacity(0.2)
                            .cornerRadius(20)
                
                
                
                Text("اسم الهدف ").font(Font.custom("Cairo-Bold", size: 30)).foregroundColor(.black)
                            .frame(width:350, height: 200)
                            .background(.gray).opacity(0.2)
                            .cornerRadius(20)
                
              
            }.padding(.all)
            VStack{
                ProgressView( value: Double(70),
                total: Double(100))
                .tint((Color("DB")))
                .scaleEffect(2)
                .frame(width: 120, height: 120, alignment: .center)
                .padding(.top, 300)
                
            }
            VStack{
                ProgressView( value: Double(30),
                total: Double(100))
                .tint((Color("DB")))
                .scaleEffect(2)
                .frame(width: 120, height: 120, alignment: .center)
                .padding(.bottom, 100)
                
            }
        }
        
    }
    
    
    struct gols_Previews: PreviewProvider {
        static var previews: some View {
            gols()
        }
    }
}
