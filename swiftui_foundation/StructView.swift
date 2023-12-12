//
//  StructView.swift
//  swift_foundation
//
//  Created by 123 on 2023/12/11.
//

import Foundation
import SwiftUI
struct StackView: View {
    var body: some View {
        //水平布局
        //默认子视图是水平中心对齐的,可添加alignment  修改位置，alignmet 的值有 bottom   top  center等，可自己查看api
        HStack(alignment:.bottom){
            Text("text")
            Image(systemName: "globe").resizable().frame(width: 102,height: 80)
        }
        //垂直布局
        //默认子视图是垂直中心中心对齐的,可添加alignment  修改位置，alignmet 的值有 leading   trailing  center等
        VStack(alignment:.trailing) {
            Text("text")
            Image(systemName: "globe").resizable().frame(width: 102,height: 80)
        }
        //ZStack用于覆盖子视图,子视图会重叠在一起 alignmet 的值有 leading   trailing  center topLeading bottomLeading等
        ZStack(alignment:.trailing) {
           
            Image(systemName: "globe").resizable().frame(width: 102,height: 80)
            Text("text").foregroundColor(.red).font(.system(size: 40))
        }
        //在一个滚动视图（ScrollView）中创建了一个LazyVStack，它垂直地堆叠了1000行文本。与标准的VStack不同，LazyVStack不会立即渲染所有的视图，而是当它们接近或进入视野时才开始渲染。这种延迟加载（或称懒加载）可用来提高大量数据渲染时的性能和效率。另外，LazyHStack是LazyVStack的水平版本，用于创建横向方向的按需加载栈视图。
        ScrollView {
           LazyVStack(alignment: .leading, spacing: 10) {
               ForEach(0..<1000) { index in
                   Text("Row \(index)")
               }
           }
       }
    }
}
struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
