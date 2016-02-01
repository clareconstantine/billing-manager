== README

This is a coding challenge for Placements.io, representing about 4 hours of coding.

Info:

* Ruby 2.2.3
* Rails 4.2.4
* No extra gems or other tools needed
* test/fixtures/line_items.yml contains fixtures - not the entire dataset since I didn't have a quick way to convert it into properly formatted YAML
* One test, which I used to verify my fixtures were loading properly - otherwise I manually tested as I went along.


Usage:

* To see an invoice of all line items across campaigns, visit billing#index
* To see an invoice for a specific campaign, click the campaign name in the master invoice's table or visit billing#index/:campaign_id
* To sort by a column, click column name on any invoice
* Subtotals displayed in last column of invoice
* Invoice grand totals displayed at top of invoice and in last row of invoice table


Features:


* The user should be able to see each line-item's billable amount (sub-total = actuals + adjustments)

When viewing the invoice for all items or a specific campaign, the final table column displays the billable amount. This feature is pretty simple, and fits in logically with the table structure of the invoice.


* The user should be able to see sub-totals grouped by campaign (line-items grouped by their parent campaign)

There are two ways to do this: sorting the master invoice by campaign or clicking on the campaign whose invoice you want to view. I wanted to do this feature so the app would feel like it had more than one page, and you can get a slightly different view of the data.


* The user should be able to see the invoice grand-total (sum of each line-item's billable amount)

The grand total of an invoice is displayed at the top of the invoice as well as in the last row of the table - both useful and logical places. This one was also straightforward to implement - I intentionally don't make another database call, but I do walk through my list of items to calculate it each time it is used.


* The user should be able to sort by columns

Clicking the column header sorts the invoice by that column. This was the feature I was most excited about working on, because I feel like it really takes the app from just a static page to something more interactive. And it makes it significantly more useful, both for looking at min and max in the $$ columns, and for locating a specific item of campaign; since I haven't implemented search/filtering, this is a reasonable alternative for many use cases.


* Half points: The user should be able browse through the line-item data as either a list or table

I chose to display the data in one large table - I didn't take on the task of pagination or any particularly performant version of infinite scrolling. This is definitely not the best option for large data sets, but it was not the area where I wanted to focus most of my time.