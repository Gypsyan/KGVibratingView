//
//  KGVibratingView.swift
//  KGVibratingView
//
//  Created by Anantha Krishnan K G on 11/05/17.
//  Copyright © 2017 Ananth. All rights reserved.
//

import UIKit


public enum startDirection: Int {
    case Horizontal_Left
    case Horizontal_Right
    case Vertical_Top
    case Vertical_Bottom
    
    
}

public struct positionData  {
    
    let value: CGFloat
    let direction: startDirection
    
    init(value: CGFloat, direction: startDirection) {
        self.value = value
        self.direction = direction
    }
}


extension UIView {
    
    private func getStartPosition(position:startDirection) -> positionData {
        switch position {
        case .Horizontal_Left:
            return positionData(value: 1, direction: .Horizontal_Left)
        case .Horizontal_Right:
            return positionData(value: -1, direction: .Horizontal_Right)
        case .Vertical_Top:
            return positionData(value: 1, direction: .Vertical_Top)
        case .Vertical_Bottom:
            return positionData(value: -1, direction: .Vertical_Bottom)
        default:
            return positionData(value: 1, direction: .Vertical_Top)
        }
    }
    
    private func getNextPosition(position:positionData) -> positionData {
        return positionData(value: (position.value * -1), direction: position.direction)
    }
    
    public func startShakingWith(direction: startDirection, numberOfTimes: Int = 5, totalDuration: Float = 0.5, completion: (() -> Void)? = nil){
        let shakePerTime = Double(totalDuration) / Double(numberOfTimes)
        
        let direction = getStartPosition(position: direction)
        
        shake(time: numberOfTimes, position: direction, durationPerShake: shakePerTime, completion: completion)
        
       
    }
    
    private func shake(time:Int,position:positionData,durationPerShake:TimeInterval, completion: (() -> Void)?){
        
        
        UIView.animate(withDuration: durationPerShake, animations: {
            
            switch position.direction{
            case .Horizontal_Left:
                self.layer.setAffineTransform(CGAffineTransform(translationX: 2*position.value, y: 0))
                break
            case .Horizontal_Right:
                self.layer.setAffineTransform(CGAffineTransform(translationX: -2*position.value, y: 0))
                break
            case .Vertical_Top:
                self.layer.setAffineTransform(CGAffineTransform(translationX: 0, y: 2*position.value))
                break
            case .Vertical_Bottom:
                self.layer.setAffineTransform(CGAffineTransform(translationX: 0, y: -2*position.value))
                break
            }
        }) { (complete) -> Void in
            if (time == 0) {
                UIView.animate(withDuration: durationPerShake, animations: {
                    self.layer.setAffineTransform(CGAffineTransform.identity)
                }, completion: { (complete) in
                    completion?()
                })
            } else {
                 self.shake(time: time-1, position: self.getNextPosition(position: position), durationPerShake: durationPerShake, completion: completion)
            }
        }
    
    }
}
