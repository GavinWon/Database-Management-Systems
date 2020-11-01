//
//  CRM.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import Foundation

struct Table: Identifiable, Hashable {
    var id = UUID()
    let tableName: String
    let colunms: [String]
}

extension Table {
    static let data = [
        Table(tableName: "Account", colunms: [
            "Acct_ID",  "Acct_Status", "Acct_Name", "Parent_ID", "Acct_S_Num", "Acct_Street", "Acct_City", "Acct_State", "Acct_Zip", "User_ID", "Acct_Date", "Acct_Created_Date", "Acct_Last_Mod_Date"
        ]),
        Table(tableName: "Opportunity", colunms: [
            "Opp_ID", "Opp_Status", "Acct_ID", "Lead_ID", "Prod_ID", "Opp_Desc", "Opp_Price", "Opp_Date", "Opp_Created_Date", "Opp_Last_Mod_Date"
        ]),
        Table(tableName: "Campaign", colunms: [
            "Camp_ID", "Camp_Status", "Camp_Type", "Camp_Body", "Camp_Date", "Camp_Created_Date", "Camp_Last_Mod_Date"
        ]),
        Table(tableName: "Campaign_Member", colunms: [
            "Camp_Member_ID", "Camp_Member_Status", "Camp_ID", "Lead_ID", "Con_ID", "CM_Created_Date", "CM_Last_Mod_Date"
        ]),
        Table(tableName: "Attachment", colunms: [
            "Attach_ID", "Attach_Status", "Ord_ID", "Quote_ID", "Attach_Created_Date", "Attach_Last_Mod_Date"
        ]),
        Table(tableName: "Users", colunms: [
            "Users_ID", "User_Status", "User_First", "User_Last", "User_Phone", "User_Email", "User_S_Num", "User_Street", "User_City", "User_State", "User_Zip", "User_Created_Date", "User_Last_Mod_Date"
        ]),
        Table(tableName: "Cases", colunms: [
            "Case_ID", "Case_Status", "Acct_ID", "Con_ID", "Lead_ID", "Asset_ID", "Case_Issue", "Case_Reso", "Case_Created_Date", "Case_Last_Mod_Date"
        ]),
        Table(tableName: "Contact", colunms: [
            "Con_ID", "Con_Status", "Acct_ID", "Lead_ID", "Con_First", "Con_Last", "Con_Phone", "Con_Email", "Con_S_Num", "Con_Street", "Con_City", "Con_State", "Con_Zip", "Con_Created_Date", "Con_Last_Mod_Date"
        ]),
        Table(tableName: "Quote", colunms: [
            "Quote_ID", "Quote_Status", "Prod_ID", "Prod_Price", "Quote_Price", "Quote_Date", "Opp_ID", "Quote_Created_Date", "Quote_Last_Mod_Date"
        ]),
        Table(tableName: "Leads", colunms: [
            "Lead_ID", "Lead_Status","Lead_Name", "Lead_First", "Lead_Last", "Lead_Phone", "Lead_Email", "Lead_S_Num", "Lead_Street", "Lead_City", "Lead_State", "Lead_Zip", "Lead_Date", "Lead_Created_Date", "Lead_Last_Mod_Date"
        ]),
        Table(tableName: "Asset", colunms: [
            "Asset_ID", "Asset_Status", "Acct_ID", "Prod_ID", "Prod_Desc", "Ord_Date", "Asset_Created_Date", "Asset_Last_Mod_Date"
        ]),
        Table(tableName: "Orders", colunms: [
            "Ord_ID", "Ord_Status", "Acct_ID", "Quote_ID", "Prod_ID", "Opp_ID", "Ord_Price", "Ord_Date", "Ord_Created_Date", "Ord_Last_Mod_Date"
        ]),
        Table(tableName: "Product", colunms: [
            "Prod_ID", "Prod_Status", "Prod_Desc","Prod_Price", "Ord_ID", "Opp_ID", "Asset_ID", "Prod_Created_Date", "Prod_Last_Mod_Date"
        ])
    ]
}
