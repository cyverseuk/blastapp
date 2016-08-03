#!/bin/bash

makeblastdb -dbtype nucl -in $2 -out $2 1>&2

blastn -query $1 -db $2 -outfmt 6
