//
//  Login_DATA.swift
//  ykd_demo
//
//  Created by Z Soul on 2019/11/16.
//  Copyright © 2019 Z Soul. All rights reserved.
//

import UIKit
import HandyJSON
//猜猜猜
struct NSDATA: HandyJSON{
    var resp_code: String?
    var resp_message: String?
    var result: AnyObject?
}
//测
//测试
//测222
//
struct LOGIN_DATA: HandyJSON {
   
    var modifyDate: String?
    var phone: String?
    var password: String?
    var paypass: String?
    var nickName: String?
    var fullname: String?
    var origcode: String?
    var signcode: String?
    var address: String?
    var contactname: String?
    var zipcode: String?
    var userHeadUrl: String?
    var province: String?
    var city: String?
    var email: String?
    var sex: String?
    var profession: String?
    var birthday: String?
    var openid: String?
    var unionid: String?
    var userToken: String?
    var validStatus: String?
    var createTime: String?
    var inviteCode: String?
    var brandId: String?
    var brandname: String?
    var grade: String?
    var preUserId: String?
    var preUserPhone: String?
    var realnameStatus: String?
    var verifyStatus: String?
    var securityKey: String?
    var machineCode: String?
    var supermarketPower: String?
    var shopsStatus: String?
    var encourageNum: String?
    
}

