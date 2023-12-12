//
//  SpacerView.swift
//  swift_foundation
//
//  Created by 123 on 2023/12/11.
//我们在使用stack类控件布局时会发现，所有视图都将在屏幕人正中央，如果想靠上、靠左要怎么办呢? 我们可以使用 Spacer()

//Spacer()
//会为了填满空间改变尺寸把其他视图“挤走”，如VStack视图中有Text和Image两个视图。我想要它靠底部，就可以在两个视图上面加一个Spacer()填充空间

import SwiftUI

struct SpacerView: View {
    var body: some View {
        //水平布局
        
        HStack(alignment:.bottom){
            Text("text")
            Spacer()
            Image(systemName: "globe").resizable().frame(width: 102,height: 80)
        }
        //垂直布局
        VStack(alignment:.trailing) {
            Text("text")
            Spacer()
            Image(systemName: "globe").resizable().frame(width: 102,height: 80)
            Spacer()
        }
      
    }
}
struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
