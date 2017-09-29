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

    <!--- Not equal --->
    <cfif user neq "Tanya">
        So sad.
    <cfelse>
        <p><b>Tanya rules!</b></p>
    </cfif>
    
    <cfset count = 5>
    <!--- Less than --->
    <cfif count lt 10>
        <p>
            <!--- Loop with our count variable --->
            <cfloop from="1" to="#count#" index="i">
                #i#
            </cfloop>
        </p>
    </cfif>

    <!--- Conditional loop --->
    <cfset equalToTen = false>
    <cfloop condition="equalToTen eq false">
        Is it ten? No, not yet. Let's continue...<br />
        <cfif RandRange(1,10) eq 10>
            <cfset equalToTen = true>
        </cfif>
    </cfloop>
    Is it ten? <b>Yes, thanks, God!</b><br />

    <p>List loop example:</p>
    <ul>
        <!--- List loop --->
        <cfloop list="ColdFusion,HTMl;XML,React;MSSQL" index="ListItem" delimiters=",;">
            <li>#ListItem#</li>
        </cfloop>
    </ul>
</cfoutput>

<cfinclude template="footer.cfm">