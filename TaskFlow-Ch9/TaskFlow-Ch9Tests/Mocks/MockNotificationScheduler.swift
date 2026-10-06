//
//  MockNotificationScheduler.swift
//  TaskFlow-Ch9
//
//  Created by Andres de la Cruz on 10/5/26.
//

import Foundation
@testable import TaskFlow_Ch9

class MockNotificationScheduler: NotificationsSchedulingProtocol {
    var scheduleCallCount = 0
    var lastScheduleTask: TaskItem?
    func scheduleReminder(for task: TaskItem) {
        scheduleCallCount += 1
        lastScheduleTask = task
    }
}
