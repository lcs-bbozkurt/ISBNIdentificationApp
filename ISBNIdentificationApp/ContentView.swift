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
        return 91 + digitEleven * 1 + digitTwelve * 3 + digitThirteen * 1
    }
    var feedback: String {
        if oneThreeSum.bitPattern.isMultiple(of: 10) {
            return "ISBN number is accurate."
                
        } else {
            return "ISBN number is NOT accurate."
                
        }
            
    }
    var body: some View {
        // Input
        ScrollView {
            VStack {
                
                Group {
                    HStack {
                    SectionLabelView(text: "Digit Eleven")
                        Spacer()
                    }
                    Slider(value: $digitEleven,
                           in: 0.0...9.0,
                           step: 1.0,
                           label: {
                        Text("Digit Eleven")
                    },
                           minimumValueLabel: {
                        Text("0")
                    },
                           maximumValueLabel: {
                        Text("9")
                    })
                    
                    SliderValueView(value: digitEleven)
                        .padding()

                }
                Group {
                    HStack {
                SectionLabelView(text: "Digit Twelve")
                        Spacer()
                    }
                Slider(value: $digitTwelve,
                       in: 0.0...9.0,
                       step: 1.0,
                       label: {
                    Text("Digit Twelve")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("9")
                })
                
                SliderValueView(value: digitTwelve)
                    .padding()
                }
                Group {
                    HStack {
                    SectionLabelView(text: "Digit Thirteen")
                        Spacer()
                    }
                Slider(value: $digitThirteen,
                       in: 0.0...9.0,
                       step: 1.0,
                       label: {
                    Text("Digit Thirteen")
                },
                       minimumValueLabel: {
                    Text("0")
                },
                       maximumValueLabel: {
                    Text("9")
                })
                
                SliderValueView(value: digitThirteen)
                        .padding()
                }
                
                Group {
                    HStack {
                SectionLabelView(text: "Result:")
                            .padding()
                        Spacer()
                    }
                // Output: result
                OutputValueView(outputValue: oneThreeSum)
                        .padding()
                // Feedback
                Text(feedback)
                }
                
            }
            .padding()
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
        .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portrait)
    }
}
