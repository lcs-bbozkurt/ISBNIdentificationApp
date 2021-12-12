//
//  SliderValueView.swift
//  ISBNIdentificationApp
//
//  Created by Berk Bozkurt on 2021-12-12.
//

import SwiftUI

struct SliderValueView: View {
    // MARK: Stored Properties
    let value: Double
    
    // MARK: Computed Properties
    var formattedValue: String {
        return String(format: "%.1f", value)
    }
    var body: some View {
        
        HStack {
            Spacer()
        Text(formattedValue)
                .font(.title3)
                .bold()
            Spacer()
        }
    }
}
struct SliderValueView_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueView(value: 5.0)
    }
}
