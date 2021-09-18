#!/bin/bash
grep "11:00:00 PM"* Dealer_schedule | awk -F ' ' '{print $1, $2, $5, $6}'
