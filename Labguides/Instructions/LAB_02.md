# Module 2: Introducing Power BI

- [Module 2: Introducing Power BI](#module-2-introducing-power-bi)
  - [Lab: Creating a Power BI Dashboard](#lab-creating-a-power-bi-dashboard)
    - [Exercise 1: Creating Power BI Charts](#exercise-1-connecting-to-power-bi-data)
      - [Task 1: Prepare the Lab Environment](#task-1-prepare-the-lab-environment)
      - [Task 2: Connect to SQL Server from the Power BI Desktop](#task-2-connect-to-sql-server-from-the-power-bi-desktop)
      - [Task 3: Add Charts to the Report](#task-3-add-charts-to-the-report)

**Note:** Lab Solution is present in `Desktop\power-bi-quickstart\Labfiles\Lab02\Solution` folder:

## Lab: Creating Power BI Charts

### Exercise 1: Connecting to Power BI Data

#### Task 1: Prepare the Lab Environment

Lab environment is already setup.


#### Task 2: Connect to SQL Server from the Power BI Desktop

1. On the Taskbar, click **Power BI Desktop**.

2. Click **New** > **Report**:

![](./images/new.png)

3. On the **Power BI Desktop** window, in the left-hand pane, click **Get data**.

4. In the **Get Data** dialog box, click **SQL Server**, and then click **Connect**.

![](./images/s4.png)

5. In the **SQL Server database** dialog box, in the **Server** box, type **localhost**, in the **Database (optional)** box, type **AdventureWorks**, and then click **OK**.

![](./images/s16.png)

6. In the **SQL Server database** dialog box, accept the default values, and then click **Connect**.

7. If an **Encryption Support** message is displayed, click **OK**.

8. In the **Navigator** dialog box, select the **Sales.vSalesPerson** check box, and then click **Load**.

![](./images/s17.png)

9. In the **Data** pane, expand **Sales vSalesPerson** to view all the columns.

![](./images/s18.png)

10. On the **Home** tab, click **Recent Sources**, and then click **localhost: AdventureWorks**.

![](./images/3.png)

11. In the **Navigator** dialog box, select the **Sales.vStoreWithDemographics** check box, and then click **Load**.

12. If the **Connection settings dialog box** appears, ensure **Import** is selected, and then click **OK**.

13. In the **Data** pane, expand **Sales.vStoreWithDemographics** to view all the columns.

![](./images/s19.png)

14. On the **Home** tab, click the **Get Data** arrow, and then click **SQL Server**.

15. In the **SQL Server database** dialog box, in the **Server** box, type **localhost**, and then in the **Database (optional)** box, type **AdventureWorks**.

16. Expand **Advanced options**, in the **SQL statement (optional, required database)** box, type the following code, and then click **OK**:
    ```
    SELECT TOP 10 P.ProductID, P.Name AS Product, SUM(CAST(LineTotal AS decimal(18,2))) AS LineTotal
    FROM Purchasing.PurchaseOrderDetail AS POD
    INNER JOIN Production.Product AS P
    ON POD.ProductID = P.ProductID
    GROUP BY P.ProductID, P.Name
    ORDER BY LineTotal DESC
    ```

![](./images/s20.png)

17. If the **Connection settings dialog box** appears, ensure **Import** is selected, and then click **OK**.

18. In the **localhost: AdventureWorks** dialog box, click **Load**.

![](./images/s21.png)

19. In the **Data** pane, expand **Query1** to view all columns.

20. Right-click **Query1**, click **Rename**, type **Top 10 Selling Products**, and then press Enter.

![](./images/4.png)


#### Task 3: Add Charts to the Report

1. In the **VISUALIZATIONS** pane, click **Stacked column chart** to add it to the report.

![](./images/s22.png)

2. In the **Data** pane, under **Sales** **vSalesPerson**, drag the **FirstName** field to the **Axis** box in the **VISUALIZATIONS** pane.

3. Drag the **SalesYTD** field to the **Value** box. The chart will populate with the data.

4. On the chart in the report, click and drag the sizer on the right-hand side of the chart to widen the chart and display all the salespeople.

5. Ensure the chart has focus, and then in the **VISUALIZATIONS** pane, click **Format**.

6. Expand **Colors**, then toggle **Show all** to **On**.

7. Change the color for **Linda**, **Jae**, and **Michael** to red.

![](./images/s23.png)

8. Click the report canvas then in the **VISUALIZATIONS** pane, click **Pie chart**. Drag the pie chart to the right of the bar chart, or below if there is not enough space.

9. In the **Data** pane, under **Sales** **vStoreWithDemographics**, drag the **Specialty** field to the **Legend** box in the **VISUALIZATIONS** pane.

10. Drag the **NumberEmployees** field to the **Values** box. The chart will populate with the data and should display three pie sections.

![](./images/s24.png)

11. Click the report canvas, then in the **VISUALIZATIONS** pane, click **Stacked column chart** to add it to the report. The chart should be located under the previous charts.

12. In the **Data** pane, expand **Top 10 Selling Products**, drag the **Product** field to the **Axis** box in the **VISUALIZATIONS** pane.

13. Drag the **LineTotal** field to the **Value** box. The chart will populate with the data.

14. Click the **Top 10 Selling Products** chart to give it focus, then in the **VISUALIZATIONS** pane, click **Donut chart**. Note how easy it is to switch to a different chart type.

![](./images/s25.png)

15. On the chart, grab the sizer on the right-hand side of the donut chart to widen the chart to display all the product names in full.

16. In the **Data** pane, under **Sales vStoreWithDemographics**, click and drag the **AnnualSales** field directly onto the report canvas. See how this automatically creates a bar chart.

17. In the **Data** pane, select the **AnnualRevenue** check box, and note that this adds the field to the bar chart.

18. In the **Data** pane, next to the **AnnualRevenue**, click the ellipsis (**...**) , and click **Rename**. Type **Annual Revenue**, and then press Enter.

19. Repeat Step 18 to rename the **AnnualSales** field to **Annual Sales**. Note that the names in the title and legend of the bar chart update accordingly.

![](./images/s26.png)

20. Click the report canvas, and then in the **VISUALIZATIONS** pane, click **Format**.

21. Right click **Page 1** and select **Rename Page**, and in the **Name** box, type **Sales**, and then press Enter. Note the name has changed in the tab at the bottom of the report.

![](./images/s27.png)

22. On the **File** menu, click **Save**.

23. In the **Save As** dialog box, navigate to **Desktop\\power-bi-quickstart\\Labfiles\\Lab02**.

24. Click **New folder**, type **Power BI**, and then press Enter.

25. Navigate to **Desktop\\power-bi-quickstart\\Labfiles\\Lab02\\Power BI**, in the **File name** box, type **Adventure Works Sales 2**, and then click **Save**.
