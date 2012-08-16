{**
 * templates/catalog/monograph.tpl
 *
 * Copyright (c) 2003-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display a public-facing monograph in the catalog.
 *}

<li class="pkp_catalog_monograph {if $inline}pkp_helpers_align_left{/if} pkp_helpers_text_center">
	{assign var=coverImage value=$publishedMonograph->getCoverImage()}
	<a href="{url page="catalog" op="book" path=$publishedMonograph->getId()}"><img class="pkp_catalog_monograph_thumbnail pkp_helpers_container_center" height="{$coverImage.thumbnailHeight}" width="{$coverImage.thumbnailWidth}" alt="{$publishedMonograph->getLocalizedFullTitle()|escape}" src="{url router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="thumbnail" monographId=$publishedMonograph->getId()}" /></a>
	<div class="pkp_catalog_monographDetails">
		<div class="pkp_catalog_monographTitle"><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$publishedMonograph->getId()}">{$publishedMonograph->getLocalizedFullTitle()}</a></div>
		<div class="pkp_catalog_monograph_authorship pkp_helpers_clear">
			{$publishedMonograph->getAuthorString()|escape}
		</div>
	</div>
	<div class="pkp_catalog_monograph_date">
			{$publishedMonograph->getDatePublished()|date_format:$dateFormatShort}
	</div>
</li>
