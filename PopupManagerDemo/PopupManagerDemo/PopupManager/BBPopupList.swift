//
//  BBPopupList.swift
//  PopupManagerDemo
//
//  Created by huangzhenda on 2022/7/6.
//

import Foundation
import UIKit


class BBPopupElement {
    var priority:BBPopupViewPriority = BBPopupViewPriorityNormal
    weak var page:UIViewController?
    var popupView:BBPopupView?
    var createStamp : TimeInterval = 0.0
}


class BBPopupList: BBPopupSchedulerStrategyQueue {

    var list : [BBPopupElement] = []
    
    func addPopupView(_ view: BBPopupView, priority:BBPopupViewPriority, page:String?) {
        

    }
    
    func removePopupView(_ view: BBPopupView) {
        
    }
    
    func removeAllPopupViews() {
        
    }
    
    func execute() {
        
    }
    
    func clear() {
        
    }
    
    func isEmpty() -> Bool {
        return true
    }
    
    
    func _push_back(e:BBPopupElement) {
        list.append(e)
    }
    
    func __push_front(e:BBPopupElement) {
        list.insert(e, at: 0)
    }
    
}


extension BBPopupList {
    
    func monitorRemoveEventWith(popup: BBPopupView) {
        
//        let originalSelector = Selector("dismiss")
//        let swizzledSelector = Selector("Monitor_dismiss")
//        let originalMethod = class_getInstanceMethod(popup, originalSelector)
//        let swizzledMethod = class_getInstanceMethod(self, swizzledSelector)
//    
//        let didAddMethod = class_addMethod(self, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))
//    
//        if didAddMethod {
//            class_replaceMethod(popup, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod))
//        } else {
//            method_exchangeImplementations(originalMethod, swizzledMethod)
//        }
    }
    
    func Monitor_dismiss() {
        
        self.Monitor_dismiss()
        
    }
    
}
