CREATE TABLE trade (
    cty_code VARCHAR(10),
    cty_name VARCHAR(264),
    val_mo BIGINT,
    val_ytd BIGINT,
    qy_mo BIGINT,
    qy_ytd BIGINT,
	unit_qy VARCHAR(20),
    hs_code VARCHAR(50),
    com_desc VARCHAR(264),
    direction VARCHAR(20),
	yr INT,
	mnth INT
);

-- Add a primary key constraint on cty_code, hs_code, direction, yr, mnth to uniquely identify each trade record
ALTER TABLE trade ADD PRIMARY KEY (cty_code,hs_code,direction,yr,mnth);

-- Add comments to the table and columns
COMMENT ON TABLE trade IS 'trade table to store trade data from census.gov international trade data api.';
COMMENT ON COLUMN trade.cty_code IS 'Country code, using VARCHAR to allow alphanumeric codes';
COMMENT ON COLUMN trade.cty_name IS 'Country name, using VARCHAR to accommodate various country names';
COMMENT ON COLUMN trade.val_mo IS 'Value of trade for specified month and year';
COMMENT ON COLUMN trade.val_ytd IS 'Year to date value of trade for specified YYYY-MM';
COMMENT ON COLUMN trade.qy_mo IS 'Quantity of trade for specified month and year';
COMMENT ON COLUMN trade.qy_ytd IS 'Year to date quantity of trade for specified YYYY-MM';
COMMENT ON COLUMN trade.unit_qy IS 'Quantity unit eg: KG';
COMMENT ON COLUMN trade.hs_code IS '10 digit HS code';
COMMENT ON COLUMN trade.com_desc IS 'Long description of commodity associated with HS code';
COMMENT ON COLUMN trade.direction IS 'Direction of the trade (import/export)';
COMMENT ON COLUMN trade.yr IS 'Year';
COMMENT ON COLUMN trade.mnth IS 'Month';