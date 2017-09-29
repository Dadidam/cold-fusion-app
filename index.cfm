<cfinclude template="header.cfm">

<!--- Create variable --->
<cfset user="Tanya">

<!--- Create variable if it doesn't already exist --->
<cfparam name="user" default="Nicole">
<cfparam name="message" default="Welcome to my website on ColdFusion cfinclude usage!">

<cfoutput>
    <!--- Check if variable was defined --->
    <cfif IsDefined("user")>
        <p>Hello, #user#!</p>
    <cfelse>
        <p>What's up, dude?</p>
    </cfif>
    <p>#message#</p>
</cfoutput>

<cfinclude template="footer.cfm">