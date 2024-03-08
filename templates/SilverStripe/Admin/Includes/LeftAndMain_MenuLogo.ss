<div class="cms-sitename <% if $SiteConfig.CMSLogo %>cms-sitename--has-logo<% end_if %>">
    <a href="#" class="cms-sitename__link font-icon-silverstripe-cms font-icon-large" target="_blank">
    </a>
    <a class="cms-sitename__title" href="$BaseHref" target="_blank">
        <% if $SiteConfig.CMSLogo %>
            <img src="$SiteConfig.CMSLogo.ScaleWidth(180).Link" alt="<% if $SiteConfig %>$SiteConfig.Title<% else %>$ApplicationName<% end_if %>">
        <% else %>
            <% if $SiteConfig %>$SiteConfig.Title<% else %>$ApplicationName<% end_if %>
        <% end_if %>
    </a>
</div>
