//
//  sheetsave.swift
//  ofra.
//
//  Created by nura on 20/06/1444 AH.
//

import SwiftUI

struct sheetsave: View {
    @State var totalincome: Int = 900
    @State var deductedamount: Int = 50
    @State var isShowingsignup:Bool=false
    @State var isShowingsignupe:Bool=false
    
    @State private var date = Date()
    @Environment(\.presentationMode) var PresentatioMode
    var body: some View{
        
        ZStack(){
            Color("page")
                .edgesIgnoringSafeArea(.all)
            // .cornerRadius(35)
            VStack(spacing : 5){
                HStack(alignment: .top){
                    Spacer()
                    Button(action: {
                        PresentatioMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color("DB"))
                            .font(.title)
                            .padding(.bottom, 20)
                        
                    })
                }
                VStack{
                    VStack(spacing : 5){
                        
                        TextField("total income:", value: $totalincome , formatter: NumberFormatter())
                            .accessibilityLabel("total income")
                            .textFieldStyle(.plain)
                            .frame(height: 25)
                            .clipShape(Capsule())
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:15.0).strokeBorder(Color("DB"), style: StrokeStyle(lineWidth: 2.0)))
                            .padding(.bottom, 8)
                            .padding()
                        
                        TextField("deducted amount:", value: $deductedamount , formatter: NumberFormatter())
                            .accessibilityLabel("deducted amount")
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
                }
                   .padding(.vertical)
                VStack{
                    Text("Savings Value :")
                        .foregroundColor(Color("DB"))
                        .font(.title2.bold())
                    
                    rate2()
                        .frame(width: 370,height: 100)
                    .padding(.bottom, 40)
                    
                }
                    
                Button{
                    isShowingsignupe.toggle()
                } label : {
                    Text("Add plan")
                }.accessibilityLabel("Add plan")
                .frame(width:160, height: 55)
                .font(.title2)
                .foregroundColor(Color("page"))
                .background(Color("DB"))
                .cornerRadius(15)
                .fullScreenCover(isPresented: $isShowingsignupe) {
                   savings()
                }
                    
                    
                    
                }.padding(.horizontal)
                
                //.padding()
            }
            
        
    }
}

struct sheetsave_Previews: PreviewProvider {
    static var previews: some View {
        sheetsave()
    }
}
