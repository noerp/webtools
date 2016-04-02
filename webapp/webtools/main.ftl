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
<div class="screenlet">
  <div class="screenlet-title-bar">
    <ul>
      <li class="h3">${uiLabelMap.WebtoolsMainPage}</li>
      <li class="disabled">${delegator.getDelegatorName()}</li>
    </ul>
    <br class="clear"/>
  </div>
  <div class="screenlet-body">
    <#if !userLogin?has_content>
      <div>${uiLabelMap.WebtoolsForSomethingInteresting}.</div>
      <br />
      <div>${uiLabelMap.WebtoolsNoteAntRunInstall}</div>
      <br />
      <div><a href="<@noerpUrl>checkLogin</@noerpUrl>">${uiLabelMap.CommonLogin}</a></div>
    </#if>
    <#if userLogin?has_content>
      <ul class="webToolList">
        <li><h3>${uiLabelMap.WebtoolsCacheDebugTools}</h3></li>
        <li><a href="<@noerpUrl>FindUtilCache</@noerpUrl>">${uiLabelMap.WebtoolsCacheMaintenance}</a></li>
        <li><a href="<@noerpUrl>LogConfiguration</@noerpUrl>">${uiLabelMap.WebtoolsAdjustDebuggingLevels}</a></li>
        <li><a href="<@noerpUrl>LogView</@noerpUrl>">${uiLabelMap.WebtoolsViewLog}</a></li>
        <li><a href="<@noerpUrl>ViewComponents</@noerpUrl>">${uiLabelMap.WebtoolsViewComponents}</a></li>
        <#if security.hasPermission("ARTIFACT_INFO_VIEW", session)>
          <li><h3>${uiLabelMap.WebtoolsGeneralArtifactInfoTools}</h3></li>
          <li><a href="<@noerpUrl>ViewComponents</@noerpUrl>" target="_blank">${uiLabelMap.WebtoolsArtifactInfo}</a></li>
          <li><a href="<@noerpUrl>entityref</@noerpUrl>" target="_blank">${uiLabelMap.WebtoolsEntityReference} - ${uiLabelMap.WebtoolsEntityReferenceInteractiveVersion}</a></li>
          <li><a href="<@noerpUrl>ServiceList</@noerpUrl>">${uiLabelMap.WebtoolsServiceReference}</a></li>
        </#if>
        <#if security.hasPermission("LABEL_MANAGER_VIEW", session)>
          <li><h3>${uiLabelMap.WebtoolsLabelManager}</h3></li>
          <li><a href="<@noerpUrl>SearchLabels</@noerpUrl>">${uiLabelMap.WebtoolsLabelManager}</a></li>
        </#if>
        <#if security.hasPermission("ENTITY_MAINT", session)>
          <li><h3>${uiLabelMap.WebtoolsEntityEngineTools}</h3></li>
          <li><a href="<@noerpUrl>entitymaint</@noerpUrl>">${uiLabelMap.WebtoolsEntityDataMaintenance}</a></li>
          <li><a href="<@noerpUrl>entityref</@noerpUrl>" target="_blank">${uiLabelMap.WebtoolsEntityReference} - ${uiLabelMap.WebtoolsEntityReferenceInteractiveVersion}</a></li>
          <li><a href="<@noerpUrl>entityref?forstatic=true</@noerpUrl>" target="_blank">${uiLabelMap.WebtoolsEntityReference} - ${uiLabelMap.WebtoolsEntityReferenceStaticVersion}</a></li>
          <li><a href="<@noerpUrl>entityrefReport</@noerpUrl>" target="_blank">${uiLabelMap.WebtoolsEntityReferencePdf}</a></li>
          <li><a href="<@noerpUrl>EntitySQLProcessor</@noerpUrl>">${uiLabelMap.PageTitleEntitySQLProcessor}</a></li>
          <li><a href="<@noerpUrl>EntitySyncStatus</@noerpUrl>">${uiLabelMap.WebtoolsEntitySyncStatus}</a></li>
          <li><a href="<@noerpUrl>view/ModelInduceFromDb</@noerpUrl>" target="_blank">${uiLabelMap.WebtoolsInduceModelXMLFromDatabase}</a></li>
          <li><a href="<@noerpUrl>EntityEoModelBundle</@noerpUrl>">${uiLabelMap.WebtoolsExportEntityEoModelBundle}</a></li>
          <li><a href="<@noerpUrl>view/checkdb</@noerpUrl>">${uiLabelMap.WebtoolsCheckUpdateDatabase}</a></li>
          <li><a href="<@noerpUrl>ConnectionPoolStatus</@noerpUrl>">${uiLabelMap.ConnectionPoolStatus}</a></li>
          <#-- want to leave these out because they are only working so-so, and cause people more problems that they solve, IMHO
            <li><a href="<@noerpUrl>view/EditEntity</@noerpUrl>"  target="_blank">Edit Entity Definitions</a></li>
            <li><a href="<@noerpUrl>ModelWriter</@noerpUrl>" target="_blank">Generate Entity Model XML (all in one)</a></li>
            <li><a href="<@noerpUrl>ModelWriter?savetofile=true</@noerpUrl>" target="_blank">Save Entity Model XML to Files</a></li>
          -->
          <#-- not working right now anyway
            <li><a href="<@noerpUrl>ModelGroupWriter</@noerpUrl>" target="_blank">Generate Entity Group XML</a></li>
            <li><a href="<@noerpUrl>ModelGroupWriter?savetofile=true</@noerpUrl>" target="_blank">Save Entity Group XML to File</a></li>
          -->
          <#--
            <li><a href="<@noerpUrl>view/tablesMySql</@noerpUrl>">MySQL Table Creation SQL</a></li>
            <li><a href="<@noerpUrl>view/dataMySql</@noerpUrl>">MySQL Auto Data SQL</a></li>
          -->
          <li><h3>${uiLabelMap.WebtoolsEntityXMLTools}</h3></li>
          <li><a href="<@noerpUrl>xmldsdump</@noerpUrl>">${uiLabelMap.PageTitleEntityExport}</a></li>
          <li><a href="<@noerpUrl>EntityExportAll</@noerpUrl>">${uiLabelMap.PageTitleEntityExportAll}</a></li>
          <li><a href="<@noerpUrl>EntityImport</@noerpUrl>">${uiLabelMap.PageTitleEntityImport}</a></li>
          <li><a href="<@noerpUrl>EntityImportDir</@noerpUrl>">${uiLabelMap.PageTitleEntityImportDir}</a></li>
          <li><a href="<@noerpUrl>EntityImportReaders</@noerpUrl>">${uiLabelMap.PageTitleEntityImportReaders}</a></li>
        </#if>
        <#if security.hasPermission("SERVICE_MAINT", session)>
          <li><h3>${uiLabelMap.WebtoolsServiceEngineTools}</h3></li>
          <li><a href="<@noerpUrl>ServiceList</@noerpUrl>">${uiLabelMap.WebtoolsServiceReference}</a></li>
          <li><a href="<@noerpUrl>scheduleJob</@noerpUrl>">${uiLabelMap.PageTitleScheduleJob}</a></li>
          <li><a href="<@noerpUrl>runService</@noerpUrl>">${uiLabelMap.PageTitleRunService}</a></li>
          <li><a href="<@noerpUrl>FindJob</@noerpUrl>">${uiLabelMap.PageTitleJobList}</a></li>
          <li><a href="<@noerpUrl>threadList</@noerpUrl>">${uiLabelMap.PageTitleThreadList}</a></li>
          <li><a href="<@noerpUrl>ServiceLog</@noerpUrl>">${uiLabelMap.WebtoolsServiceLog}</a></li>
        </#if>
        <#if security.hasPermission("DATAFILE_MAINT", session)>
          <li><h3>${uiLabelMap.WebtoolsDataFileTools}</h3></li>
          <li><a href="<@noerpUrl>viewdatafile</@noerpUrl>">${uiLabelMap.WebtoolsWorkWithDataFiles}</a></li>
        </#if>
        <li><h3>${uiLabelMap.WebtoolsMiscSetupTools}</h3></li>
        <#if security.hasPermission("PORTALPAGE_ADMIN", session)>
          <li><a href="<@noerpUrl>FindPortalPage</@noerpUrl>">${uiLabelMap.WebtoolsAdminPortalPage}</a></li>
          <li><a href="<@noerpUrl>FindGeo</@noerpUrl>">${uiLabelMap.WebtoolsGeoManagement}</a></li>
          <li><a href="<@noerpUrl>WebtoolsLayoutDemo</@noerpUrl>">${uiLabelMap.WebtoolsLayoutDemo}</a></li>
        </#if>
        <#if security.hasPermission("ENUM_STATUS_MAINT", session)>
          <#--
          <li><a href="<@noerpUrl>EditEnumerationTypes</@noerpUrl>">Edit Enumerations</a></li>
          <li><a href="<@noerpUrl>EditStatusTypes</@noerpUrl>">Edit Status Options</a></li>
          -->
        </#if>
        <li><h3>${uiLabelMap.WebtoolsPerformanceTests}</h3></li>
        <li><a href="<@noerpUrl>EntityPerformanceTest</@noerpUrl>">${uiLabelMap.WebtoolsEntityEngine}</a></li>
        <#if security.hasPermission("SERVER_STATS_VIEW", session)>
          <li><h3>${uiLabelMap.WebtoolsServerHitStatisticsTools}</h3></li>
          <li><a href="<@noerpUrl>StatsSinceStart</@noerpUrl>">${uiLabelMap.WebtoolsStatsSinceServerStart}</a></li>
        </#if>
        <li><h3>${uiLabelMap.WebtoolsCertsX509}</h3></li>
        <li><a href="<@noerpUrl>myCertificates</@noerpUrl>">${uiLabelMap.WebtoolsMyCertificates}</a></li>
      </ul>
    </#if>
  </div>
</div>
