//
//  picher1.swift
//  ofra.
//
//  Created by nura on 12/06/1444 AH.
//

import SwiftUI

struct picker: View {
    @State var showSheet: Bool = false
    @State var gols: String = ""
    @State var selected = 1
    init () {
        UISegmentedControl.appearance() .selectedSegmentTintColor = UIColor ( Color.init("DB"))
        UISegmentedControl.appearance () .setTitleTextAttributes([. foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance () .setTitleTextAttributes ([.foregroundColor: UIColor ( Color.init("DB"))], for: .normal)
    }
    var body: some View {
        VStack {
            Picker(selection: $selected, label: Text("Picker"), content: {
                Text ("الأهداف") .tag (1)
                    .accessibilityLabel("الآهداف _")
                Text ("ادخار") .tag (2)
                    .accessibilityLabel("ـ ادخار")
            })
            .frame(height: 60)
            .pickerStyle(SegmentedPickerStyle())
            .scaledToFit()
            .scaleEffect(CGSize(width: 1.5, height: 1.5))
            .padding(.horizontal, 60)
            if selected == 1 {
                Text ("اضف اهدافك الماليه !")
                    .accessibilityLabel("اضف اهدافك الماليه_")
                    .font(.system(size: 30))
                    .padding(.vertical, 300)
                    .foregroundColor(Color("R"))
                VStack{
                    Button(action:{
                        showSheet.toggle()
                    }, label: {
                        
                        Image(systemName: "plus.app.fill").accessibilityLabel("_اضف هدفك")
                            .font(.system(size:80))
                        
                            .frame(width: 70, height: 70 )
                            .foregroundColor(Color("DB"))
                            .font(.largeTitle).padding(.trailing,300)
                        
                    })
                }
                //            * Sheet *
                
//                .sheet(isPresented: $showSheet){
//                    TextField("ما هو هدفك ؟", text: $gols)
//                        .accessibilityLabel("ماهو ـ هدفك")
//                        .textFieldStyle(.roundedBorder)
//                        .multilineTextAlignment(.trailing)
//                        .padding(5)
                    //    .border(Color.white, width: 2)
                    //  .cornerRadius(4)
                    
                .sheet(isPresented: $showSheet, content:{ sheetgoals()
                        .presentationDetents([.large,  .fraction(0.70)]).padding(.top,40)
                     
                })
                
            }else {
                
                Text ("اضف خطة ادخارك !")
                    .accessibilityLabel("-اضف خطة ادخارك")
                    .font(.system(size: 30))
                    .foregroundColor(Color("R"))
                    .padding(.vertical, 300)
                
                VStack{
                    Button(action:{
                        showSheet.toggle()
                    }, label: {
                        
                        Image(systemName: "plus.app.fill")
                            .accessibilityLabel("اضف خطة ادخارك--")
                            .font(.system(size:80))
                        
                            .frame(width: 70, height: 70 )
                            .foregroundColor(Color("DB"))
                            .font(.largeTitle).padding(.trailing,300)
                        
                    })
                }
                //            * Sheet *
                
                .sheet(isPresented: $showSheet, content:{ sheetsave()
                        .presentationDetents([.large,  .fraction(0.70)])
                    
                })
                
                
                
                
                
            }
            
        }
    }
    
    
    
    
    
    
    struct picker1_Previews: PreviewProvider {
        static var previews: some View {
            picker()
        }
    }
    
}
