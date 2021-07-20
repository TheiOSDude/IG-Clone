//
//  HeaderView.swift
//  IGClone
//
//  Created by Lee Burrows on 20/07/2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack() {
            Image("Camera").resizable().frame(width: 24, height: 21, alignment: .center)
            Spacer()
            Image("IGLogo").resizable().frame(width: 105, height: 30, alignment: .leading).scaledToFit()
            Spacer()
            Image("Direct").resizable().frame(width: 30, height: 30, alignment: .trailing).scaledToFit()
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
