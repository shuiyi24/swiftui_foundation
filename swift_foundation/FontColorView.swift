//
//  FontColor.swift
//  swift_foundation
//
//  Created by 123 on 2023/12/8.
//

import Foundation
import SwiftUI
struct FontColorView: View {
    var body: some View {
        VStack {
            Text("预定义颜色").foregroundColor(Color.red)
            Link("所有预定义颜色查看", destination: URL(string: "https://developer.apple.com/documentation/swiftui/color/")!)
            Text("使用RGB值创建颜色").foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.3))//// RGB颜色值在0到1之间
            Text("使用系统颜色").foregroundColor(Color(UIColor.systemBackground))
        
        }.background(.yellow)
        .padding()
    }
}
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#") // 跳过'#'字符
        
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0xFF00) >> 8) / 255.0
        let b = Double(rgbValue & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}

struct FontColorView_Previews: PreviewProvider {
    static var previews: some View {
        FontColorView()
    }
}
