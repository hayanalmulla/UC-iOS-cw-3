//
//  ContentView.swift
//  CW3
//
//  Created by macbook on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var text = ""
    var body: some View {
        ZStack{
            Color.teal
                .ignoresSafeArea()
            
        VStack{
            Text("حاسبة الدرجات")
                .padding()
                .foregroundColor(.white)
                .font(.largeTitle)
            
            Image("pic1")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 200)
            TextField("ادخل درجتك" ,text: $grade)
            
            Text("احسب درجتي")
                .foregroundColor(.white)
                .font(.system(size: 15))
                .frame(width: 90, height: 40)
                .background(Color.yellow)
                .clipShape(Capsule())
            
                .onTapGesture{
                    
            if Double(grade) ?? 0 >= 90
            {text = "ممتاز"}
            
            else if  Double(grade) ?? 0 >= 80 && Double(grade) ?? 0 < 90
            {text = "جيد جدا"}
            
            else if Double(grade) ?? 0 >= 70 && Double(grade) ?? 0 < 80
            {text = "جيد"}
            
            else if Double(grade) ?? 0 >= 60 && Double(grade) ?? 0 < 70
            {text = "مقبول"}
            
            else
            {text = "راسب"}
                }
            
            Text("لقد حصلت على درجة: ")
                .bold()
                .foregroundColor(.white)
            Text(text)
                .bold()
            
            
                    
            
            
            
            
            
            
                
            
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
