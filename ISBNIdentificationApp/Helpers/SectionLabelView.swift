//
//  SectionLabelView.swift
//  ISBNIdentificationApp
//
//  Created by Berk Bozkurt on 2021-12-11.
//

import SwiftUI

struct SectionLabelView: View {
    // MARK: Stored Properties
     let text: String
    
    // MARK: Computed Properties
    var body: some View {
     Text(text)
            .font(.title2)
            .bold()
    
        
    }
}

struct SectionLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SectionLabelView(text: "Example")
    }
}
