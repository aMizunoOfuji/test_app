//
//  ContentView.swift
//  test_app
//
//  Created by Mizuno Ofuji - 大藤 瑞乃 on 2024/11/27.
//

import SwiftUI

struct ContentView2: View {
    
    @State private var toContentView: Bool = false
    
    var body: some View {
        NavigationStack{
            NavigationLink(
                destination: ContentView(),
                isActive: $toContentView,
                label:{
                    VStack{
                        Rectangle()
                            .foregroundColor(.white)
                        VStack{
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.blue)
                                    .cornerRadius(10)
                                    .padding()
                                    .frame(width:200,height:100)
                                    .shadow(radius: 10, x: 10, y: 10)
                                Button(action: {toContentView=true}){
                                    Text("押してね")
                                        .foregroundColor(.white)
                                        .bold()
                                }
                            }
                            Rectangle()
                                .foregroundColor(.white)
                        }
                    }
                }
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
