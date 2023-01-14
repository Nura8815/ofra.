//
//  home.swift
//  ofra.
//
//  Created by nura on 20/06/1444 AH.
//

import SwiftUI

struct home: View {
    @State private var isActive = false
    @State private var size = 0.8
    var body: some View {
        if isActive{
            picker()
        }else {
            
            ZStack {
                Image("h")
                    .resizable()
                    .frame(width: 500, height: 1000)
                
             
                    
                    
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                withAnimation {
                                    self.isActive = true
                                }
                                
                            }
                            
                        }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                        
                    }
                    
                    
                }
            }
        }
    }
    
    
    


    struct home_Previews: PreviewProvider {
        static var previews: some View {
            home()
        }
    }

