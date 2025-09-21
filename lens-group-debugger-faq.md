## Lens Group Debugger FAQs
{:.no_toc}

<img alt="icon" src="{{ 'assets/group-icon.svg' | relative_url }}" width="32" height="32"/> 

Using the [Lens Group Debugger](https://marketplace.atlassian.com/1236381) app for Jira, you can determine where groups are used in your Jira instance.

1. Contents
{:toc}

### What information is available on the group summary page?

The group summary page renders a table with counts of related Users, Project Roles, Custom Fields, Permission Schemes, Issue Security Schemes, Notification Schemes, and Workflows in your groups:

![lens-group-debugger-summary-page](/assets/lens-group-debugger-list-page.png)

### What information is available on the group detail page?

The group detail page shows Projects, Project Roles, Custom Field references, Permission Schemes, Issue Security Schemes, Notification Schemes, Workflows, and Filter Shares/Edits/JQL related to a group:

![lens-group-debugger-detail-page](/assets/lens-group-debugger-detail-page.png)

The group detail page also has counts of line-item level sub-objects including Permission Scheme Permission, Issue Security Scheme Level, Notification Scheme Event, Workflow Condition, and Filter Share/Edit/JQL.

### Can I find what projects use my group?

Yes, the group debugger page includes a tab that loads projects that are related to your group (via Project Role, Custom Field, Permission Scheme, Issue Security Scheme, Notification Scheme, or Workflow relations):

![lens-group-debugger-projects.png](/assets/lens-group-debugger-projects.png)

By default, the debugger lists out the projects that are related. But, you can also use the debugger to drill down into a specific project and see what child objects create the relationship between that project and the group.

For example, the following screenshot shows a drill down into the `TC` project...the `TC` related to the current group via 3 objects: a Custom Field reference, a Notification Scheme reference, and a nested Notification Scheme Event line item reference:

![lens-group-debugger-project-drill-down.png](/assets/lens-group-debugger-project-drill-down.png)

### Can I find filters that are related to my group via plaintext references in their JQL?

Yes, the group debugger page will show you Filters that are related to your group by the appearance of the group name in the JQL text. These relationships will be specifically categorized as `Filter Jql Content` in the related objects table. 

You'll also see Filters that are related via Edit/Share permissions to your group (potentially via a transitive Project Role relationship):

![lens-group-debugger-filter-page](/assets/lens-group-debugger-filter-page.png)

The `Detail` column also includes the name of the Filter's owner (e.g. `Dorothy Gale`), and its share status.

### What does `Self` mean in the `Related Via` Column of the Related Objects table?

If an object is directly associated to a group, then we consider the related object to be associated to the group via its self (aka `Self`). For example, an `Issue Security Scheme Level` like `Allowed Users Only` can be associated directly to a group.

Some objects can be related to a group transitively via a `Project Role` that is - in turn - associated to the group. Those objects `Related Via` column will instead list the `Project Role` that transitively creates the association between the object and the current group.

### Can I export group usage data?

You can export data that shows objects a group is related to. Access the report by clicking on the download icon on the group detail page. The report is formatted in JSON. Reach out to us if you need more help with the export feature.

![lens-group-debugger-download-page](/assets/lens-group-debugger-download-page.png)

### Can I make Lens Group Debugger generate Group and User URLs for [Atlassian's old user management experience](https://community.atlassian.com/forums/Enterprise-articles/Cloud-admins-we-re-saving-you-time-on-user-management/ba-p/2588292)?

Yes. If your instance still uses [Atlassian's old user management experience](https://community.atlassian.com/forums/Enterprise-articles/Cloud-admins-we-re-saving-you-time-on-user-management/ba-p/2588292)), you can use toggle a flag to render links that route to Atlassian’s old user management experience:

![lens-group-debugger-old-user-management-toggle](/assets/lens-group-debugger-old-user-management-toggle.png)

When you activate the toggle under the `Advanced` section, the generated links will render using the old style (e.g. `https://admin.atlassian.com/s/<cloud-id>/groups/<group-id>`).

### How can I request a discount?
If you'd like to request a discount, contact us through the [support portal](https://firstdawnllc.atlassian.net/servicedesk/customer/portal/1) and we'll work together to get you set up.

### How can I get support?
Send us a message through the [support portal](https://firstdawnllc.atlassian.net/servicedesk/customer/portal/1).

### How can I request a feature be added to Lens Group Debugger's Roadmap?
If there is a feature you'd like us to add to Lens Group Debugger, send us a message through the [support portal](https://firstdawnllc.atlassian.net/servicedesk/customer/portal/1).

### Release Notes

- `3.47.0 - 3.49.0`
    - Bug fixes + minor enhancements.
- `3.46.0`
    - Add ability to render links to [Atlassian's old user managment experience](https://community.atlassian.com/forums/Enterprise-articles/Cloud-admins-we-re-saving-you-time-on-user-management/ba-p/2588292) - for instances that Atlassian hasn't yet updated to the new user management experience.
- `3.45.0`
    - Bug fixes + minor enhancements.
- `3.44.0`
    - Add Projects tab to group detail page that lists projects related to the current group.
- `3.0.0` - `3.43.0`
    - Bug fixes + minor enhancements.
- `3.0.0`
    - Initial release.

### Additional Links
- [Support portal](https://firstdawnllc.atlassian.net/servicedesk/customer/portal/1)
- [Privacy Policy](/lens-gropu-debugger-privacy)
- [End User License Agreement](lens-group-debugger-eula)
- [Lens Group Debugger on Atlassian Marketplace](https://marketplace.atlassian.com/1236381)

### Related Jira Feature Requests + Community Posts

- [JRACLOUD-71967 - Group usage - List of project permission per group](https://jira.atlassian.com/browse/JRACLOUD-71967)
- [JRACLOUD-36740 - Extend Group administration page to show more use locations](https://jira.atlassian.com/browse/JRACLOUD-36740)
- [JRACLOUD-77635 - Report containing Group association with roles and projects](https://jira.atlassian.com/browse/JRACLOUD-77635)
- [ID-8534 - It's not possible to identify which "JQL Filters - Result" a group is used in without support assistance when renaming group](https://jira.atlassian.com/browse/ID-8534)
- [ID-8535 - Renaming a group being used in dashboards filters show that is being used in issue filters instead](https://jira.atlassian.com/browse/ID-8535)
- [Community - How can I produce an Audit Report for user access in Jira](https://community.atlassian.com/t5/Jira-questions/How-can-I-produce-an-Audit-Report-for-user-access-in-Jira/qaq-p/1318284)
- [Community - Auditing user groups](https://community.atlassian.com/t5/Jira-Cloud-Admins-questions/Auditing-user-groups/qaq-p/2033313)
- [Community - How to find what Projects a Group has access too (based on Roles) in CLOUD?](https://community.atlassian.com/t5/Jira-questions/How-to-find-what-Projects-a-Group-has-access-too-based-on-Roles/qaq-p/2766557)
- [Community - How do i see which projects a Group has access/permissions/roles assigned to.](https://community.atlassian.com/t5/Jira-questions/How-do-i-see-which-projects-a-Group-has-access-permissions-roles/qaq-p/1926811)
- [Community - How to find out permissions assigned to a group?](https://community.atlassian.com/t5/Jira-questions/How-to-find-out-permissions-assigned-to-a-group/qaq-p/2496686)
