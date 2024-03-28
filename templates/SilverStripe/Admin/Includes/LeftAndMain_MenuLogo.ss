<div class="cms-sitename <% if $SiteConfig.CMSLogo %>cms-sitename--has-logo<% end_if %>">
    <a href="#" class="cms-sitename__link font-icon-silverstripe-cms font-icon-large" target="_blank">
    </a>
    <a class="cms-sitename__title" href="$BaseHref" target="_blank">
        <% if $SiteConfig.CMSLogo %>
            <% if $SiteConfig.CMSLogo.Extension == "svg" %>
                <img style="width:170px; padding:10px 5px;" src="$SiteConfig.CMSLogo.Link" alt="<% if $SiteConfig %>$SiteConfig.Title<% else %>$ApplicationName<% end_if %>">
            <% else %>
                <img src="$SiteConfig.CMSLogo.ScaleWidth(180).Link" alt="<% if $SiteConfig %>$SiteConfig.Title<% else %>$ApplicationName<% end_if %>">
            <% end_if %>
        <% else %>
            <% if $SiteConfig %>$SiteConfig.Title<% else %>$ApplicationName<% end_if %>
        <% end_if %>
    </a>
</div>
