//
//  picker2.swift
//  ofra.
//
//  Created by nura on 12/06/1444 AH.
//

import SwiftUI

struct picker2: View {
    @State var pickerSelection = 0
    
    init () {
        UISegmentedControl.appearance ().tintColor = UIColor.blue
    }
   
    var body: some View {
        Picker (selection: $pickerSelection, label: Text("")) {
            Text ("Active").tag(0).foregroundColor(Color("N"))
            Text ("Completed").tag (1)
        }.pickerStyle (SegmentedPickerStyle()).foregroundColor(Color("N"))
        }
    }


struct picker2_Previews: PreviewProvider {
    static var previews: some View {
        picker2()
    }
}
