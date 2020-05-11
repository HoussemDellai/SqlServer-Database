/* SCRIPT: MASTER.sql */


-- This is the main caller for each script
SET NOCOUNT ON
GO

:On Error exit

:r '$(Build.ArtifactStagingDirectory)\Product.sql'
:r '$'(Build.ArtifactStagingDirectory)\Inventory.sql'

PRINT 'DATABASE CREATE IS COMPLETE'
GO