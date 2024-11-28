//
//  ContentView.swift
//  test_app
//
//  Created by Mizuno Ofuji - 大藤 瑞乃 on 2024/11/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack{
                Rectangle()
                    .foregroundColor(.gray)
                Rectangle()
                    .foregroundColor(.purple)
            }
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 150,height: 150)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100,height: 100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 50,height: 50)
            }
            ZStack{
                Rectangle()
                    .foregroundColor(.green)
                VStack{
                    HStack{
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width: 150,height: 100)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 150,height: 100)
                    }
                    HStack{
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 150,height: 100)
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width: 150,height: 100)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
