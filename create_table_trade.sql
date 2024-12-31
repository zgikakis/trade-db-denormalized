CREATE TABLE IF NOT EXISTS trade (
    	hs_code VARCHAR(20),
	hs_sdesc VARCHAR(264),
	hs_ldesc VARCHAR(264),
	cty_code VARCHAR(10),
	cty_name VARCHAR(264),
	val_mo BIGINT,
	qy_mo BIGINT,
	val_ytd BIGINT,
	qy_ytd BIGINT,
    	unit_qy VARCHAR(20),
	direction VARCHAR(20),
    	year INT,
	month INT,
	id VARCHAR(50) PRIMARY KEY);


-- Add comments to the table and columns
COMMENT ON TABLE trade IS 'trade table to store trade data from census.gov international trade data api.';
COMMENT ON COLUMN trade.hs_code IS '10 digit HS code';
COMMENT ON COLUMN trade.hs_sdesc IS 'Short description of commodity associated with HS code';
COMMENT ON COLUMN trade.hs_ldesc IS 'Long description of commodity associated with HS code';
COMMENT ON COLUMN trade.cty_code IS 'Country code, using VARCHAR to allow alphanumeric codes';
COMMENT ON COLUMN trade.cty_name IS 'Country name, using VARCHAR to accommodate various country names';
COMMENT ON COLUMN trade.val_mo IS 'Value of trade for specified month and year';
COMMENT ON COLUMN trade.qy_mo IS 'Quantity of trade for specified month and year';
COMMENT ON COLUMN trade.val_ytd IS 'Year to date value of trade for specified YYYY-MM';
COMMENT ON COLUMN trade.qy_ytd IS 'Year to date quantity of trade for specified YYYY-MM';
COMMENT ON COLUMN trade.unit_qy IS 'Quantity unit eg: KG';
COMMENT ON COLUMN trade.direction IS 'Direction of the trade (imports_genral/imports_consumption/exports)';
COMMENT ON COLUMN trade.year IS 'Year';
COMMENT ON COLUMN trade.month IS 'Month';
COMMENT ON COLUMN trade.id IS 'Primary key for trade table composed of YYYY_MO_ctycode_hscode_direction';
