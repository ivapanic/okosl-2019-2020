#!/bin/bash
grep [[:blank:]] /usr/include/stdio.h | wc -l
grep ^"extern int" /usr/include/stdio.h | wc -l

