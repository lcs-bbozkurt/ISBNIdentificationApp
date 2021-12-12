//
//  ContentView.swift
//  ISBNIdentificationApp
//
//  Created by Berk Bozkurt on 2021-12-11.
//

import SwiftUI

struct ContentView: View {
    // MARK: Stored Properties
    
    @State var digitEleven = 5.0
    @State var digitTwelve = 5.0
    @State var digitThirteen = 5.0
    // MARK: Computed Properties
    var oneThreeSum: Double {
        return 9 * 1 + 7 * 3 + 8 * 1 + 0 * 3 + 9 * 1 + 2 * 3 + 1 * 1 + 4 * 3 + 1 * 1 + 8 * 3 + digitEleven * 1 + digitTwelve * 3 + digitThirteen * 1
    }
    var body: some View {
       // Input
        ScrollView {
            VStack { (alignment: .leading ,spacing: 20)
            Slider(value: $digitEleven,
                   in: 0.0...9.0,
                   step: 0.1,
                   label: {
                Text("Digit Eleven")
            },
                   minimumValueLabel: {
                Text("0")
            },
                   maximumValueLabel: {
                Text("9")
            })
                
                Slider(value: $digitTwelve,
                       in: 0.0...9.0,
                       step: 0.1,
                       label: {
                    Text("Digit Twelve")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("9")
                })
                
                Slider(value: $digitThirteen,
                       in: 0.0...9.0,
                       step: 0.1,
                       label: {
                    Text("Digit Thirteen")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("9")
                })
        // Output
                
                
                
                
                
                
                
                
            }
        }
        
   
    
            
            
            
            .navigationTitle("ISBN Identification")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ContentView()
    }
}
}
