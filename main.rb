require './telegram'
require './what_is_my_ip'

whois = WhatISMyApi.new
telegram = TelegramBot.new
telegram.inform whois.info