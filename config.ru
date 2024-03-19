require 'bundler'
Bundler.require

Envyable.load('./config/env.yml')

require './bot.rb'
run WhatsAppBot

# Mame Penda est un bot whatsapp conçu avec du Ruby-Sinatra et connecté à l'api de twilio, elle permet de découvrir certaines recettes de plats sénégalais.
