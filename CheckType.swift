//
//  CheckType.swift
//  test
//
//  Created by k002265 on 2024/12/04.
//

import SwiftUI

struct CheckType: View {
    @State var clipTypes: String = "sample"
    var body: some View {
        VStack {
            VStack {
                Text("Hello, world!")
                    .textSelection(.enabled)
            }
            .padding()
            Section {
                Button(action: {
                    clipTypes = ""
                    let pasteboard = NSPasteboard.general
                    if let types = pasteboard.types {
                        for type in types {
                            clipTypes += ("\(type.rawValue) \n")
                        }
                    } else {
                        print("クリップボードにデータがありません")
                    }
                    
                }, label: {
                Text("クリップボードのtypeを取得")
                })
                ScrollView {
                    Text(clipTypes)
                        .textSelection(.enabled)
                        .fixedSize(horizontal: false, vertical: true)
                }
                    
            }
        }.frame(width:500, height: 300)

    }
}

#Preview {
    CheckType()
}
