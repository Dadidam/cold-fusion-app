<cfquery name="usersList" datasource="hurd-dev" maxrows="20">
    SELECT * FROM tblUser
    WHERE Company IS NOT NULL
</cfquery>

<cfoutput>
    <cfloop query="usersList">
        #usersList.First_Name# #usersList.Last_Name#<br/>
    </cfloop>
</cfoutput>