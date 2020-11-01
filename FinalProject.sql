/* ORDERS */
Select * from ORDERS

Set IDENTITY_INSERT ORDERS On;

Insert Into ORDERS (Ord_ID, Ord_Status, Acct_ID, Quote_ID, Prod_ID, Opp_ID, Ord_Price, Ord_Date, Ord_Created_Date, Ord_Last_Mod_Date)
Values
(5678, 'Closed', 1234, 4567, 123, 2345, $125000.00, '2019-9-1', '2019-9-1', GETDATE()),
(5679, 'Closed', 1235, 4568, 456, 2346, $165000.00, '2019-10-1', '2019-10-1', GETDATE()),
(5680, 'Closed', 1236, 4569, 123, 2347, $125000.00, '2019-11-1', '2019-11-1', GETDATE()),
(5681, 'Closed', 1237, 4570, 456, 2348, $165000.00, '2019-12-1', '2019-12-1', GETDATE()),
(5682, 'Closed', 1238, 4571, 123, 2349, $125000.00, '2020-1-1', '2020-1-1', GETDATE()),
(5683, 'Closed', 1239, 4572, 456, 2350, $165000.00, '2020-2-1', '2020-2-1', GETDATE()),
(5684, 'Closed', 1240, 4573, 123, 2351, $125000.00, '2020-3-1', '2020-3-1', GETDATE()),
(5685, 'Closed', 1241, 4574, 456, 2352, $165000.00, '2020-4-1', '2020-4-1', GETDATE()),
(5686, 'Closed', 1242, 4575, 123, 2353, $125000.00, '2020-5-1', '2020-5-1', GETDATE()),
(5687, 'Closed', 1243, 4576, 456, 2354, $165000.00, '2020-6-1', '2020-6-1', GETDATE()),
(5688, 'Closed', 1244, 4577, 123, 2355, $125000.00, '2020-7-1', '2020-7-1', GETDATE()),
(5689, 'Closed', 1245, 4578, 456, 2356, $165000.00, '2020-8-1', '2020-8-1', GETDATE());

/* PRODUCTS */
Select * from Product

Set IDENTITY_INSERT Product On;

Insert Into Product(Prod_ID, Prod_Status, Prod_Desc, Prod_Price, Ord_ID, Opp_ID, Asset_ID, Prod_Created_Date, Prod_Last_Mod_Date)
Values
(123, 'Active', 'Nexus_CRM_Package', $135000.00, 5678, 2345, 2345, '1992-1-1', GetDATE()),
(456, 'Active', 'Ecommerce_Toolbox', $175000.00, 5679, 2346, 2346, '1992-1-1', GetDATE()),
(123, 'Active', 'Nexus_CRM_Package', $135000.00, 5680, 2347, 2347, '1992-1-1', GetDATE()),
(456, 'Active', 'Ecommerce_Toolbox', $175000.00, 5681, 2348, 2348, '1992-1-1', GetDATE()),
(123, 'Active', 'Nexus_CRM_Package', $135000.00, 5682, 2349, 2349, '1992-1-1', GetDATE()),
(456, 'Active', 'Ecommerce_Toolbox', $175000.00, 5683, 2350, 2350, '1992-1-1', GetDATE()),
(123, 'Active', 'Nexus_CRM_Package', $135000.00, 5684, 2351, 2351, '1992-1-1', GetDATE()),
(456, 'Active', 'Ecommerce_Toolbox', $175000.00, 5685, 2352, 2352, '1992-1-1', GetDATE()),
(123, 'Active', 'Nexus_CRM_Package', $135000.00, 5686, 2353, 2353, '1992-1-1', GetDATE()),
(456, 'Active', 'Ecommerce_Toolbox', $175000.00, 5687, 2354, 2354, '1992-1-1', GetDATE()),
(123, 'Active', 'Nexus_CRM_Package', $135000.00, 5688, 2355, 2355, '1992-1-1', GetDATE()),
(456, 'Active', 'Ecommerce_Toolbox', $175000.00, 5689, 2356, 2356, '1992-1-1', GetDATE());