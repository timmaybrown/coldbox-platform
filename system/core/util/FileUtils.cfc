<!-----------------------------------------------------------------------
    <cffunction name="directoryCreate" output="false" access="public" returntype="void" hint="Create a new directory">
    	<cfargument name="path" type="string"  required="true"  default="" hint="The full path to remove"/>
    </cffunction>

    <cffunction name="directoryRemove" output="false" access="public" returntype="void" hint="Remove an entire directory">
    	<cfargument name="path" type="string" required="true" default="" hint="The full path to remove"/>
    </cffunction>
