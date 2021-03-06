{**
 * templates/frontend/pages/editorialTeam.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the editorial team.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="about.editorialTeam"}

<div class="container">
  <div class="row justify-content-md-center">
    <div class="col-md-6">
      {include file="frontend/components/editLink.tpl" page="management" op="settings" path="context" anchor="masthead" sectionTitleKey="about.editorialTeam"}

      <h1>
        <span class="label">{$currentContext->getLocalizedName()}</span>
        {translate key="about.editorialTeam"}</h1>
      <hr>

      {$currentContext->getLocalizedSetting('masthead')}
    </div>
  </div>
</div>

{include file="frontend/components/footer.tpl"}
