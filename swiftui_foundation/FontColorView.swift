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
        VStack{
            VStack {
                Text("预定义颜色").foregroundColor(Color.red)
                Link("所有预定义颜色查看", destination: URL(string: "https://developer.apple.com/documentation/swiftui/color/")!)
                Text("使用RGB值创建颜色").foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.3))//// RGB颜色值在0到1之间
               
                Text("使用系统颜色").foregroundColor(Color(UIColor.systemBackground))
                Text("使用十六进制颜色代码").foregroundColor(Color.green) // 设置文本颜色
                    .background(Color(hex: "#123456")) // 设置背景颜色，使用了扩展
                
                
            }.background(.yellow)
                .padding()
            VStack{
                Text("透明度0.5").font(.system(size:30)).foregroundColor(.red).foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.3,opacity: 0.5))
                Text("透明度0.2").font(.system(size:30)).foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.3,opacity: 0.2))
                Text("背景透明度0.9").font(.system(size:30)).background(Color(red: 1, green: 0, blue: 0,opacity: 0.9))
                Text("背景透明度0.2").font(.system(size:30)).background(Color(red: 1, green: 0, blue: 0,opacity: 0.2))
            }.padding()
            VStack{
                Text(" 渐变色背景").font(.system(size:40)).fontWeight(.bold)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )
                Text(" 渐变色文字").font(.system(size:40)).fontWeight(.bold).foregroundColor(.clear)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )
                    .mask(
                        Text("渐变色文字")
                            .font(.system(size:40)).fontWeight(.bold)
                    )
            }
            VStack{
                Text("这是带阴影的文字")
                    .font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
                    .shadow(color: .red, radius: 2, x: 0, y: 2)
                
                Text("带阴影的渐变色文字")
                    .font(.system(size:40))
                    .foregroundColor(.clear) // 隐藏原始文本的颜色
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                       startPoint: .leading,
                                       endPoint: .trailing)
                    )
                    .mask(
                        Text("带阴影的渐变色文字")
                            .font(.system(size:40)).fontWeight(.bold)
                    ).shadow(color: .gray, radius: 2, x: 5, y: 2)
            }
            
        }
        
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
