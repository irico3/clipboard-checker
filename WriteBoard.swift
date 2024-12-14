//
//  WriteBoard.swift
//  test
//
//  Created by k002265 on 2024/12/04.
//

import SwiftUI

struct WriteBoard: View {
    @State private var myHtmlString: String = "<p>hello!</p>"
    var body: some View {

        VStack {
            TextEditor(text: $myHtmlString)
                .frame(height: 100)
                .padding(.all, 5.0)
                .border(Color(.white))
                
            
            Button {
                let pasteboard = NSPasteboard.general
                pasteboard.clearContents()
                
                // HTML形式で文字列を設定
                guard let htmlData = myHtmlString.data(using: .utf8) else {
                    print("Failed to convert HTML string to Data")
                    return
                }
                
                let htmlItem = NSPasteboardItem()
                htmlItem.setData(htmlData, forType: .html)
                
                pasteboard.writeObjects([htmlItem])
            } label: {
                Text("クリップボードにコピー")
            }

            
        }.frame(width:500, height: 300)
    }
    
}

#Preview {
    WriteBoard()
}



