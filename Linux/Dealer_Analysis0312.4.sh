#!/bin/bash
grep "08:00:00 PM" 0312_Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}'

