resource "grafana_contact_point" "contact_points" {
  for_each = var.contact_points

  name               = each.value.name
  disable_provenance = each.value.disable_provenance
  org_id             = each.value.org_id

  dynamic "alertmanager" {
    for_each = each.value.alertmanager != null ? each.value.alertmanager : []
    content {
      basic_auth_password     = alertmanager.value.basic_auth_password
      basic_auth_user         = alertmanager.value.basic_auth_user
      disable_resolve_message = alertmanager.value.disable_resolve_message
      settings                = alertmanager.value.settings
      url                     = alertmanager.value.url
    }
  }

  dynamic "dingding" {
    for_each = each.value.dingding != null ? each.value.dingding : []
    content {
      disable_resolve_message = dingding.value.disable_resolve_message
      message                 = dingding.value.message
      message_type            = dingding.value.message_type
      settings                = dingding.value.settings
      title                   = dingding.value.title
      url                     = dingding.value.url
    }
  }

  dynamic "discord" {
    for_each = each.value.discord != null ? each.value.discord : []
    content {
      avatar_url              = discord.value.avatar_url
      disable_resolve_message = discord.value.disable_resolve_message
      message                 = discord.value.message
      settings                = discord.value.settings
      title                   = discord.value.title
      url                     = discord.value.url
      use_discord_username    = discord.value.use_discord_username
    }
  }

  dynamic "email" {
    for_each = each.value.email != null ? each.value.email : []
    content {
      addresses               = email.value.addresses
      disable_resolve_message = email.value.disable_resolve_message
      message                 = email.value.message
      settings                = email.value.settings
      single_email            = email.value.single_email
      subject                 = email.value.subject
    }
  }

  dynamic "googlechat" {
    for_each = each.value.googlechat != null ? each.value.googlechat : []
    content {
      disable_resolve_message = googlechat.value.disable_resolve_message
      hide_open_button        = googlechat.value.hide_open_button
      hide_version_info       = googlechat.value.hide_version_info
      message                 = googlechat.value.message
      settings                = googlechat.value.settings
      title                   = googlechat.value.title
      url                     = googlechat.value.url
    }
  }

  dynamic "jira" {
    for_each = each.value.jira != null ? each.value.jira : []
    content {
      api_token               = jira.value.api_token
      api_url                 = jira.value.api_url
      dedup_key_field         = jira.value.dedup_key_field
      description             = jira.value.description
      disable_resolve_message = jira.value.disable_resolve_message
      fields                  = jira.value.fields
      issue_type              = jira.value.issue_type
      labels                  = jira.value.labels
      password                = jira.value.password
      priority                = jira.value.priority
      project                 = jira.value.project
      reopen_duration         = jira.value.reopen_duration
      reopen_transition       = jira.value.reopen_transition
      resolve_transition      = jira.value.resolve_transition
      settings                = jira.value.settings
      summary                 = jira.value.summary
      user                    = jira.value.user
      wont_fix_resolution     = jira.value.wont_fix_resolution
    }
  }

  dynamic "kafka" {
    for_each = each.value.kafka != null ? each.value.kafka : []
    content {
      api_version             = kafka.value.api_version
      cluster_id              = kafka.value.cluster_id
      description             = kafka.value.description
      details                 = kafka.value.details
      disable_resolve_message = kafka.value.disable_resolve_message
      password                = kafka.value.password
      rest_proxy_url          = kafka.value.rest_proxy_url
      settings                = kafka.value.settings
      topic                   = kafka.value.topic
      username                = kafka.value.username
    }
  }

  dynamic "line" {
    for_each = each.value.line != null ? each.value.line : []
    content {
      description             = line.value.description
      disable_resolve_message = line.value.disable_resolve_message
      settings                = line.value.settings
      title                   = line.value.title
      token                   = line.value.token
    }
  }

  dynamic "oncall" {
    for_each = each.value.oncall != null ? each.value.oncall : []
    content {
      authorization_credentials = oncall.value.authorization_credentials
      authorization_scheme      = oncall.value.authorization_scheme
      basic_auth_password       = oncall.value.basic_auth_password
      basic_auth_user           = oncall.value.basic_auth_user
      disable_resolve_message   = oncall.value.disable_resolve_message
      http_method               = oncall.value.http_method
      max_alerts                = oncall.value.max_alerts
      message                   = oncall.value.message
      settings                  = oncall.value.settings
      title                     = oncall.value.title
      url                       = oncall.value.url
    }
  }

  dynamic "opsgenie" {
    for_each = each.value.opsgenie != null ? each.value.opsgenie : []
    content {
      api_key                 = opsgenie.value.api_key
      auto_close              = opsgenie.value.auto_close
      description             = opsgenie.value.description
      disable_resolve_message = opsgenie.value.disable_resolve_message
      message                 = opsgenie.value.message
      override_priority       = opsgenie.value.override_priority
      dynamic "responders" {
        for_each = opsgenie.value.responders != null ? opsgenie.value.responders : []
        content {
          id       = responders.value.id
          name     = responders.value.name
          type     = responders.value.type
          username = responders.value.username
        }
      }
      send_tags_as = opsgenie.value.send_tags_as
      settings     = opsgenie.value.settings
      url          = opsgenie.value.url
    }
  }

  dynamic "pagerduty" {
    for_each = each.value.pagerduty != null ? each.value.pagerduty : []
    content {
      class                   = pagerduty.value.class
      client                  = pagerduty.value.client
      client_url              = pagerduty.value.client_url
      component               = pagerduty.value.component
      details                 = pagerduty.value.details
      disable_resolve_message = pagerduty.value.disable_resolve_message
      group                   = pagerduty.value.group
      integration_key         = pagerduty.value.integration_key
      settings                = pagerduty.value.settings
      severity                = pagerduty.value.severity
      source                  = pagerduty.value.source
      summary                 = pagerduty.value.summary
      url                     = pagerduty.value.url
    }
  }

  dynamic "pushover" {
    for_each = each.value.pushover != null ? each.value.pushover : []
    content {
      api_token               = pushover.value.api_token
      device                  = pushover.value.device
      disable_resolve_message = pushover.value.disable_resolve_message
      expire                  = pushover.value.expire
      message                 = pushover.value.message
      ok_priority             = pushover.value.ok_priority
      ok_sound                = pushover.value.ok_sound
      priority                = pushover.value.priority
      retry                   = pushover.value.retry
      settings                = pushover.value.settings
      sound                   = pushover.value.sound
      title                   = pushover.value.title
      upload_image            = pushover.value.upload_image
      user_key                = pushover.value.user_key
    }
  }

  dynamic "sensugo" {
    for_each = each.value.sensugo != null ? each.value.sensugo : []
    content {
      api_key                 = sensugo.value.api_key
      check                   = sensugo.value.check
      disable_resolve_message = sensugo.value.disable_resolve_message
      entity                  = sensugo.value.entity
      handler                 = sensugo.value.handler
      message                 = sensugo.value.message
      namespace               = sensugo.value.namespace
      settings                = sensugo.value.settings
      url                     = sensugo.value.url
    }
  }

  dynamic "slack" {
    for_each = each.value.slack != null ? each.value.slack : []
    content {
      color                   = slack.value.color
      disable_resolve_message = slack.value.disable_resolve_message
      endpoint_url            = slack.value.endpoint_url
      icon_emoji              = slack.value.icon_emoji
      icon_url                = slack.value.icon_url
      mention_channel         = slack.value.mention_channel
      mention_groups          = slack.value.mention_groups
      mention_users           = slack.value.mention_users
      recipient               = slack.value.recipient
      settings                = slack.value.settings
      text                    = slack.value.text
      title                   = slack.value.title
      token                   = slack.value.token
      url                     = slack.value.url
      username                = slack.value.username
    }
  }

  dynamic "sns" {
    for_each = each.value.sns != null ? each.value.sns : []
    content {
      access_key              = sns.value.access_key
      assume_role_arn         = sns.value.assume_role_arn
      auth_provider           = sns.value.auth_provider
      body                    = sns.value.body
      disable_resolve_message = sns.value.disable_resolve_message
      external_id             = sns.value.external_id
      message_format          = sns.value.message_format
      secret_key              = sns.value.secret_key
      settings                = sns.value.settings
      subject                 = sns.value.subject
      topic                   = sns.value.topic
    }
  }

  dynamic "teams" {
    for_each = each.value.teams != null ? each.value.teams : []
    content {
      disable_resolve_message = teams.value.disable_resolve_message
      message                 = teams.value.message
      section_title           = teams.value.section_title
      settings                = teams.value.settings
      title                   = teams.value.title
      url                     = teams.value.url
    }
  }

  dynamic "telegram" {
    for_each = each.value.telegram != null ? each.value.telegram : []
    content {
      chat_id                  = telegram.value.chat_id
      disable_notifications    = telegram.value.disable_notifications
      disable_resolve_message  = telegram.value.disable_resolve_message
      disable_web_page_preview = telegram.value.disable_web_page_preview
      message                  = telegram.value.message
      message_thread_id        = telegram.value.message_thread_id
      parse_mode               = telegram.value.parse_mode
      protect_content          = telegram.value.protect_content
      settings                 = telegram.value.settings
      token                    = telegram.value.token
    }
  }

  dynamic "threema" {
    for_each = each.value.threema != null ? each.value.threema : []
    content {
      api_secret              = threema.value.api_secret
      description             = threema.value.description
      disable_resolve_message = threema.value.disable_resolve_message
      gateway_id              = threema.value.gateway_id
      recipient_id            = threema.value.recipient_id
      settings                = threema.value.settings
      title                   = threema.value.title
    }
  }

  dynamic "victorops" {
    for_each = each.value.victorops != null ? each.value.victorops : []
    content {
      description             = victorops.value.description
      disable_resolve_message = victorops.value.disable_resolve_message
      message_type            = victorops.value.message_type
      settings                = victorops.value.settings
      title                   = victorops.value.title
      url                     = victorops.value.url
    }
  }

  dynamic "webex" {
    for_each = each.value.webex != null ? each.value.webex : []
    content {
      api_url                 = webex.value.api_url
      disable_resolve_message = webex.value.disable_resolve_message
      message                 = webex.value.message
      room_id                 = webex.value.room_id
      settings                = webex.value.settings
      token                   = webex.value.token
    }
  }

  dynamic "webhook" {
    for_each = each.value.webhook != null ? each.value.webhook : []
    content {
      authorization_credentials = webhook.value.authorization_credentials
      authorization_scheme      = webhook.value.authorization_scheme
      basic_auth_password       = webhook.value.basic_auth_password
      basic_auth_user           = webhook.value.basic_auth_user
      disable_resolve_message   = webhook.value.disable_resolve_message
      headers                   = webhook.value.headers
      dynamic "hmac_config" {
        for_each = webhook.value.hmac_config != null ? [webhook.value.hmac_config] : []
        content {
          header           = hmac_config.value.header
          secret           = hmac_config.value.secret
          timestamp_header = hmac_config.value.timestamp_header
        }
      }
      dynamic "http_config" {
        for_each = webhook.value.http_config != null ? [webhook.value.http_config] : []
        content {
          dynamic "oauth2" {
            for_each = http_config.value.oauth2 != null ? [http_config.value.oauth2] : []
            content {
              client_id       = oauth2.value.client_id
              client_secret   = oauth2.value.client_secret
              endpoint_params = oauth2.value.endpoint_params
              dynamic "proxy_config" {
                for_each = oauth2.value.proxy_config != null ? [oauth2.value.proxy_config] : []
                content {
                  no_proxy               = proxy_config.value.no_proxy
                  proxy_connect_header   = proxy_config.value.proxy_connect_header
                  proxy_from_environment = proxy_config.value.proxy_from_environment
                  proxy_url              = proxy_config.value.proxy_url
                }
              }
              scopes = oauth2.value.scopes
              dynamic "tls_config" {
                for_each = oauth2.value.tls_config != null ? [oauth2.value.tls_config] : []
                content {
                  ca_certificate       = tls_config.value.ca_certificate
                  client_certificate   = tls_config.value.client_certificate
                  client_key           = tls_config.value.client_key
                  insecure_skip_verify = tls_config.value.insecure_skip_verify
                }
              }
              token_url = oauth2.value.token_url
            }
          }
        }
      }
      http_method = webhook.value.http_method
      max_alerts  = webhook.value.max_alerts
      message     = webhook.value.message
      dynamic "payload" {
        for_each = webhook.value.payload != null ? [webhook.value.payload] : []
        content {
          template = payload.value.template
          vars     = payload.value.vars
        }
      }
      settings   = webhook.value.settings
      title      = webhook.value.title
      tls_config = webhook.value.tls_config
      url        = webhook.value.url
    }
  }

  dynamic "wecom" {
    for_each = each.value.wecom != null ? each.value.wecom : []
    content {
      agent_id                = wecom.value.agent_id
      corp_id                 = wecom.value.corp_id
      disable_resolve_message = wecom.value.disable_resolve_message
      message                 = wecom.value.message
      msg_type                = wecom.value.msg_type
      secret                  = wecom.value.secret
      settings                = wecom.value.settings
      title                   = wecom.value.title
      to_user                 = wecom.value.to_user
      url                     = wecom.value.url
    }
  }
}

