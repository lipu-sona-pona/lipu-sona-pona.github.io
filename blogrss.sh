#!/bin/bash

DIRECTORY="pages/blog"

FILES=`ls $DIRECTORY/*.md -1` 

echo -n > blogdates.txt
for f in $FILES; do
	MTIME=`git log -n 1 --pretty=format:%at $f`
	MTIME=${MTIME-9999999999}
	printf "%d\t%s\n" $MTIME $f >> blogdates.txt
done

# resort by last git commit time
FILES=`cat blogdates.txt | sort -nr | cut -f 2-`

cat << RSSHEADER
<?xml version="1.0" encoding=\"UTF-8\" ?>
<rss version="2.0">
<channel>
<title>rnd's blog</title>
<link>https://rnd.neocities.org/blog</link>
<description>The RSS feed of articles published on the blog thingy</description>
RSSHEADER

for f in $FILES; do
	MTIME=`git log -n 1 --pretty=format:%at $f`

	TITLE=`head -n 1 $f`
	TITLE=${TITLE#"% "}

	OUTPAGE=${f%.md}.html
	OUTPAGE=/${OUTPAGE#pages/}


	echo "<item>"
	echo "<title>$TITLE</title>"
	echo "<link>$OUTPAGE</link>"
	
	if [ $MTIME ]; then
		echo "<pubdate>`date -R -u -d \"@$MTIME\"`</pubdate>"
	fi
	echo "</item>"
done

cat << RSSFOOTER
</channel>
RSSFOOTER
