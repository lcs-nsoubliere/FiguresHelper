//
//  TriangleView.swift
//  FiguresHelper
//
//  Created by Noah Alexandre Soubliere on 2021-12-01.
//

import SwiftUI

struct TriangleView: View {
    
    //MARK: stored properties
    @State var height: Double = 3
    @State var sideA: Double = 7
    @State var sideC: Double = 4
   
    //sideB is also Base
    @State var sideB: Double = 9
    
    //MARK: computed properties
    var perimeter: Double {
        return (sideA + sideB + sideC)
    }
    var area: Double {
        return ((sideB * height)/2)
    }
    
    
    
    
    // User interface
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Base:")
                .bold()
            
            //MARK: Base Value    Side B Value
            Group {
                
                // Show the selected Base value
                HStack {
                    Spacer()
                    Text("\(sideB)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                //This syntax of $ says to use this property (sideB) and BIND IT to this control
                //to "Bind" means when the control changes, the propertys value changes
                Slider(value: $sideB,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("sideB")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
                
            }
            //MARK: Side A value
            
            Group {
                
                // Show the selected Base value
                HStack {
                    Spacer()
                    Text("\(sideA)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                //This syntax of $ says to use this property (sideA) and BIND IT to this control
                //to "Bind" means when the control changes, the propertys value changes
                Slider(value: $sideA,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("sideA")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
                
            }
            //MARK: Side C value
            
            Group {
                
                // Show the selected Base value
                HStack {
                    Spacer()
                    Text("\(sideC)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                //This syntax of $ says to use this property (sideC) and BIND IT to this control
                //to "Bind" means when the control changes, the propertys value changes
                Slider(value: $sideC,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("sideC")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
                
            }
        }
    }
}
struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
