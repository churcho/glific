# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.2] - 2021-03-11

### Added
- Add import functionality via CSV for contacts

### Fixed
- Allow flows to proceed always. Checks are performed within flow execution

## [0.11.1] - 2021-02-14

### Fixed
- Ensure that the status search queries limit number of contacts

## [0.11.0] - 2021-02-14

### Fixed
- Eliminate search count in
saved searches GraphQL
- Skip reporting Exit Loop? as appsignal error

## [0.10.8] - 2021-02-11

### Fixed
- Found and fixed infinite loop issue
- Take advantage of prepared schema's for pg 12+
- Continue with our DB optimization quest
- Improve subscription performance, especially for saved search

## [0.10.4] - 2021-02-08

### Fixed
- Use json maps rather than our own pseudo-maps
- Improve GCS and BigQuery code
- Improve garbage collection in consumer worker
- More learning on GenServer

## [0.9.7] - 2021-01-25

### Added
- Trigger for updating messages's updated_at when message is tagged
- Trigger for updating contacts's updated_at when contact is tagged
- Added size validation for media attachments
## [0.9.6] - 2021-01-23

### Added
- Support for failed authentication
- Added plugins and versioning for appsignal in frontend

### Fixed
- BigQuery updating mesages periodically
- BigQuery updating contacts periodically
- Simulator scroll issue
- Jump to latest button position

## [0.9.5] - 2021-01-22
### Added
- Trigger for updating contact's updated_at when contact is added to group
- Message status subscription
- Redirection to https

### Fixed
- Making description fields as text field
- Updated README.md
- BigQuery Cleanups
- Removed GlificProxy server
- Making message body as nullable in case of media speed sends
- Search conversation errors
- Order by column error

## [0.9.4] - 2021-01-18
### Added
- Webhook signature field
- Validate media URL in while sending media in flows
- Added CORS proxy server
- Flow editor media URL validation

### Fixed
- Optimize fetching opted in contacts from BSP server
- Sending errors in case of wrong API keys
- API Client cleanups
- Handle null message error
- Wallet balance error
- Not displaying last message media types
- Background change for contact bar icons

## [0.9.3] - 2021-01-14
### Added
- Making keyword as Nullable when creating a new flow
- Sending Message status subcription
- Added seeder for flow results
### Fixed
- Contact id jump when contact optout
## [0.9.2] - 2021-01-11
### Added
- Responsive chat screen for mobile view
- Renamed collections to searches
- Support for location in messages
- Status in Webhook logs
- Support for filtering webhook logs with part URL
- Updated Seeder for dev
### Fixed
- Optimizing organization subscription by checking for active organizations
- Updating all HSM templates
## [0.9.1] - 2021-01-06
### Added
- Floweditor maximum attachments support set to 1
- Support in flow engine for "wait for time" node
- Validation for template list
- Upgrade elixir packages to latest version

### Fixed
- Fixed contact field with name containing underscore
## [0.9.0] - 2021-01-04
### Added
- Support for "wait for time" node
- Updating Flow results that were updated in last 90 mins
- Support for sending media HSMs
- Support for showing webhook logs

### Fixed
- Fixed issue of contact field being saved to Bigquery with label as nil
- Fixed appsignal errors
## [0.8.7] - 2020-12-28
### Added
- Store messages sent to group in messages table
- API to retrieve group conversations
- flow_context id to flow results table so we store each run through the flow

## [0.8.6] - 2020-12-22
### Added
- Stir usecase, computing score based on answers of survey
- Stir usecase, returning list of wrongly answered
- Support for message variable parser
- Support for fetching hsm templates from gupshup periodically

### Fixed
- fixed message variable parsing in webhook, route and contact field
- Using dot syntax in webhook results

## [0.8.5] - 2020-12-17
### Added
- Support for retrieving HSM messages from gupshup
- Switched to new API to send HSM messages

## [0.8.4] - 2020-12-15
### Added
- Rescheduling oban jobs in case of failure for ensuring data archival
- Added Check for bigquery tables and dataset in case of Bigquery Jobs failure
- Clearing cache on encrypting data with new key
- Adding custom data as JSON in Webhook

### Fixed
- Webhook fixes
- Fetching all details for bigquery integration from single JSON
- Cloak Key migration fixes

## [0.8.3] - 2020-12-08
### Added
- Support for translations in templates
- Attachment support for various translations in flow editor and templates
- Cannot block simulator contact anymore.
- UI/UX enhancements
  - Added opt-in instructions on the registration page
  - Timer display corrections
  - Automations are renamed to "Flows"

### Fixed
- Tweak settings in AppSignal to ignore DB queries


## [0.8.2] - 2020-12-07
### Added
- Add caches expiration and refreshes support for keeping check that only frequently used data is cached.
- Added logging for tracking various events
- Added has all words option in automation for user responded messages.
- Archiving Flow results in Bigquery
- Stickers have transparent background
- Placeholder in chat input
- Upgrade to 2.0 version of AppSignal

### Fixed
- High memory utilization problem
- Flow keyword issue, saving clean strings
- Saving only recent five messages in flow recent messages
- Autosave calls after moving away from flow configure screen

## [0.8.0 and prior] - 2020-12-01
### Added
- Attachment support from the chat window
- Sticker Support in messages
- Send Media HSM templates from flow editor
- Showing BSP balance on the dashboard
- Added flows information on the bigquery
- Mask phone numbers in the profile page
- Sync contact fields in Bigquery
- Archiving Flows in Bigquery
- Media HSM files
- Showing BSP balance on the dashboard
- Updated Documentation

### Fixed
- Fixed login timeout issue.
- Update the readme file
- Adding contact to group from automation

## [0.7.3] - 2020-11-30
### Added
- Logging high level actions
- Attachment support to sending messages in frontend
- Support for stickers type
- Support in BigQuery for updating contacts, messages and new tables for flows, groups.

### Changed
- Removed most of the standard flows from production

### Fixed
- Improved support for rate limiting when communicating with Gupshup
- Upgraded floweditor version

## [0.7.2] - 2020-11-23
### Added
- Support for webhooks (preliminary)
- Support for permissioning at the staff level
- Display of remaining budget on Gupshup
- Support for HSM's including Quick Reply and Call to Action

### Fixed
- Keywords for flows are now all lowercase

## [0.7.1 and prior] - 2020-11-16

### Added
- Core Glific DB Structure and functionality
- Phoenix Schema and Context Structure
- GraphQL API as main interface to the core platform
- User Authentication and Permissioning
- Tags, Collections, Conversations, Groups as core building blocks
- Settings to store and manage credentials of various services
- Integration with 3rd party communication providers
- Unit Tests for all glific code with 80%+ code and documentation coverage
- CI system via GitHub Actions
- CD system to Gigalixir
- Community documentation (README, LICENSE, CHANGELOG, CODE_OF_CONDUCT)
