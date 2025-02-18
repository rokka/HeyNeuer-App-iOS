//
//  computerModel.swift
//  heyAlter
//
//  Created by Andrii Buchkivskyi on 24.07.2024.
//

import UIKit

class computerModel: NSObject {

    var type:Int = 0
    var model:String = ""
    var cpu:String = ""
    var memory_in_gb:Int = 0
    var hard_drive_space_in_gb:Int = 0
    var state:String = ""
    
    var number:Int = 0
    var created_at:String = ""

    func initModelFromFiles(dictionary: [String: AnyObject]) -> computerModel {
        
        self.type = dictionary["type"] as? Int ?? 0
        self.model = dictionary["model"] as? String ?? ""
        self.cpu = dictionary["cpu"] as? String ?? ""
        self.memory_in_gb = dictionary["memory_in_gb"] as? Int ?? 0
        self.hard_drive_space_in_gb = dictionary["hard_drive_space_in_gb"] as? Int ?? 0
        self.state = dictionary["state"] as? String ?? ""

        self.number = dictionary["number"] as? Int ?? 0
        
        var dateStr:String = dictionary["created_at"] as? String ?? ""
        self.created_at = String(dateStr.prefix(10))
        
        return self
        
    }
    
}
