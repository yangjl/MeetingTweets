t search all -ldn 3000 'PAGXXIII' | cat - data/pag2015.txt | sort | uniq | grep -v ^ID > data/pag2015.txt
