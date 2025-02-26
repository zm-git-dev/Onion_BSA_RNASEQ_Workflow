#!/bin/sh
echo "identify indels in mpileup"
perl /software/x86_64/popoolation2/indel_filtering/identify-indel-regions.pl --input <(bzip2 -dc ../25.mpileup/Bolt_Non_pop.mpileup.bz2) --output indel-regions.gtf --min-count 3 --indel-window 5
perl /software/x86_64/popoolation2/indel_filtering/filter-sync-by-gtf.pl--gtf indel-regions.gtf --output filtered.sync --input <(bzip2 -dc ../25.mpileup/Bolt_Non_pop.mpileup.bz2 ); bzip2 -f filtered.sync
