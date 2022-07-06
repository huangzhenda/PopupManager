//
//  BBPopupSchedulerStrategyQueue.swift
//  PopupManagerDemo
//
//  Created by huangzhenda on 2022/7/6.
//

import Foundation

protocol BBPopupSchedulerStrategyQueue {
    
    /// 添加弹窗对象
    /// - Parameter view: 弹窗对象
    func addPopupView(_ view:BBPopupView, priority:BBPopupViewPriority, page:String?);
    
    /// 移除弹窗对象
    /// - Parameter view: 弹窗对象
    func removePopupView(_ view:BBPopupView);
    
    /// 执行
    func execute();
    
    /// 清除
    func clear();
    
    /// 是否为空
    func isEmpty() -> Bool;
    
}
