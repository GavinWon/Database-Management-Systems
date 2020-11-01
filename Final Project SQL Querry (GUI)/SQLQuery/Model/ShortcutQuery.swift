//
//  ShortcutQuery.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import Foundation

struct ShortcutQuery: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let query: String
}

extension ShortcutQuery {
    static let data = [
        ShortcutQuery(title: "Top 12 Accounts Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Account;
                        """
        ),
        ShortcutQuery(title: "Top 12 Recent Orders Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Orders;
                        """
                      ),
        ShortcutQuery(title: "Top 12 Leads This Month Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Leads;
                        """
                      ),
        ShortcutQuery(title: "Top 12 Opportunities This Year Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Opportunity;
                      """
        ),
        ShortcutQuery(title: "Top 12 Recent Quotes Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Quote;
                        """
                      ),
        ShortcutQuery(title: "Top 12 Campaigns Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Campaign;
                        """
                      ),
        ShortcutQuery(title: "Top 12 Cases Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Cases;
                        """
                      ),
        ShortcutQuery(title: "Top 12 Attachments Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Attachment;
                        """
                      ),
        ShortcutQuery(title: "Top 12 Users Snapshot", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Users;
                        """
                      ),
        ShortcutQuery(title: "Top 12 Recent Contacts", query:
                        """
                        SELECT TOP 12 *
                        FROM
                            dbo.Contact;
                        """
                      ),
//        ShortcutQuery(title: "Best Revenue Month Snapshot", query:
//                        """
//                        SELECT TOP 12 *
//                        FROM
//                            dbo.Accounts;
//                        """
//                      ),
//        ShortcutQuery(title: "Best Opportunity Month Snapshot", query: ""),
        ShortcutQuery(title: "Best Quote Month Snapshot", query:
                        """
                        SELECT QUOTE_ID, QUOTE_STATUS, OPP_ID, PROD_ID, MAX(QUOTE_PRICE) AS QUOTE_PRICE
                        FROM
                            dbo.QUOTE
                        GROUP BY QUOTE_ID, QUOTE_STATUS, OPP_ID, QUOTE_PRICE, PROD_ID
                        HAVING MAX(QUOTE_PRICE) >= 165000
                        """
                      )
    ]
}
