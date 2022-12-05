////
////  DateTrack.swift
////  gracyannas Watch App
////
////  Created by mvitoriapereirac on 04/12/22.
////
//
import Foundation
import SwiftUI
class DateTrack {
    let date = Date()
    let calendar = Calendar.current

    func isTodayMonday() -> Bool {
        let todaysWeekday = todaysWeekday()
        if todaysWeekday == 2 {
            return true
        }
        return false
    }
    
    func todaysWeekday() -> Int {
        return calendar.component(.weekday, from: date)

    }

}



