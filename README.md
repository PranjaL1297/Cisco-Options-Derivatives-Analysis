# 📊 Cisco Options Derivatives Analysis – FIN42020 (UCD)

This project applies derivatives pricing and risk management techniques to assess options on **Cisco Systems Inc. (CSCO)**. We explored implied volatility, sensitivity analysis, pricing discrepancies under Black-Scholes, GARCH-based volatility forecasting, volatility trading through straddle strategies, and delta hedging simulations.

Our objective was to practically apply the theoretical models studied in the Derivative Securities module to real-market data using Excel and MATLAB.

---

## 📌 Project Objectives

The analysis addressed five key problems:

1. **Implied Volatility Estimation**
   - Used Excel Solver and the Black-Scholes model to compute implied volatilities for at-the-money Cisco call and put options.

2. **Sensitivity Analysis**
   - Evaluated option pricing sensitivities (Vega, Theta, Rho) to key parameters: volatility (σ), time to maturity (T), and risk-free interest rate (r).

3. **Option Mispricing**
   - Compared theoretical Black-Scholes prices with actual market prices across different spot prices to identify mispricing.

4. **Volatility Forecasting & Straddle Trading**
   - Built a GARCH(1,1) model to forecast volatility. Designed a long straddle strategy to profit from volatility spikes around earnings announcements.

5. **Delta Hedging Simulation**
   - Simulated delta hedging under both implied and forecast volatilities. Tracked P&L performance across hedging paths.

---

## 🔧 Tasks Performed

- 📥 Collected options data, stock prices, risk-free rates, and dividend information
- 🧮 Back-solved for implied volatility using Black-Scholes
- 📊 Performed sensitivity analysis with Vega, Theta, and Rho charts
- 💡 Built and evaluated a long straddle strategy using forecast volatility
- ⚖️ Simulated dynamic delta hedging using MATLAB under multiple volatility assumptions
- 📈 Compared hedging effectiveness via final P&L results

---

## 👨‍💻 My Contributions

- Gathered Cisco options chain and market data from Yahoo Finance and CNBC
- Computed implied volatilities using Excel and Solver
- Led the volatility strategy design (long straddle) and profit evaluation
- Created Vega, Theta, and Rho sensitivity models in Excel
- Assisted with MATLAB-based delta hedging simulation and P&L interpretation
- Compiled and refined the final report sections related to equity and combined risk portfolios

---

## 📚 Key Learnings

- Developed hands-on expertise in **option pricing** using Black-Scholes
- Applied **sensitivity analysis** to interpret real-world option behavior
- Implemented **GARCH modeling** to forecast volatility
- Executed a basic **volatility trading strategy** and evaluated its payoff structure
- Simulated **delta hedging** in a dynamic setting and analyzed hedge effectiveness under varying volatility scenarios

---

## 🛠 Tools & Resources

- **Microsoft Excel** – Financial modeling, Solver, visualization
- **MATLAB** – Delta hedging simulation and scenario testing
- **Yahoo Finance, CNBC, Federal Reserve** – Market data sources
- **Theory Sources** – John Hull’s *Options, Futures, and Other Derivatives*, lecture materials from Dr. Michael McGee (UCD)

---

## 🔍 Summary of Results

- The long straddle yielded a **net profit of $0.67**, capitalizing on post-earnings volatility.
- Delta hedging under implied and forecast volatility both resulted in **slight losses** (~-$1.80), due to price jumps and discrete hedging limitations.
- Black-Scholes model assumptions aligned reasonably with market observations, although sensitivity to volatility highlights the importance of model calibration.

---

## 📁 Repository Contents

- `Risk_Modelling(Group-25)_Final.xlsx` – Excel models and Solver sheets
- `Cisco_Straddle_MATLAB.m` – MATLAB simulation for delta hedging
- `Presentation.pdf` – Summary slides of the group’s findings
- `Report.pdf` – Full analysis with methodology, data, and results

---

## 🧠 Future Improvements

- Explore volatility surface fitting for more precise implied volatility estimation
- Introduce stochastic volatility and jump-diffusion models
- Perform real-time delta hedging with higher frequency data

---

> 🚀 **This project gave me confidence in applying theoretical models to real-world data, strengthened my quantitative finance toolkit, and honed my ability to communicate complex risk insights clearly.**
