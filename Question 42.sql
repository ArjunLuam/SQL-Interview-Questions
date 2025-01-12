Currently, you are analyzing the highest and lowest open prices for each FAANG stock by month over the years.
For each FAANG stock, display the ticker symbol, the month and year ('mon-yy') with the corresponding highest and lowest open prices (refer to the example output format). Ensure that the results are sorted by ticker symbol.

DDL & DML QUERY:
CREATE TABLE stock_prices (
 trade_date DATE,
 ticker VARCHAR(10),
 open DECIMAL(10, 2),
 high DECIMAL(10, 2),
 low DECIMAL(10, 2),
 close DECIMAL(10, 2),
 PRIMARY KEY (trade_date, ticker)
);
INSERT INTO stock_prices (trade_date, ticker, open, high, low, close)
VALUES 
('2023-08-31', 'AAPL', 187.48, 187.84, 189.12, 187.84),
('2023-07-31', 'AAPL', 195.26, 196.06, 196.49, 196.06),
('2023-06-30', 'AAPL', 191.26, 191.63, 194.48, 191.63),
('2023-05-31', 'AAPL', 176.76, 177.33, 179.35, 177.33),
('2023-04-30', 'AAPL', 167.88, 168.49, 169.85, 168.49),
('2023-03-31', 'AAPL', 161.91, 162.44, 165.00, 162.44),

('2023-08-31', 'GOOG', 130.85, 132.92, 127.78, 132.92),
('2023-07-31', 'GOOG', 120.32, 134.07, 115.83, 134.07),
('2023-06-30', 'GOOG', 123.50, 129.55, 116.91, 129.55),
('2023-05-31', 'GOOG', 107.72, 127.05, 104.50, 127.05),
('2023-04-30', 'GOOG', 102.67, 109.63, 102.38, 109.63),
('2023-03-31', 'GOOG', 90.16, 107.51, 89.77, 107.51),

('2023-08-31', 'AMZN', 133.18, 134.80, 132.22, 134.80),
('2023-07-31', 'AMZN', 130.55, 135.28, 129.95, 135.28),
('2023-06-30', 'AMZN', 124.52, 131.56, 122.05, 131.56),
('2023-05-31', 'AMZN', 120.15, 122.51, 112.32, 122.51),
('2023-04-30', 'AMZN', 100.50, 103.52, 105.58, 103.52),
('2023-03-31', 'AMZN', 98.6, 108.32, 108.60, 108.32),

('2023-08-31', 'META', 251.15, 255.31, 250.32, 255.31),
('2023-07-31', 'META', 315.60, 316.70, 312.30, 316.70),
('2023-06-30', 'META', 311.32, 312.25, 300.25, 312.25),
('2023-05-31', 'META', 222.15, 224.12, 212.65, 224.12),
('2023-04-30', 'META', 210.32, 211.25, 199.25, 211.25),
('2023-03-31', 'META', 195.18, 206.72, 196.18, 206.72);








									

	ticker	highest_month	highest_open owest_month	lowest_open

1	GOOG	August -23		130.85			March -23	90.16
2	META	July -23		315.60			March -23	195.18
3	AMZN	August -23		133.18			March -23	98.60
4	AAPL	July -23		195.26			March -23	161.91