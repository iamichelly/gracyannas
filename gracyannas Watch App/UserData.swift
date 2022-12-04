//
//  UserData.swift
//  gracyannas Watch App
//
//  Created by lrsv on 26/11/22.
//
import Foundation
import SwiftUI

class Storage: NSObject {

    static func archiveStringArray(object : [String]) -> Data {
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: false)
            return data
        } catch {
            fatalError("Can't encode data: \(error)")
        }
        
    }

    static func loadStringArray(data: Data) -> [String] {
        do {
            guard let array = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? [String] else {
                return []
            }
            return array
        } catch {
            fatalError("loadWStringArray - Can't encode data: \(error)")
        }
    }
    
    static func archiveBooleanArray(object : [Bool]) -> Data {
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: false)
            return data
        } catch {
            fatalError("Can't encode data: \(error)")
        }
        
    }

    static func loadBooleanArray(data: Data) -> [Bool] {
        do {
            guard let array = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? [Bool] else {
                return []
            }
            return array
        } catch {
            fatalError("loadWStringArray - Can't encode data: \(error)")
        }
    }
    
}

class UserData: ObservableObject {
    @Published var trainingDays: [Bool] = [false, false, false, false, false, false, false]
    @Published var trainingTypePerDay: [String] = []
    @Published var trainingHistory: [String] = []
    @AppStorage("trainingAmountPerWeek") var trainingAmountPerWeek: Int = 0
    @AppStorage("trainingsCompletedThisWeek") var trainingsCompletedThisWeek: Int = 0
    @AppStorage("trainingDays") var trainingDaysData: Data = Data()
    @AppStorage("trainingTypePerDay") var trainingTypePerDayData: Data = Data()
    @AppStorage("trainingHistory") var trainingHistoryData: Data = Data()
}
