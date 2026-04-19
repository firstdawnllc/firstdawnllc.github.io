## Filtered Group Picker FAQs
{:.no_toc}

<img alt="icon" src="{{ 'assets/filtered-group-picker-icon.svg' | relative_url }}" width="32" height="32"/> 

Using the Filtered Group Picker app for Jira, you can create group picker fields that allows user to pick from specific sets of groups.

1. Contents
{:toc}

### How can I use the Filtered Group Picker app to create custom fields that only allow selecting from a set of pre-defined groups?

The Filtered Group Picker app provides two custom field types: (1) `Group Picker (multiple, with filters)`, and (2) `Group Picker (single, with filters)`. Create a custom field with one of these types, and then navigate to the *Custom field config* page.

![filtered-group-picker-edit-custom-field-config](/assets/filtered-group-picker-edit-custom-field-config.png)

You can either choose exactly which groups you'd like to appear in your group picker dropdown (e.g. `system-administrators`, and `org-admins` in the following example):

![filtered-group-picker-specific-groups](/assets/filtered-group-picker-specific-groups.png)

Or, you can configure a custom [regular expression](https://en.wikipedia.org/wiki/Regular_expression) to match specific groups by patterns in their names. You could, for example, match groups whose name starts/ends with specific characters. In the following example, we just configure a simple regex that matches either `system-administrators` or `org-admins`:

![filtered-group-picker-regex](/assets/filtered-group-picker-regex.png)

You can write more complex regular expressions to match custom group sets by patterns in their names.

Finally, you'll now have a custom filtered group picker field that limits the groups that appear in the drop down to a specific set:

![filtered-group-picker-issue-view](/assets/filtered-group-picker-issue-view.png)

### How do I create a new custom Filtered Group Picker field?

- 1. First, click the gear icon in the top right corner and select `Work items`:

![filtered-group-picker-work-items-setting](/assets/filtered-group-picker-work-items-setting.png)

- 2. Click the `Fields` link on the left hand side of the screen:

![filtered-group-picker-fields](/assets/filtered-group-picker-fields.png)

- 3. Click `Create new Field` in the right hand side and select either `Group Picker (multiple, with filters)`, or `Group Picker (single, with filters)`:

![filtered-group-picker-create-field](/assets/filtered-group-picker-create-field.png)

- 4. Click the three dots `...` menu item on your newly created field and select `Contexts and default values`:

![filtered-group-picker-contexts-and-default-values](/assets/filtered-group-picker-contexts-and-default-values.png)

- 5. Click the `Edit custom field config` link:

![filtered-group-picker-edit-custom-field-config](/assets/filtered-group-picker-edit-custom-field-config.png)

- 6. Finally, and you'll be able to configure your filtered group picker so that it restricts itself to a specfic set of groups (either by exact match, or with a regular expression).

e.g. Choosing specific groups:

![filtered-group-picker-specific-groups](/assets/filtered-group-picker-specific-groups.png)

e.g. Creating a custom regular expression:

![filtered-group-picker-regex](/assets/filtered-group-picker-regex.png)

- 7. Now - on your issues - you'll be able to add a group picker field that limits itself to only the specific set of groups you configured:

![filtered-group-picker-issue-view.png](/assets/filtered-group-picker-issue-view.png)

### How can I request a discount?
If you'd like to request a discount, contact us through the [support portal](https://firstdawnllc.atlassian.net/servicedesk/customer/portal/1) and we'll work together to get you set up.

### How can I get support?
Send us a message through the [support portal](https://firstdawnllc.atlassian.net/servicedesk/customer/portal/1).

### Additional Links
- [Support portal](https://firstdawnllc.atlassian.net/servicedesk/customer/portal/1)
- [Privacy Policy](/filtered-group-picker-privacy)
- [End User License Agreement](https://www.atlassian.com/licensing/marketplace/end-user-agreement-v1)

### Related Jira Feature Requests + Community Posts

- [JRACLOUD-61856 Limit group picker to filter out desired groups](https://jira.atlassian.com/browse/JRACLOUD-61856)
