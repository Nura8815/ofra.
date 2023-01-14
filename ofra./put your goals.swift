//
//  put your goals.swift
//  ofra.
//
//  Created by nura on 16/06/1444 AH.
//

import SwiftUI

struct put_your_goals: View {
    @State private var givenName: String = ""
    @State private var familyName: String = ""
    var body: some View {
        HStack {

            VStack {
                    TextField(
                        "Given Name",
                        text: $givenName
                    )
                    .disableAutocorrection(true)
                    TextField(
                        "Family Name",
                        text: $familyName
                    )
                    .disableAutocorrection(true)
                }
                .textFieldStyle(.roundedBorder)
            }
        .background(Color.gray.opacity(0.08 ))
        .cornerRadius(13)

        }
    }


struct put_your_goals_Previews: PreviewProvider {
    static var previews: some View {
        put_your_goals()
    }
}
