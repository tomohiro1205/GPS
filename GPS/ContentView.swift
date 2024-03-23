//
//  ContentView.swift
//  GPS
//
//  Created by 木村朋広 on 2024/03/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var manager = LocationManager()

       var body: some View {
           let latetude = $manager.location.wrappedValue.coordinate.latitude
           let longitude = $manager.location.wrappedValue.coordinate.longitude
           Text("\(latetude), \(longitude)").padding()
       }
   
}

#Preview {
    ContentView()
}
