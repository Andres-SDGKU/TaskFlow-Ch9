//
//  TaskFlow_Ch9Tests.swift
//  TaskFlow-Ch9Tests
//
//  Created by Andres de la Cruz on 9/30/26.
//

import XCTest
@testable import TaskFlow_Ch9

final class TaskFlow_Ch9Tests: XCTestCase {

    var viewModel: TaskListViewModel!
    
    override func setUpWithError() throws {
        viewModel = TaskListViewModel()
    }
    
    /// Test #1 - Add task
    func test_addTask_increasesTaskCount() {
        // Arrange
       
        // Act
        viewModel.addTask(title: "Buy groceries")
        
        // Assert
        XCTAssertEqual(viewModel.tasks.count, 1)
        XCTAssertEqual(viewModel.tasks.first?.title, "Buy groceries")
    }

    /// Test #2 - Remove a task
    func test_removeTask_removesCorrectItem() {
        // Arrange
        viewModel.addTask(title: "Task A")
        viewModel.addTask(title: "Task B")
        
        // Act
        viewModel.removeTask(at: 0)
        
        // Assert
        XCTAssertEqual(viewModel.tasks.count, 1)
        XCTAssertEqual(viewModel.tasks.first?.title, "Task B")
    }
    
    /// Test #3 - Toggle Completion
    func test_toggleCompletion_flipsIsCompleted() {
        // Arrange
        viewModel.addTask(title: "Task A")
        let taskId = viewModel.tasks[0].id
        XCTAssertFalse(viewModel.tasks[0].isCompleted)
        
        // Act
        viewModel.toggleCompletion(id: taskId)
        
        // Assert
        XCTAssertTrue(viewModel.tasks[0].isCompleted)
    }
    
    /// Test #4 - Empty title
    func test_addTask_withEmptyTitle_isIgnored() {
        let initialCount = viewModel.tasks.count
        viewModel.addTask(title: "     ")
        XCTAssertEqual(viewModel.tasks.count, initialCount, "A blank title should not create a task")
    }
    
    /// Test #5 - Insertion is order is preserved
    func test_addTask_multipleTask_mantainsInsertionOrder() {
        
    }
    
    /// Test #6 - Toggle twice return to original state
    func test_toggleCompletion_calledTwice_returnToIncompleted() {
        
    }
    
    /// Test #7 - New viewModel starts empty
    func test_newViewModel_startWithEmptyTask() {
        
    }
}
