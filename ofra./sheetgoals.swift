//
//  sheetgoals.swift
//  ofra.
//
//  Created by nura on 20/06/1444 AH.
//

import SwiftUI

struct sheetgoals: View {
    @State var gols: String = ""
    @State var valuegol: String = ""
    @State var isShowingsignup:Bool=false
    @State var isShowingsignupe:Bool=false
    @State private var date = Date()
    @Environment(\.presentationMode) var PresentatioMode
    var body: some View{
        
        ZStack{
            Color("page")
                .edgesIgnoringSafeArea(.all)
               // .cornerRadius(35)
                VStack{
                    HStack(alignment: .top){
                        Spacer()
                        Button(action: {
                            PresentatioMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundColor(Color("DB"))
                                .font(.title)
                                .padding(.top,10)
                            
                        })
                    }
                    VStack(spacing : 5){
                        
                        TextField("Add your goals:", text: $gols)  .accessibilityLabel("اضف اهدافك الماليه_")
                                    .textFieldStyle(.plain)
                                    .frame(height: 25)
                                    .clipShape(Capsule())
                                   .padding()
            .overlay(RoundedRectangle(cornerRadius:15.0).strokeBorder(Color("DB"), style: StrokeStyle(lineWidth: 2.0)))
            .padding(.bottom, 8)
            .padding()
                        TextField("target budget:", text: $valuegol)
                                    .textFieldStyle(.plain)
            .frame(height: 25)
                    .clipShape(Capsule())
                        .padding()
        .overlay(RoundedRectangle(cornerRadius:15.0).strokeBorder(Color("DB"), style: StrokeStyle(lineWidth: 2.0)))
                                   .padding()
                    .padding(.bottom, 20)
                        
                        
                        
                        DatePicker("Date :",
                            selection: $date,
                            displayedComponents: [.date])
                        .foregroundColor(Color("DB"))
                        .font(.title2.bold())
                        .padding(.horizontal, 40.0)
                        .padding(.bottom, 40)
                    }
                      //  .padding(.vertical)
                        Text("Add Photo :")
                        .accessibilityLabel("اضف صوره")
                        .foregroundColor(Color("DB"))
                        .font(.title2.bold())
                    
                    UploadAnImage()
                        .frame(width: 30,height: 150)
                        .foregroundColor(Color("DB"))
                       .padding(.bottom, 30)
                  
                    
                    Button{
                        isShowingsignupe.toggle()
                    } label : {
                        Text("Add your goal")
                    }  .accessibilityLabel("اضف اهدافك الماليه_")
                    .frame(width:160, height: 55)
                    .font(.title2)
                    .foregroundColor(Color("page"))
                    .background(Color("DB"))
                    .cornerRadius(15)
                    .fullScreenCover(isPresented: $isShowingsignupe) {
                        ofra_.gols()
                    }
                   // .padding()
                    
                }.padding(.horizontal)
                
              //.padding()
        }
        
    }
}

struct sheetgoals_Previews: PreviewProvider {
    static var previews: some View {
        sheetgoals()
    }
}
