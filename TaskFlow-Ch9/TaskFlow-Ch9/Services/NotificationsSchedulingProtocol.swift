//
//  NotificationsSchedulingProtocol.swift
//  TaskFlow-Ch9
//
//  Created by Andres de la Cruz on 10/5/26.
//

protocol NotificationsSchedulingProtocol {
    func scheduleReminder(for task: TaskItem)
}

class NotificationsScheduler: NotificationsSchedulingProtocol {
    func scheduleReminder(for task: TaskItem) {
       // The real UNUserNotificationCenter call goes here
    }
}
