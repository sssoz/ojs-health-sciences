{**
 * templates/frontend/pages/announcement.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page which represents a single announcement
 *
 * @uses $announcement Announcement The announcement to display
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$announcement->getLocalizedTitle()}

<div class="container">
  <div class="row justify-content-md-center">
    <div class="col-md-6">

      {include file="frontend/objects/announcement_full.tpl"}

    </div>
  </div>
</div>

{include file="frontend/components/footer.tpl"}
