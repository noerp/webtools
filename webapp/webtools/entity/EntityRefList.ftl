<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<#assign docLangAttr = locale.toString()?replace("_", "-")>
<#assign langDir = "ltr">
<#if "ar.iw"?contains(docLangAttr?substring(0, 2))>
    <#assign langDir = "rtl">
</#if>
<html lang="${docLangAttr}" dir="${langDir}" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>${uiLabelMap.WebtoolsEntityReference}</title>
        <style type="text/css">
           body, textarea, input, select {font-family: Helvetica, sans-serif; background-color: #ffffff; text-decoration: none;}
          .section-header {font-size: 10pt; font-weight: bold; color: #000000; padding-bottom: 10;}
          .listtext {font-size: 10pt; font-weight: bold; color: blue;}
          .listtext a {text-decoration: none;}
          .listtext a:hover {color:red; text-decoration: underline;}
        </style>
    </head>
    <body>
        <div class='listtext'>
            <#if !forstatic>
                <a href="<@noerpUrl>main</@noerpUrl>" target='main'>${uiLabelMap.WebtoolsPopupWebToolsMain}</a><br/>
                <a href="<@noerpUrl>view/entityref_main</@noerpUrl>" target="entityFrame">${uiLabelMap.WebtoolsEntityReferenceMainPage}</a><br/>
                <a href="<@noerpUrl>view/checkdb</@noerpUrl>" target="entityFrame">${uiLabelMap.WebtoolsCheckUpdateDatabase}</a>
                <hr />
                <#-- want to leave these out because they are only working so-so, and cause people more problems that they solve, IMHO
                <a href="<@noerpUrl>ModelWriter</@noerpUrl>" target='_blank'>Generate Entity Model XML (all in one)</a><br/>
                <a href="<@noerpUrl>ModelWriter?savetofile=true</@noerpUrl>" target='_blank'>Save Entity Model XML to Files</a><br/>
                -->
                <#-- this is not working now anyway...
                <a href="<@noerpUrl>ModelGroupWriter</@noerpUrl>" target='_blank'>Generate Entity Group XML</a><br/>
                <a href="<@noerpUrl>ModelGroupWriter?savetofile=true</@noerpUrl>" target='_blank'>Save Entity Group XML to File</a><br/>
                -->
                <a href="<@noerpUrl>view/ModelInduceFromDb</@noerpUrl>" target='_blank'>${uiLabelMap.WebtoolsInduceModelXMLFromDatabase}</a><br/>
            </#if>
            <#if packageNames?has_content>
                <hr />
                <div class="section-header">${uiLabelMap.WebtoolsEntityPackages}</div>
                <#list packageNames as packageName>
                    <#if forstatic>
                        <a href="entityref_main#${packageName}" target="entityFrame">${packageName}</a><br />
                    <#else>
                        <a href="<@noerpUrl>view/entityref_main#${packageName}</@noerpUrl>" target="entityFrame">${packageName}</a><br />
                    </#if>
                </#list>
            </#if>
            <#if entitiesList?has_content>
                <hr />
                <div class="section-header">${uiLabelMap.WebtoolsEntitiesAlpha}</div>
                <#list entitiesList as entity>
                    <#if forstatic>
                        <a href="<@noerpUrl>view/entityref_main#${entity.entityName}</@noerpUrl>" target="entityFrame">${entity.entityName}</a>
                    <#else>
                        <a href="<@noerpUrl>view/entityref_main#${entity.entityName}${entity.url!}</@noerpUrl>" target="entityFrame">${entity.entityName}</a>
                    </#if>
                    <br />
                </#list>
            </#if>
        </div>
    </body>
</html>
