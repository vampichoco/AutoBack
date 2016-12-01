run this command to create a scheduled task that will run make backup command

schtasks /Create /TN makeback /SC DAILY /TR C:\b\makeback.cmd /ST 11:15