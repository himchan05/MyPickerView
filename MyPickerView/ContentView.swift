//
//  ContentView.swift
//  MyPickerView
//
//  Created by 박힘찬 on 2022/03/15.
//

import SwiftUI

struct ContentView: View {
    @State var selectedValue: Int = 0
    var myColor = ["오렌지색", "바나나색", "딸기색"]
    func ChangeValue(index: Int) -> Color {
        switch index {
        case 0:
            return Color.orange
        case 1:
            return Color.yellow
        case 2:
            return Color.red
        default:
            return Color.orange
        }
    }
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(ChangeValue(index: selectedValue))
            Text("세그먼트 value: \(selectedValue)")
            Text("선택된 색상 : \(myColor[selectedValue])")
            Picker("타이틀", selection: $selectedValue) {
                Text("오렌지").tag(0)
                Text("바나나").tag(1)
                Text("딸기").tag(2)
            }
            .pickerStyle(.segmented)
            
            Picker("타이틀", selection: $selectedValue) {
                Text("오렌지").tag(0)
                Text("바나나").tag(1)
                Text("딸기").tag(2)
            }
            .pickerStyle(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
