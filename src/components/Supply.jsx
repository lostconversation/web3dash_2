import React from "react";
import Row from "./Row";
import { useOutletContext } from "react-router-dom";
import IconAndCurrencyIdCell from "./IconAndCurrencyIdCell";
import { formatLongNumbers } from "../util/helpers";

import styles from "./Supply.module.css";

function Supply() {
  const { coinProperties } = useOutletContext();

  const tableData = [
    {
      id: "marketCapRank",
      label: "#",
      render: (obj) => obj.market_data.market_cap_rank,
    },
    {
      id: "icon",
      label: "Coin",
      render: (obj) => <IconAndCurrencyIdCell obj={obj} />,
    },
    {
      id: "marketCapUSD",
      label: "Market Cap",
      render: (obj) => `$${formatLongNumbers(obj.market_data.market_cap.usd)}`,
    },
    {
      id: "FDMarketCap",
      label: "FD Market Cap",
      render: (obj) =>
        `$${formatLongNumbers(obj.market_data.fully_diluted_valuation.usd)}`,
    },
    {
      id: "circulatingSupply",
      label: "Circ. Supply",
      render: (obj) => formatLongNumbers(obj.market_data.circulating_supply),
    },
    {
      id: "totalSupply",
      label: "Total Supply",
      render: (obj) => formatLongNumbers(obj.market_data.total_supply),
    },
    {
      id: "maxSupply",
      label: "Max Supply",
      render: (obj) =>
        formatLongNumbers(Math.round(obj.market_data.max_supply)),
    },
  ];

  return (
    <div className={styles.container}>
      <div className={`${styles.row} ${styles.header}`}>
        <Row header tableData={tableData} />
      </div>
      {Object.entries(coinProperties).map(([id, coin]) => (
        <div key={id} className={`${styles.row} ${styles.data}`}>
          <Row tableData={tableData} row={coin} />
        </div>
      ))}
    </div>
  );
}

export default Supply;
