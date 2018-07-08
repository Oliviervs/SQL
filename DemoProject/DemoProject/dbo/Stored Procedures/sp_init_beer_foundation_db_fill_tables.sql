
-- =============================================
-- Author:		Van Steenlandt Olivier
-- Create date: 2018-07-08
-- Description:	Initialize Database
-- =============================================
CREATE PROCEDURE [dbo].[sp_init_beer_foundation_db_fill_tables]
	-- Add the parameters for the stored procedure here

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO dbo.Supplier(SupplierName)
	VALUES	('''t Drankorgel'),
			('''t Hofbrouwerijke'),
			('''t Verzet'),
			('3 Fonteinen'),
			('4Pajot'),
			('Abbaye des Rocs'),
			('Abbaye du Val-Dieu'),
			('Abbaye Notre-Dame d''Orval'),
			('Abbaye Notre-Dame de Saint-Remy'),
			('Adbij der trappisten van Westmalle'),
			('Achouffe'),
			('Affligem Abdij'),
			('Alfred'),
			('Alken-Maes'),
			('Alvine'),
			('Amai'),
			('Amburon Craft Brewery'),
			('Anders!'),
			('Anheuser-Busch Inbev'),
			('Artisanale La Frasnoise'),
			('Augrenoise'),
			('Authentique Brasserie'),
			('B.G.V. sprl'),
			('Bavik'),
			('Beer & Fashion'),
			('Belfort Beer'),
			('Belgian Brew Brothers'),
			('Belgoo beer'),
			('Belle-Vue NV/SA'),
			('Bellevaux'),
			('Bertinchamps'),
			('Better Beer Brewers'),
			('Bier en Karakter'),
			('Bieren Cabardouche'),
			('Bieren Den Haene'),
			('Bieren Pirlot'),
			('Bieren Van Begeerte'),
			('Bières de Chimay SA'),
			('Biermaekers'),
			('Biosenza'),
			('BIVO'),
			('Bockor'),
			('Boelens'),
			('Bokmolenhoeve'),
			('BOM Brewery'),
			('Boon'),
			('Bossuwé Brewing'),
			('Bosteels')

END