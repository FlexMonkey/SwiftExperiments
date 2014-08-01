//
//  File.swift
//  HelloSwift
//
//  Created by Simon Gladman on 01/08/2014.
//  Copyright (c) 2014 Simon Gladman. All rights reserved.
//

import Foundation

extension Float
{
    func format(#decimalPlaces : Int) -> String
    {
        return NSString(format: "%.\(decimalPlaces)f", self);
    }
}