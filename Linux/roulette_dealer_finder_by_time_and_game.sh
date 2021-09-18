#!/bin/bash
find ~ -type f -exec grep "$$$$_Dealer_scle" '{}' \; -print | grep "$$:00:00 AM" ~/Lucky_Duck_Investigations/Dealer_Schedules_$$$$/$$$$_Dealer_schedule | awk -F ' ' '{print $1, $$, $$, $$}'
