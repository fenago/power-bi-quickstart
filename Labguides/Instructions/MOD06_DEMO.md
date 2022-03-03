# Module 6: Interactive Data Visualizations

- [Module 6: Interactive Data Visualizations](#module-6-interactive-data-visualizations)
  - [Lesson 1: Creating Power BI Reports](#lesson-1-creating-power-bi-reports)
    - [Demo 1: Adding Visualizations to a Report](#demo-1-adding-visualizations-to-a-report)
      - [Sign up for Power BI](#sign-up-for-power-bi)
      - [Connect to a Database in Azure SQL Database and Import Data](#connect-to-a-database-in-azure-sql-database-and-import-data)
      - [Add Visualizations to a Report](#add-visualizations-to-a-report)

## Lesson 1: Creating Power BI Reports

### Demo 1: Adding Visualizations to a Report


#### Connect to a Database in Azure SQL Database and Import Data

1. Ensure that you have copied all folders from `Desktop/power-bi-quickstart` folder into **D:\\** drive before starting the lab.

2. In the **D:\\Demofiles\\Mod06** folder, run **Setup.cmd** as Administrator.

3. In the **User Account Control** dialog box, click **Yes**.

4. If prompted to continue this operation, type **Y**, and then press Enter.

5. When the script completes, press any key to close the window.

6. Start **Microsoft SQL Server Management Studio 18**, and then connect to the **localhost** database engine instance by using Windows® authentication.

7. In the **D:\\Demofiles\\Mod06\\Demo** folder, open the **Demo.ssmssln** solution.

8. In Solution Explorer, expand **Queries**, and then open the **1 - Charts.sql** script file.

9. On the Taskbar, click **Power BI Desktop**.

3. To close the getting started window, at the top-right of the window, click **X**.

13. In the **Power BI Desktop** window, click **Get data**.

14. In the **Get Data** dialog box, click **SQL Server**, and then click **Connect**.

15. In the **SQL Server database** dialog box, in the **Server** box, type the URL of the server **localhost** .

16. In the **Database (optional)** box, type **AdventureWorksLT**.

17. Expand the **Advanced options** box.

18. In SQL Server Management Studio, in the **1 - Charts.sql** query, copy the query under **Customer Address** to the clipboard.

19. In Power BI Desktop, in the **SQL statement (optional, requires database)** box, paste the query, and then click **OK**.

21. In the data preview window, click **Load**.

22. On the **Home** tab, click **Get Data**.

23. In the **Get Data** dialog box, click **SQL Server**, and then click **Connect**.

24. In the **SQL Server database** dialog box, in the **Server** box, type the URL of the server **localhost** .

25. In the **Database (optional)** box, type **AdventureWorksLT**.

26. Expand the **Advanced options** box.

27. In SQL Server Management Studio, in the **1 - Charts.sql** query, copy the query under **Sales** to the clipboard.

28. In Power BI Desktop, in the **SQL statement (optional, requires database)** box, paste the query, and then click **OK**.

29. In the data preview window, click **Load**.

30. The window will close and return to the report.

#### Add Visualizations to a Report

1. In the **FIELDS** pane, right-click **Query1**, click **Rename**, type **Customers**, and then press Enter.

2. Right-click **Query2**, click **Rename**, type **Sales**, and then press Enter. Expand the two tables to display all the fields.

3. In the **FIELDS** pane, under **Sales**, select the **SubCategory**, and **OrderQty** check boxes. Power BI creates a table.

4. In the **VISUALIZATIONS** pane, click **Stacked column chart**.

5. Grab the expander on the right edge of the chart, and then widen the chart so that all category labels are visible.

6. Ensure that the chart is still selected, and then in the **VISUALIZATIONS** pane, click **Analytics**.

7. Expand **Constant Line**, and click **Add**.

8. In the **Value** box, type **100**.

9. Change the color to **red**.

10. Toggle **Data label** to **On**.

11. Change the color to **red** to match the reference line.

12. Click **Format**, and expand **Title**, in the **Title text** box, type **Orders by Sub Category**, and then click **Center** to align to the center.

13. In the **FIELDS** pane, right-click **Sales**, and then click **New column**.

14. In the formula bar, highlight **Column =**, type the following script, and then press Enter:
    ```
    LineTotal = Sales[OrderQty] * Sales[ListPrice]
    ```

15. On the **Modeling** tab, click **Format: General**, point to **Currency**, and then click **$ English (United States)**.

16. Click a blank area of the page.

17. In the **FIELDS** pane, under **Sales**, select the **Product** check box, which adds a table, and then select the **LineTotal** check box.

18. In the **VISUALIZATIONS** pane, click **Fields**, under **Filters**, expand **LineTotal is (All)**.

19. In the list, click **is greater than**, and in the box, type **25000**.

20. Click **Apply filter**, and then note that the number of products in the table is reduced.

21. In the **VISUALIZATIONS** pane, click **Format**, click **Title**, and change the **Title** slider to **On**.

22. Under **Title**, in the **Title text** box, type **Product Sales Over $25k**, and then click **Center**.

23. Select the table, and then click **Stacked bar chart**.

24. Use the expander to widen the chart to the same width as the column chart.

25. On the chart, click **More options**, point to **Sort by**, and then click **LineTotal**.

26. At the bottom of the window, click the **+** icon to add a new report.

27. On the **Home** tab, click **Manage Relationships**, and then point out that Power BI has auto-detected the relationship on the **CustomerID** columns, and then click **Close**.

28. In the **FIELDS** pane, expand **Customers**, and then select the **City** check box. Power BI automatically adds a map chart.

29. In the **FIELDS** pane, under **Sales**, select the **LineTotal** check box to add it to the map. Grab the right corner of the map, and then drag it to fill the whole of the report page.

30. Zoom in on the map to focus on the **UK**. Point out that the bubbles now represent the sales for each customer, and are proportionately sized. Position the cursor over some of the bubbles to display the data labels.

31. Save the file as **Customer Sales**, in the **D:\\Demofiles\\Mod06\\Demo** folder.

32. Leave Power BI open for the next demonstration.

