{ ... }:

{
  programs.firefox = {
    enable = true;

    policies = {
      ExtensionSettings = {
        "{76aabc99-c1a8-4c1e-832b-d4f2941d5a7a}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/catppuccin-mocha-mauve-git/latest.xpi";
          installation_mode = "force_installed";
        };

        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
          default_area = "menupanel";
        };
      };
    };

    profiles.default = {
      id = 0;
      isDefault = true;
      settings = {
        "extensions.activeThemeID" = "{76aabc99-c1a8-4c1e-832b-d4f2941d5a7a}";
        "browser.theme.content-theme" = 0;
        "browser.theme.toolbar-theme" = 0;
        "browser.theme.dark-private-windows" = true;
        "layout.css.prefers-color-scheme.content-override" = 0;
        "extensions.autoDisableScopes" = 0;
        "browser.tabs.inTitlebar" = 1;
        "browser.compactmode.show" = true;
        "browser.uidensity" = 0;
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;

        "sidebar.revamp" = true;
        "sidebar.verticalTabs" = true;
        "sidebar.visibility" = "always-show";

        "browser.ctrlTab.sortByRecentlyUsed" = true;

        "browser.ai.control.default" = "blocked";
        "browser.ai.control.linkPreviewKeyPoints" = "blocked";
        "browser.ai.control.pdfjsAltText" = "blocked";
        "browser.ai.control.sidebarChatbot" = "blocked";
        "browser.ai.control.smartTabGroups" = "blocked";
        "browser.ai.control.translations" = "blocked";

        "datareporting.healthreport.uploadEnabled" = false;
        "datareporting.policy.dataSubmissionEnabled" = false;
        "toolkit.telemetry.enabled" = false;
        "toolkit.telemetry.unified" = false;
        "toolkit.telemetry.archive.enabled" = false;
        "browser.ping-centre.telemetry" = false;
        "app.shield.optoutstudies.enabled" = false;
        "browser.discovery.enabled" = false;
        "dom.security.https_only_mode" = true;
        "privacy.trackingprotection.enabled" = true;
        "privacy.trackingprotection.socialtracking.enabled" = true;

        "browser.newtabpage.activity-stream.feeds.topsites" = false;
        "browser.newtabpage.activity-stream.feeds.section.topstories" = false;
        "browser.newtabpage.activity-stream.showSponsored" = false;
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
        "browser.urlbar.suggest.quicksuggest.sponsored" = false;
        "browser.urlbar.suggest.quicksuggest.nonsponsored" = false;
        "extensions.pocket.enabled" = false;

        "browser.startup.page" = 3;
        "browser.aboutConfig.showWarning" = false;
        "browser.shell.checkDefaultBrowser" = false;
        "browser.download.useDownloadDir" = false;
        "general.smoothScroll" = true;
        "widget.gtk.hide-pointer-while-typing.enabled" = false;
        "media.ffmpeg.vaapi.enabled" = true;
      };
    };
  };
}
