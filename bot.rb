require "sinatra/base"

class WhatsAppBot < Sinatra::Base
	use Rack::TwilioWebhookAuthentication, ENV['TWILIO_AUTH_TOKEN'], '/bot'

	get '/' do
	    "Hello World!"
	end

	post '/bot' do
	  	body = params["Body"].downcase
	  	response = Twilio::TwiML::MessagingResponse.new
	  	response.message do |message|
	      
	  		#if body.include?("dog")
		   	#      message.body(Dog.fact)
		   	#      message.media(Dog.picture)
	    	#end

		    if body.to_i.eql? 1
		       message.body(Riz_au_poisson.desc)
		    end

		    if body.to_i.eql? 2
		       message.body(Riz_a_la_viande.desc)
		    end

		    if body.to_i.eql? 3
		       message.body(Yassa.desc)
		    end

		    if body.to_i.eql? 4
		       message.body(Mafe_a_la_viande.desc)
		    end
		    if body.to_i.eql? 5
		       message.body(Thiou_carry.desc)
		    end
		    if body.to_i.eql? 6
		       message.body(Paella_revisite.desc)
		    end
		    if body.to_i.eql? 7
		       message.body(Dakhine.desc)
		    end
		    if body.to_i.eql? 8
		       message.body(Ces_bon.desc)
		    end

		    if body.to_i.eql? 9
		       message.body(Soupe_kandia.desc)
		    end

		    if body.to_i.eql? 10
		       message.body(Thiou_diwtir.desc)
		    end

		    if body.to_i.eql? 11
		       message.body(Athieke_poisson_braise.desc)
		    end

		    if body.to_i.eql? 12
		       message.body(Athieke_poulet_braise.desc)
		    end

		    if body.to_i.eql? 13
		       message.body(Mbaxalou_narr.desc)
		    end

		    if body.to_i.eql? 14
		       message.body(Thiebou_ketiakh.desc)
		    end

		    if body.to_i.eql? 15
		       message.body(Mbaxalou_saloum.desc)
		    end

		    if body.to_i.eql? 16
		       message.body(Mafe_kandia.desc)
		    end

		    if !(body.include?("bot WhatsAppBot") || body.to_i.eql?(1) || body.to_i.eql?(2) || body.to_i.eql?(3) || body.to_i.eql?(4) || body.to_i.eql?(5) || body.to_i.eql?(6) || body.to_i.eql?(7) || body.to_i.eql?(8) || body.to_i.eql?(9) || body.to_i.eql?(10) || body.to_i.eql?(11) || body.to_i.eql?(12) || body.to_i.eql?(13) || body.to_i.eql?(14) || body.to_i.eql?(15) || body.to_i.eql?(16) )
		        message.body("Bonjour, ci-desous vous avez notre large gamme de recettes. Pour consulter chaque recette, veuillez choisir un numéro:
1 - Riz au poisson
2 - Riz à la viande
3 - YASSA
4 - MAFE A LA VIANDE
5 - THIOU CURRY
6 - PAELLA REVISITE
7 - DAKHINE
8 - C’EST BON
9 - SOUPE KANDIA
10 - THIOU DIWTIR
11 - ATIEKE POISSON BRAISE
12 - ATIEKE POULET BRAISE
13 - MBAXALOU NARR
14 - THIEBOU KETIAKH
15 - MBAXALOU SALOUM
16 - MAFE KANDIA

		        ")
		    end
	    end
	    content_type "text/xml"
    	response.to_xml
	end

end

require './plats.rb'

