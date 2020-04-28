Structure of database used:
dictionary
	entities
		id
		word
		language
		description
	emojis
		unicode
		short_name
		description

After creating the mentioned database structure, execute the queries in emojis.sql and entries.sql in phpmyaadmin to fill up the database. And then run the application, preferably using Netbeans IDE.
Try word search with example words: 
	lol
	troll
	pwned

Admin Panel:
	Username: admin
	Password: Admin123

Including libraries: 
	Add MySQL JDBC driver from list of libraries in Netbeans.
	Add gson-2.2.jar provided in the project's root directiory.
