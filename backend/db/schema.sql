CREATE TABLE IF NOT EXISTS coins (
	id							VARCHAR(20) not NULL PRIMARY KEY,
	name						VARCHAR(50),
	image_thumb					TEXT,
	symbol						TEXT,
	homepage 					TEXT,
	blockchain_site				TEXT,
	categories					TEXT,
	market_cap_rank				INTEGER,
	market_cap_usd				REAL,
	fully_diluted_valuation_usd REAL,
	circulating_supply			REAL,
	total_supply 				REAL,
	max_supply					REAL,
	current_price				REAL,
	total_value_locked 			REAL,
	price_change_percentage_24h REAL,
	price_change_percentage_7d  REAL,
	price_change_percentage_30d REAL,
	price_change_percentage_1y 	REAL,
	ath_change_percentage		REAL,
	total_volume 				REAL,
	description					TEXT,
	genesis_date				TEXT,
	hashing_algorithm			TEXT,
	coingecko_score 			REAL,
	developer_score 			REAL,
	community_score 			REAL,
	liquidity_score 			REAL,
	public_interest_score 		REAL,
	timestamp 					DATE DEFAULT (datetime('now','localtime'))
);
