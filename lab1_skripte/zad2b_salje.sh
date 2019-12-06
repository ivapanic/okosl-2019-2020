#!/bin/bash
read poruka;
mkfifo ~/pipe1
echo $poruka > ~/pipe1

