<cfoutput><cfset fwSettings = Event.getValue("fwSettings")><!--- HELPBOX ---><div id="helpbox" class="helpbox" style="display: none">	<div class="helpbox_header">	  <div class="helpbox_header_title"><img src="images/icons/icon_guide_help.gif" align="absmiddle"> Help Tip</div>	</div>		<div class="helpbox_message" >	  <ul>	  	<li>In this screen you can see all of the current framework settings that can be found in the settings.xml file. 	  	You have the option to use this dashboard to modify some of these settings or you can actually modify the 	  	settings.xml file (Do at your own risk!!)</li>	  	<li>The log file settings will help you set all the necessary log facility parameters</li>	  	<li>File Encoding settings are used when using the fileutilities plugin and the file methods.</li>	  	<li>You can choose to change your Dashboard password to something you like.</li>	  	<li>You can also set your proxy settings, if you are using one, in order to use the auto-update feature.</li>	  </ul>	</div>	<div align="right" style="margin-right:5px;">	<input type="button" value="Close" onClick="helpToggle()" style="font-size:9px">	</div></div><div class="maincontentbox">		<div class="contentboxes_header">		<div class="contentboxes_title"><img src="images/icons/settings_27.gif" align="absmiddle" />&nbsp; General Settings</div>	</div>		<div class="contentboxes">		<p>Below you will see all of the framework settings defined in the settings.xml file.</p>	<br>		<div style="margin: 5px">	    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tablelisting">	      	      <tr>			<td class="sort">Setting</th>			<th>Value</th>		  </tr>		  		  <cfloop from="1" to="#listLen(fwSettings.columnList)#" index="i">            <tr <cfif i mod 2 eq 0>bgcolor="##f5f5f5"</cfif>>             <td width="20%" align="right" valign="top"><strong>#listgetAt(fwSettings.columnList,i)#</strong></td>            <td valign="top" style="border-left:1px solid ##ddd">            #replace(fwsettings[listgetAt(fwSettings.columnList,i)][1], ",", ", ","all")#          	</td>          </tr>          </cfloop>        </table>		</div>	</div>	</div></cfoutput>