//
//  constant.swift
//  mychatapp
//
//  Created by gulam ali on 09/11/17.
//  Copyright © 2017 gulam ali. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

struct Constants
{
    struct refs
    {
        static let databaseRoot = Database.database().reference()
        static let databaseChats = databaseRoot.child("chats")
    }
}
