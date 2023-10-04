CREATE TABLE IF NOT EXISTS coins (
    market_cap_rank							INTEGER PRIMARY KEY,
    id										VARCHAR(20) NOT NULL,
    symbol									TEXT,
    name									VARCHAR(50),
    image	      							TEXT,
    current_price							REAL,
    market_cap  							INTEGER,
    fully_diluted_valuation     			REAL,
    total_volume 							REAL,
    high_24h                 			    REAL,
    low_24h                  			    REAL,
    price_change_24h            			REAL,
    price_change_percentage_24h 			REAL,
    market_cap_change_24h       			REAL,
    market_cap_change_percentage_24h 		REAL,
    circulating_supply						REAL,
    total_supply 							REAL,
    max_supply								REAL,
    ath                         			REAL,
    ath_change_percentage       			REAL,
    ath_date                    			TEXT,
    atl                         			REAL,
    atl_change_percentage       			REAL,
    atl_date                    			TEXT,
    -- roi                         			REAL,
    last_updated                			TEXT,
    price_change_percentage_1h_in_currency  REAL,
    price_change_percentage_24h_in_currency REAL,
    price_change_percentage_7d_in_currency  REAL,
    price_change_percentage_14d_in_currency REAL,
    price_change_percentage_30d_in_currency REAL,
    price_change_percentage_200d_in_currency REAL,
    price_change_percentage_1y_in_currency 	REAL,
    ath_change_percentage_in_currency		REAL,
    description					            TEXT,
    total_value_locked 			            REAL,
    genesis_date				            TEXT,
    hashing_algorithm			            TEXT,
    coingecko_score 			            REAL,
    developer_score 			            REAL,
    community_score 			            REAL,
    liquidity_score 			            REAL,
    public_interest_score 		            REAL,
    homepage 					            TEXT,
    blockchain_site				            TEXT,
    categories					            TEXT,
    updated_at                              TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tracking (
    id                                      INTEGER PRIMARY KEY,
    updated_at 					            TEXT NOT NULL
)
