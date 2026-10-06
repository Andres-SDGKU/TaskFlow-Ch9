//
//  TaskServiceProtocol.swift
//  TaskFlow-Ch9
//
//  Created by Andres de la Cruz on 10/5/26.
//

import Foundation

protocol TaskServiceProtocol {
    func fetchTasks() -> [TaskItem]
}

class TaskService: TaskServiceProtocol {
    func fetchTasks() -> [TaskItem] { [] }
}

class StubTaskService: TaskServiceProtocol {
    private let stubbedTasks: [TaskItem]
    init(stubbedTasks: [TaskItem] = [
        TaskItem(title: "Task A", priority: .medium),
        TaskItem(title: "Task A", priority: .medium),
        TaskItem(title: "Task A", priority: .medium)
    ]) { self.stubbedTasks = stubbedTasks }
    func fetchTasks() -> [TaskItem] {
        stubbedTasks
    }
}
