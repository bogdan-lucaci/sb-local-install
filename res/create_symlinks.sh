#!/bin/bash

#languages
ln -sfn /var/www/phs/languages/en.dist /var/www/phs/languages/en
ln -sfn /var/www/phs/languages/it.dist /var/www/phs/languages/it

# phs plugins
ln -sfn /var/www/phs/plugins.dist/accounts /var/www/phs/plugins/accounts
ln -sfn /var/www/phs/plugins.dist/admin /var/www/phs/plugins/admin
ln -sfn /var/www/phs/plugins.dist/backup /var/www/phs/plugins/backup
ln -sfn /var/www/phs/plugins.dist/bbeditor /var/www/phs/plugins/bbeditor
ln -sfn /var/www/phs/plugins.dist/captcha /var/www/phs/plugins/captcha
ln -sfn /var/www/phs/plugins.dist/cookie_notice /var/www/phs/plugins/cookie_notice
ln -sfn /var/www/phs/plugins.dist/emails /var/www/phs/plugins/emails
ln -sfn /var/www/phs/plugins.dist/hubspot /var/www/phs/plugins/hubspot
ln -sfn /var/www/phs/plugins.dist/messages /var/www/phs/plugins/messages
ln -sfn /var/www/phs/plugins.dist/mobileapi /var/www/phs/plugins/mobileapi
ln -sfn /var/www/phs/plugins.dist/notifications /var/www/phs/plugins/notifications

# onboarding plugins
ln -sfn /var/www/onboarding/plugins/s2p_amex /var/www/phs/plugins/s2p_amex
ln -sfn /var/www/onboarding/plugins/s2p_azureauth /var/www/phs/plugins/s2p_azureauth
ln -sfn /var/www/onboarding/plugins/s2p_blacklist /var/www/phs/plugins/s2p_blacklist
ln -sfn /var/www/onboarding/plugins/s2p_companies /var/www/phs/plugins/s2p_companies
ln -sfn /var/www/onboarding/plugins/s2p_datacheck /var/www/phs/plugins/s2p_datacheck
ln -sfn /var/www/onboarding/plugins/s2p_documents /var/www/phs/plugins/s2p_documents

# individuals
ln -sfn /var/www/onboarding/plugins/s2p_individuals /var/www/phs/plugins/s2p_individuals
ln -sfn /var/www/onboarding/plugins/s2p_ind_management /var/www/phs/plugins/s2p_ind_management
ln -sfn /var/www/onboarding/plugins/s2p_ind_gp /var/www/phs/plugins/s2p_ind_gp
ln -sfn /var/www/onboarding/plugins/s2p_ind_sf /var/www/phs/plugins/s2p_ind_sf
# end individuals

ln -sfn /var/www/onboarding/plugins/s2p_gp /var/www/phs/plugins/s2p_gp
ln -sfn /var/www/onboarding/plugins/s2p_hubspot /var/www/phs/plugins/s2p_hubspot
ln -sfn /var/www/onboarding/plugins/s2p_libraries /var/www/phs/plugins/s2p_libraries
ln -sfn /var/www/onboarding/plugins/s2p_mirakl /var/www/phs/plugins/s2p_mirakl
ln -sfn /var/www/onboarding/plugins/s2p_notifications /var/www/phs/plugins/s2p_notifications
ln -sfn /var/www/onboarding/plugins/s2p_packages /var/www/phs/plugins/s2p_packages
ln -sfn /var/www/onboarding/plugins/s2p_pep /var/www/phs/plugins/s2p_pep
ln -sfn /var/www/onboarding/plugins/s2p_psp /var/www/phs/plugins/s2p_psp
ln -sfn /var/www/onboarding/plugins/s2p_risk /var/www/phs/plugins/s2p_risk
ln -sfn /var/www/onboarding/plugins/s2p_salesforce /var/www/phs/plugins/s2p_salesforce
ln -sfn /var/www/onboarding/plugins/s2p_sf /var/www/phs/plugins/s2p_sf
ln -sfn /var/www/onboarding/plugins/s2p_signatures /var/www/phs/plugins/s2p_signatures
ln -sfn /var/www/onboarding/plugins/s2p_trulioo /var/www/phs/plugins/s2p_trulioo
ln -sfn /var/www/onboarding/plugins/s2p_vidra /var/www/phs/plugins/s2p_vidra

#themes
ln -sf /var/www/phs/themes/default.dist /var/www/phs/themes/default
ln -sf /var/www/onboarding/themes/s2p_default /var/www/phs/themes/s2p_default
ln -sf /var/www/onboarding/themes/s2p_wl /var/www/phs/themes/s2p_wl
ln -sf /var/www/onboarding/themes/s2p /var/www/phs/themes/s2p
ln -sf /var/www/onboarding/themes/ibs /var/www/phs/themes/ibs
ln -sf /var/www/onboarding/themes/eprice /var/www/phs/themes/eprice
ln -sf /var/www/onboarding/themes/rinascente /var/www/phs/themes/rinascente
ln -sf /var/www/onboarding/themes/rinascente /var/www/phs/themes/shopto
ln -sf /var/www/onboarding/themes/rinascente /var/www/phs/themes/nuvei
