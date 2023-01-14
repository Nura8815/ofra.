//
//  savings.swift
//  ofra.
//
//  Created by nura on 18/06/1444 AH.
//

import SwiftUI

struct savings: View {
    var body: some View {
        ZStack{
            //            .frame(width:40, height: 47)
//                     Image(systemName: "photo")     .background(.gray).opacity(0.9)
            //            .cornerRadius(8)
            Text("6000").font(Font.custom("Cairo-Bold", size: 30)).foregroundColor(.black).padding(.bottom, 300)
                
            
            
            Text("6000").font(Font.custom("Cairo-Bold", size: 30))
                .foregroundColor(.black)
                .padding(.top, 110).font(.system(size: 30))
            VStack {
                
                Text("30 يوم").font(Font.custom("Cairo-Bold", size: 30)).foregroundColor(.black)
                            .frame(width:350, height: 200)
                            .background(.gray).opacity(0.2)
                            .cornerRadius(20)
                
                
                
                Text("30 يوم").font(Font.custom("Cairo-Bold", size: 30)).foregroundColor(.black)
                            .frame(width:350, height: 200)
                            .background(.gray).opacity(0.2)
                            .cornerRadius(20)
                
              
            }.padding(.all)
            VStack{
                ProgressView( value: Double(70),
                total: Double(100))
                .tint((Color("DB")))
                .scaleEffect(4)
                .frame(width: 70, height: 300, alignment: .center)
                .padding(.top, 300)
                
            }
            VStack{
                ProgressView( value: Double(40),
                total: Double(100))
                .tint((Color("DB")))
                .scaleEffect(4)
                .frame(width: 70, height: 120, alignment: .center)
                .padding(.bottom, 100)
                
            }
        }
        
    }
    
    }


struct savings_Previews: PreviewProvider {
    static var previews: some View {
        savings()
    }
}
