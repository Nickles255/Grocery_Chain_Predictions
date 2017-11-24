 D# Grocery Chain Competition

 Purpose is to predict unit sales for items sold at various store locations.


-- to break up training file by years use grep 2013- train.csv > 2013.csv

Files Provided:

 train.csv; 
		Year      Rows
		2014      22271602
		2015      27864644
		2016      35229871
		2017      23808261
  columns
     id:  position in file starting with 0.
     date: date in format mm/dd/yyyy 
	 store_nbr: store number item was located
	 item_nbr: unique number of item solds
	 unit_sales: can be integer or float depending if it is unit sales or by weight. 
	             Negative numbers indicates more refunds than sales.

     onpromotion: indicates whether item was on promotion for specified date.

	 If items had 0 unit_sales for the day then they are excluded from the dataset.
	 some items in train are not in test data set.

test.csv; 3370464 records; 
  columns
     id: position in file starting with 0.
     date: date in format mm/dd/yyyy 
	 store_nbr: store number item was located
	 item_nbr: unique number of item solds
     onpromotion: indicates whether item was on promotion for specified date.

sample_submision.csv; 3370464 records;    
  columns
     id: position in file starting with 0.
	 unit_sales: can be integer or float depending if it is unit sales or by weight. 
	             Negative numbers indicates more refunds than sales.

stores.csv; 54 records; 
  columns
	 store_nbr: store number item was located
	 city: city store is located.
     state: state store is located.
	 type: identified types of stores.
	 cluster: a grouping of similar stores.

items.csv; 4100 records;
  columns
	 item_nbr: unique number of item solds
     family: item descriptive family type
	 class: item classification
	 perishable: boolean 0 = no, 1 = yes

transactions.csv; 83488 records;
  columns
     date: date in format mm/dd/yyyy 
	 store_nbr: store number
	 transactions: count of sales transactions

oil.csv; 4100 records;
  columns
     date: date in format mm/dd/yyyy 
	 dcoilwtico: daily oil prices
  
holidays_events.csv; 4100 records;
  columns
     date: date in format mm/dd/yyyy 
	 type: type of date
	       Hoilday - are actually holidays.
		   Transfer - are holidays which occur on the day but government has moved the day off the original holiday day. Look for Traslado in description also
		   			if the column transferred = True then the day is a regular work day and another day has been designated a day off.
			Additional - are days added to a regular holiday
			Bridge - are extra days added to holiday they are related to Work Day.
			Work Day - are days not normally scheduled for work (Saturday) :and are meant to payback Bridge days.

Additional Notes:
	public employees are paid 15th and last day of every month.
	7.8 earthquake on 2016-04-16. relief effort (donations, etc.) could have impacted sales for a few weekse
