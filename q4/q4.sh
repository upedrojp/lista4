#!/bin/bash

cat $1 | sed -E 's/([0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3})/**!!CENSU--RADO!!**/g'

