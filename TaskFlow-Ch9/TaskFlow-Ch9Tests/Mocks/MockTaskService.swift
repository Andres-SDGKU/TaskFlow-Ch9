//
//  MockTaskService.swift
//  TaskFlow-Ch9
//
//  Created by Andres de la Cruz on 10/5/26.
//

import Foundation
@testable import TaskFlow_Ch9

class MockTaskService: TaskServiceProtocol {
    var deleteCallCount = 0
    private var tasksToReturn: [TaskItem]
    init(tasksToReturn: [TaskItem] = []) { self.tasksToReturn = tasksToReturn }
    func fetchTasks() -> [TaskItem] {
        tasksToReturn
    }
    func delete(id: UUID) { deleteCallCount += 1 }
}
