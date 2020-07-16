//
//  TodoListView.swift
//  SwiftUIDemo
//
//  Created by Thien Chu on 7/16/20.
//  Copyright © 2020 Thien Chu. All rights reserved.
//

import SwiftUI

struct TodoListView: View {
    var todoList = ["Present Swift UI", "Implement new AI feature", "Review code"]
    var body: some View {
        NavigationView {
            List(todoList, id: \.self) { item in
                NavigationLink(destination: TodoDetailView(item: item)) {
                    Text(item)
                }
            }
            .navigationBarTitle(Text("Todo List"))
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
