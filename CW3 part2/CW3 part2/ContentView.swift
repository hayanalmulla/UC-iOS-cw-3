//
//  ContentView.swift
//  CW3 part2
//
//  Created by macbook on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var click1 = 0
    @State var click2 = 0
    @State var click3 = 0
    var body: some View {
        VStack{
            
        ExtractedView( clicks: $click1, part1:"استغفر الله العظيم")
        ExtractedView(clicks: $click2, part1: "سبحان الله العظيم")
        ExtractedView(clicks: $click3, part1: "سبحان الله و بحمده")
                
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    @Binding var clicks : Int
    var part1: String
    var body: some View {
        HStack{
            Text(part1)
            
        ZStack{
            Circle()
                .foregroundColor(.pink)
                .frame(width: 93, height: 73)
            Text("\(clicks)")
        }
        .onTapGesture{
            clicks += 1
        }}
    }
}
