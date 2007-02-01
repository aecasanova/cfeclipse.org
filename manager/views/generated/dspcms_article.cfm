    
<cfset listEvent = viewstate.getValue("myself") & viewstate.getValue("xe.list")  />
<cfset commitEvent = viewstate.getValue("myself") & viewstate.getValue("xe.commit") & "&cms_articleId=" & urlEncodedFormat(viewstate.getValue("cms_articleId")) />
<cfset cms_articleRecord = viewstate.getValue("cms_articleRecord") />
<cfset validation = viewstate.getValue("cms_articleValidation", structNew()) />

<cfoutput>
<div id="breadcrumb"><a href="#listEvent#">Cms_articles</a> / View Cms_article</div>
</cfoutput>
<br />
  
<cfform class="edit">
    
<fieldset>
    

        <div class="formfield">
          <cfoutput>
	        <label for="art_title"><b>Art_title:</b></label>
	        <span class="input">#cms_articleRecord.getart_title()#</span>
	        </cfoutput>
        </div>
    
        <div class="formfield">
          <cfoutput>
	        <label for="art_description"><b>Art_description:</b></label>
	        <span class="input">#cms_articleRecord.getart_description()#</span>
	        </cfoutput>
        </div>
    
        <div class="formfield">
          <cfoutput>
	        <label for="art_content"><b>Art_content:</b></label>
	        <span class="input">#cms_articleRecord.getart_content()#</span>
	        </cfoutput>
        </div>
    
        <div class="formfield">
          <cfoutput>
	        <label for="art_img"><b>Art_img:</b></label>
	        <span class="input">#cms_articleRecord.getart_img()#</span>
	        </cfoutput>
        </div>
    
        <div class="formfield">
          <cfoutput>
	        <label for="cms_article_type"><b>Cms_article_type:</b>
	        </label>
					<cfset targetObject = cms_articleRecord.getcms_article_type() />
	        <div>
	       		#targetObject.gettype_name()#
	        </div>
	        </cfoutput>
        </div>
      
        <div class="formfield">
          <cfoutput>
	        <label for="cms_user"><b>Cms_user:</b>
	        </label>
					<cfset targetObject = cms_articleRecord.getcms_user() />
	        <div>
	       		#targetObject.getusername()#
	        </div>
	        </cfoutput>
        </div>
      
        <div class="formfield">
          <cfoutput>
	        <label for="bPublished"><b>B Published:</b></label>
	        <span class="input">#cms_articleRecord.getbPublished()#</span>
	        </cfoutput>
        </div>
    
        <div class="formfield">
          <cfoutput>
	        <label for="cms_page"><b>Cms_page:</b>
	        </label>
					<cfset targetObject = cms_articleRecord.getcms_page() />
	        <div>
	       		#targetObject.getpagename()#
	        </div>
	        </cfoutput>
        </div>
      
</fieldset>
</div>
</cfform>
    
	
