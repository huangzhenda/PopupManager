//
//  BBPopupScheduler.swift
//  PopupManagerDemo
//
//  Created by huangzhenda on 2022/7/5.
//

import Foundation

class BBPopupScheduler: NSObject {

    /// 队列
    var list : BBPopupList = BBPopupList.init()
    
    /// 可以将调度器进行挂起，可以中止队列触发- execute。挂起状态不会影响已经execute的弹窗
    var suspended : Bool = false;
    
    /// 添加弹窗
    /// - Parameters:
    ///   - view: 默认
    ///   - priority: 优先级
    func add(_ view: BBPopupView, priority:BBPopupViewPriority)  {
        self.add(view, priority: priority, page:nil)
    }
    
    func add(_ view: BBPopupView, priority:BBPopupViewPriority, page:String?)  {
        self.list.addPopupView(view, priority: priority, page: page)
    }
    
    /// 移除弹窗
    func remove(_ view: BBPopupView) {
        self.list.removePopupView(view)
    }
    
    /// 移除所有弹窗
    func removeAllPopupViews() {
        
        self.list.removeAllPopupViews()
    }
    
    /// 向调用器主动发送一个执行显示弹窗的命令，支持线程安全
    func registerFirstPopupViewResponder() {
        
    }
    
    ///  返回当前调度器是否拥有已经显示的弹窗, 如果canRegisterFirstPopupViewResponder为true，-registerFirstPopupViewResponder将执行无效
    /// - Returns: Bool
    func canRegisterFirstPopupViewResponder() -> Bool {
        return true;
    }
    
}
