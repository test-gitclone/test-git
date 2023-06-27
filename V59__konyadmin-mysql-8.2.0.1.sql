INSERT INTO server_configuration_group (id, name, display_mode, group_order, config_save)
SELECT MAX(id) + 1 , 'Web Apps Configuration', 'both', 11, 'Save' from server_configuration_group;
INSERT INTO server_configuration (prop_name, prop_value, display_name, group_id, created_date, updated_date) VALUES ('KONY_SERVER_APPS_CONTENTTYPE_MAPPINGS', '{ ".css": "text/css", ".csv": "text/csv", ".json": "application/json", ".js": "text/javascript", ".html": "text/html", ".manifest": "text/cache-manifest", ".xml": "text/xml", ".png": "image/png", ".gif": "image/gif", ".jpeg": "image/jpeg", ".bmp": "image/bmp", ".webp": "image/webp", ".svg": "image/svg+xml", ".collection": "font/collection", ".otf": "font/otf", ".ttf": "font/ttf", ".woff": "font/woff", ".woff2": "font/woff2", ".tiff": "image/tiff", ".3gpp": "video/3gpp", ".3gpp2": "video/3gpp2", ".gzip": "application/gzip", ".rtf": "application/rtf", ".pdf": "application/pdf", ".pptx": "application/vnd.mspowerpoint" }', 'Response Content Type Mappings', 11, NOW(), NOW());
INSERT INTO server_configuration (prop_name, prop_value, display_name, group_id, created_date, updated_date) VALUES ('KONY_SERVER_APPS_CACHE_CONTROL_AGE', '86400', 'Cache Control Age (in sec)', 11, NOW(), NOW());
INSERT INTO server_configuration (prop_name, prop_value, display_name, group_id, created_date, updated_date) VALUES ('KONY_SERVER_APPS_ENABLE_SESSION_CACHING', 'true', 'Http Session Caching', 11, NOW(), NOW());
INSERT INTO server_config_ui_metadata(id, ui_control_type, dropdown_options, prop_order, display_mode, prop_description, validation_script,on_change_expression) select id, 'textbox', '', 1, 'both', '', '', '' FROM server_configuration WHERE prop_name='KONY_SERVER_APPS_CONTENTTYPE_MAPPINGS'; 
INSERT INTO server_config_ui_metadata(id, ui_control_type, dropdown_options, prop_order, display_mode, prop_description, validation_script,on_change_expression) select id, 'textbox', '', 2, 'both', '', '', '' FROM server_configuration WHERE prop_name='KONY_SERVER_APPS_CACHE_CONTROL_AGE'; 
INSERT INTO server_config_ui_metadata(id, ui_control_type, dropdown_options, prop_order, display_mode, prop_description, validation_script,on_change_expression) select id, 'checkbox', '', 3, 'both', '', '', '' FROM server_configuration WHERE prop_name='KONY_SERVER_APPS_ENABLE_SESSION_CACHING'; 
