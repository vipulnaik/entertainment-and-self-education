MYSQL_ARGS=
DATABASE=ese

.PHONY: init
init:
	mysql $(MYSQL_ARGS) -e "create database if not exists $(DATABASE);"

.PHONY: reset
reset:
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists ongoing_consumption;"
	mysql $(MYSQL_ARGS) $(DATABASE) -e "drop table if exists consumption;"

.PHONY: read
read:
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/consumption.sql
	mysql $(MYSQL_ARGS) $(DATABASE) < sql/ongoing_consumption.sql

.PHONY: fetch_table_sorting
fetch_table_sorting:
	curl -Lo access-portal/jquery-3.7.1.min.js \
		'https://code.jquery.com/jquery-3.7.1.min.js'
	curl -Lo access-portal/jquery.tablesorter.js \
		'https://github.com/christianbach/tablesorter/raw/master/jquery.tablesorter.js'
	curl -Lo access-portal/style.css \
		'https://raw.githubusercontent.com/christianbach/tablesorter/master/themes/blue/style.css'
	curl -Lo access-portal/bg.gif \
		'https://github.com/christianbach/tablesorter/raw/master/themes/blue/bg.gif'
	curl -Lo access-portal/asc.gif \
		'https://github.com/christianbach/tablesorter/raw/master/themes/blue/asc.gif'
	curl -Lo access-portal/desc.gif \
		'https://github.com/christianbach/tablesorter/raw/master/themes/blue/desc.gif'

.PHONY: clean_table_sorting
clean_table_sorting:
	rm -f access-portal/jquery-*.min.js
	rm -f access-portal/jquery.tablesorter.js
	rm -f access-portal/style.css
	rm -f access-portal/bg.gif
	rm -f access-portal/asc.gif
	rm -f access-portal/desc.gif

	.PHONY: fetch_anchorjs
fetch_anchorjs:
	curl -Lo access-portal/anchor.min.js \
		'https://raw.githubusercontent.com/bryanbraun/anchorjs/master/anchor.min.js'

.PHONY: clean_anchorjs
clean_anchorjs:
	rm -f access-portal/anchor.min.js
