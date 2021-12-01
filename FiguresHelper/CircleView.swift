//
//  CircleView.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Noah Alexandre Soubliere on 2021-11-29.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stored Properties
    //radius is the name
    //Double is the Datat type
    //By adding = 15.00 - we are just adding a default value
    //Input - we need this from the user
    //We want this to update based on what the user selects
    //to do this we use a speecial peice of syntax called "property wrapper"
    //
    //@state
    //
    
    //this makrs the property as one swiftUI should watch for changes
    
    @State var radius: Double = 15.00
    
    //MARK: Computed Properties
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            // Input
            Text("Radius:")
                .bold()
            
            Group {
                
                // Show the selected radius value
                HStack {
                    Spacer()
                    Text("\(radius)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                //This syntax of $ says to use this property (radius) and BIND IT to this control
                //to "Bind" means when the control changes, the propertys value changes
                Slider(value: $radius,
                       in: 0.0...100.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
                
            }
            
            
            // Output
            Text("Area:")
                .bold()
            
            Text("\(area) square units")
                .font(.title2)
            
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Circle")
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CircleView()
        }
    }
}
