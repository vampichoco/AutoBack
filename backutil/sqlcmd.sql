DECLARE @bid uniqueidentifier
set @bid = NEWID()
DECLARE @opfile nvarchar(500) 
set @opfile = N'C:\Respaldos\respaldo_' + CONVERT(varchar(255), @bid) + '.bak'
BACKUP DATABASE [mbp] TO  DISK = @opfile WITH NOFORMAT, NOINIT,  NAME = N'mbp-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO