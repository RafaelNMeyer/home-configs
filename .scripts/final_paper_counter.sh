#!/bin/bash

actual_date=$(date +%Y%m%d)
actual_date_seconds=$(date --date=$actual_date +%s)

recalculate_date=$(date --date="20250131" +%Y%m%d) # 31/01/2025
recalculate_date_seconds=$(date --date=$recalculate_date +%s)

impl_date=$(date --date="20250328" +%Y%m%d) # 28/03/2025
impl_date_seconds=$(date --date=$impl_date +%s)

write_impl_date=$(date --date="20250430" +%Y%m%d) # 30/04/2025
write_impl_date_seconds=$(date --date=$write_impl_date +%s)

review_date=$(date --date="20250530" +%Y%m%d) #  30/05/2025
review_date_seconds=$(date --date=$review_date +%s)

info=""
deadline=""

if [[ "$actual_date_seconds" -le "$recalculate_date_seconds" ]] ; 
then
	info="Recalculate"
	deadline=$recalculate_date
elif [[ "$actual_date_seconds" -le "$impl_date_seconds" ]] ; 
then
	info="Implementation"
	deadline=$impl_date
elif [[ "$actual_date_seconds" -le "$write_impl_date_seconds" ]] ; 
then
	info="Write Implementation"
	deadline=$write_impl_date
elif [[ "$actual_date_seconds" -le "$review_date_seconds" ]] ; 
then
	info="Review"
	deadline=$review_date
fi

days_left=$(./day_counter.sh $deadline)

echo "$info@$days_left"
