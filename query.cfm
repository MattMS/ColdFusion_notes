<cfquery datasource="db" name="myquery">
	SELECT * FROM my_table
	WHERE
		my_id = <cfqueryparam cfsqltype="cf_sql_integer" value="#my_id#">
		OR my_num = <cfqueryparam cfsqltype="cf_sql_numeric" value="#my_num#">
		OR title_text = <cfqueryparam cfsqltype="cf_sql_varchar" value="#title#">
		OR tld_text IN (<cfqueryparam cfsqltype="cf_sql_varchar" list="yes" value="com,info,mil,net,org">)
</cfquery>


<cfquery datasource="db">
	INSERT INTO my_table (
		my_id,
		creation_time
	) VALUES (
		(SELECT MAX(t2.my_id) + 1 FROM my_table t2),
		<cfqueryparam cfsqltype="cf_sql_time" value="#createOdbcDateTime(now())#">
	)
</cfquery>


<h2>cfquery attributes</h2>

<dl>
	<dt>maxrows</dt>
	<dd>Count of rows exposed from query. `-1` for all results.</dd>
</dl>


<h2>Links</h2>

<ul>
	<li><a href="http://cfdocs.org/cfquery">cfquery on CFDocs</a></li>
	<li><a href="http://cfdocs.org/cfqueryparam">cfqueryparam on CFDocs</a></li>
</ul>
