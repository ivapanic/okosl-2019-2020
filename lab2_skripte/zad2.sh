#!/bin/bash
ls | grep -E "^c[a-zA-Z]*[0-9]{2}\.[a-zA-Z]+"
ls | egrep "[^f-pF-P]*[0-9]*"
