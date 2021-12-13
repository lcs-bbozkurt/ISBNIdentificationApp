//
//  OutputValueView.swift
//  ISBNIdentificationApp
//
//  Created by Berk Bozkurt on 2021-12-12.
//

import SwiftUI

struct OutputValueView: View {
    // MARK: Stored Properties
    let outputValue: Double
    // MARK: Computed Properties
    var formattedValue: String {
        return String(format: "%.0f", outputValue)
    }
    var body: some View {
        Text("\(formattedValue)")
            .font(.title3)
            .bold()
    }
}

struct OutputValueView_Previews: PreviewProvider {
    static var previews: some View {
        OutputValueView(outputValue: 5)
    }
}
