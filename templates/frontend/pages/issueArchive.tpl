{**
 * templates/frontend/pages/issueArchive.tpl
 *
 * Copyright (c) 2014-2017 Simon Fraser University
 * Copyright (c) 2003-2017 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display a list of recent issues.
 *
 * @uses $issues Array Collection of issues to display
 *}
{capture assign="pageTitle"}
	{if $issues->getPageCount() > 0 && $issues->getPage() > 1}
		{translate key="archive.archivesPageNumber" pageNumber=$issues->getPage()}
	{else}
		{translate key="archive.archives"}
	{/if}
{/capture}
{include file="frontend/components/header.tpl" pageTitleTranslated=$pageTitle}

<div>
	{include file="frontend/components/breadcrumbs.tpl" currentTitle=$pageTitle}

	{* No issues have been published *}
	{if $issues->wasEmpty()}
		<p>{translate key="current.noCurrentIssueDesc"}</p>

	{* List issues *}
	{else}
		<ul>
			{iterate from=issues item=issue}
				<li>
					{include file="frontend/objects/issue_summary.tpl"}
				</li>
			{/iterate}
		</ul>

		{if $issues->getPageCount() > 0}
			<div>
				{page_info iterator=$issues}
				{page_links anchor="issues" name="issues" iterator=$issues}
			</div>
		{/if}
	{/if}
</div>

{include file="frontend/components/footer.tpl"}
