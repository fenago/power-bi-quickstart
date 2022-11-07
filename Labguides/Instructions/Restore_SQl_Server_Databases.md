# Restore SQl Server Databases

1. Open Management Studio by clicking following icon as shown below:

![](./images/r1.jpg)

2. Management Studio will take some time to open.

![](./images/r2.jpg)

3. Enter `localhost` in Server name field and click **Connect**:

![](./images/r3.jpg)

4. After successful connection, you will be able see existing databases:

![](./images/r4.jpg)

5. **Optional** You can delete databases `AdventureWorks` and `AdventureWorksDW` by right clicking and select **delete** option: 

![](./images/r5.jpg)

6. Click **OK** to delete database: 

![](./images/r6.jpg)

7. Right click **Database** in the menu and select **Restore Database** option: 

![](./images/r7.jpg)

8. Select **Device** checkbox and then click `...` icon to select file path:

Database Backup Path: `C:\Setupfiles\Setupfiles`

![](./images/r8.jpg)

9. Click **Add** button and select path `AdventureWorks.bak`:

![](./images/r9.jpg)

10. Click **OK**: 

![](./images/r10.jpg)

11. Click **OK** to restore database: 

![](./images/r11.jpg)

12. Confirm database has been restored successfully.

![](./images/r12.jpg)

![](./images/r13.jpg)

13. Repeat step 7 till the end again but select path `AdventureWorksDW.bak` in step 9 this time to restore another database.

