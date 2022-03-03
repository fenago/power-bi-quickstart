# Module 7: Direct Connectivity

- [Module 7: Direct Connectivity](#module-7-direct-connectivity)
  - [Lab: Direct connectivity](#lab-direct-connectivity)
    - [Exercise 1: Direct connections in Power BI](#exercise-1-direct-connections-in-power-bi)
      - [Task 1: Prepare the lab environment](#task-1-prepare-the-lab-environment)
      - [Task 2: Direct connectivity from the Power BI Desktop](#task-2-direct-connectivity-from-the-power-bi-desktop)


## Lab: Direct connectivity

### Exercise 1: Direct connections in Power BI

#### Task 1: Prepare the lab environment

1. Ensure that you have copied all folders from `Desktop/power-bi-quickstart` folder into **D:\\** drive before starting the lab.

2. In File Explorer, in the **D:\\Labfiles\\Lab07\\Starter** folder, right-click **Setup.cmd**, and then click **Run as administrator**.

3. In the **User Account Control** dialog box, click **Yes**.

4. If prompted to continue this operation, type **Y**, and then press Enter.

5. When the script completes, press any key to close the window.

#### Task 2: Direct connectivity from the Power BI Desktop

1. On the Taskbar, click **Power BI Desktop**.

8. To close the getting started window, at the top-right of the window, click **X**.

6. In the **Power BI Desktop** window, click **Get data**.

7. In the **Get Data** dialog box, click **SQL Server**, and then click **Connect**.

8. In the **SQL Server database** window, in the **Server** box, type the URL of the server **localhost** .

9. In the **Database (optional)** box, type **AdventureWorksLT**.

10. Under **Data Connectivity mode**, click **DirectQuery**, and then click **OK**.


13. In the **Navigator** dialog box, select the **SalesLT.Product** and **SalesLT.SalesOrderDetail** check boxes, and then click **Load**.

14. In the **Visualizations** pane, click the **Card** icon.

![](./images/13.png)

15. In the **Fields** pane, expand the **SalesLT SalesOrderDetail** table, and drag the **OrderQty** field to the chart.

16. Click the canvas, to ensure that the Card chart is not active.

17. In the **Visualizations** pane, click the **Slicer** icon.

18. In the **Fields** pane, expand the **SalesLT Product** table, and drag the **SellStartDate** field to the chart.

19. Drag the slider bar to reduce the date range, and verify that the **OrderQty** value changes.

20. On the **File** menu, click **Save**.

21. In the **Save As** dialog box, go to the **D:\\Labfiles\\Lab07\\Starter** folder, in the **File name** box, type **Sales Orders**, and then click **Save**.
