## Filtered Group Picker FAQs
{:.no_toc}

<img alt="icon" src="{{ 'assets/filtered-group-picker-icon.svg' | relative_url }}" width="32" height="32"/> 

Using the Filtered Group Picker app for Jira, you can create group picker fields that allows user to pick from specific sets of groups.

1. Contents
{:toc}

### How do I configure a group picker custom field so it only allow selecting from a set of specific groups?

The Filtered Group Picker app provides two custom field types: `Group Picker (multiple, with filters)` and `Group Picker (single, with filters)`. Create a custom field with one of these types, and then navigate to the `Custom field config` page:

![filtered-group-picker-edit-custom-field-config](/assets/filtered-group-picker-edit-custom-field-config.png)

You can either choose exactly which groups you'd like to appear in your group picker dropdown (e.g. `system-administrators`, and `org-admins` in the following example):

![filtered-group-picker-issue-view.png](/assets/filtered-group-picker-issue-view.png)

Or, you can configure a custom [regular expression](https://en.wikipedia.org/wiki/Regular_expression) to match specific groups by patterns in their names. You could, for example, match groups whose name starts/ends with specific characters. In the following example, we just configure a simple regex that matches either `system-administrators` or `org-admins`:

![filtered-group-picker-regex](/assets/filtered-group-picker-regex.png)

You can write more complex regular expressions to match custom group sets by patterns in their names.

Now, you'll now have a custom filtered group picker field that limits the groups that appear in the drop down to a specific set:

![filtered-group-picker-issue-view](/assets/filtered-group-picker-issue-view.png)

### How do I create a new custom Filtered Group Picker field?

First, click the gear icon in the top right corner and select `Work items`:

![filtered-group-picker-work-items-setting](/assets/filtered-group-picker-work-items-setting.png)

Next, click the `Fields` link on the left hand side of the screen:

![filtered-group-picker-fields](/assets/filtered-group-picker-fields.png)

Then, click `Create new Field` in the right hand side and select either `Group Picker (multiple, with filters)`, or `Group Picker (single, with filters)`:

![filtered-group-picker-create-field](/assets/filtered-group-picker-create-field.png)

Then, click the three dots `...` menu item on your newly created field and select `Contexts and default values`:

![filtered-group-picker-contexts-and-default-values](/assets/filtered-group-picker-contexts-and-default-values.png)

Finally, click the `Edit custom field config` link, and you'll be able to configure your filtered group picker so that it restricts itself to a specfic set of groups (either by exact match, or with a regular expression):

![filtered-group-picker-edit-custom-field-config](/assets/filtered-group-picker-edit-custom-field-config.png)

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
