//
//  TodoDetailView.swift
//  SwiftUIDemo
//
//  Created by Thien Chu on 7/16/20.
//  Copyright © 2020 Thien Chu. All rights reserved.
//

import SwiftUI

struct TodoDetailView: View {
    var item: String
    var body: some View {
        Text("\(item)")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(item: "Hello world!")
    }
}
