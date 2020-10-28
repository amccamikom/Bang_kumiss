require 'dotenv/load'
require 'telegram/bot'
 
token = ENV['BOT_TOKEN']
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start@kumiss_bot', '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "
      Halooo #{message.from.first_name}! selamat datang di AMCC jangan lupa pantengin web kita amcc.or.id yah, ada banyak info menarik seputar amcc di sana
      ========================
Informasi command yang tersedia kunjungi /help
jika informasi kurang jelas bisa menghubungi Mimin Ayeee... ^_^
     ")
    when '/pelatihan@kumiss_bot', '/pelatihan'
      bot.api.send_message(chat_id: message.chat.id, text: "sabar yak, pelatihan di infokan setelah firstmeet")
 when '/amccmerch@kumiss_bot', '/amccmerch'
      bot.api.send_message(chat_id: message.chat.id, text: "silahkan kaka informasi lebih detail mengenai merchandise bisa dilihat di  IG @amcc.store ...")
    when '/firstmeetkumiss_bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Cek IG @amccamikom yah, semua info ada disana...
      ")
     when '/status@kumiss_bot', '/status'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Cieeeee yang kepo status ... 
      ")
     when '/info@kumiss_bot', '/info'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Bot masih dalam pengembangan, lamanya respon dikarenakan server yang masih lokal... 
      ")
      when '/lagiapa@kumiss_bot', '/lagiapa'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Lagi ngantuk nih, pengen bobo.. 
      ")
      when 'malming nih'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        iya nih malam minggu, emang kenapa? 
      ")
    when 'bot gak kemana gitu?'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        kagak deh, bot di rumah aja, kan bot anak rumahan 
      ")
      when 'jangan nakal'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        ampun deh om, bot anak baik2 kok, kalau kagak percaya tanyain aja pak koor @devryk 
      ")
      when 'iya bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        nah kan ...  
      ")
      when 'bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Iya ada apa? 
      ")
      when 'bangun'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Iya ini udah bangun 
      ")
      
      when '/help@kumiss_bot', '/help'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Daftar Perintah Chatbot
        ========================
    /start - untuk memulai bot
    /pelatihan - untuk melihat jadwal pelatihan
    /firstmeet - untuk melihat info terkini firstmeet
    /lokasifirstmeet - untuk melihat lokasi firstmeet
    /amccmerch - untuk melihat official merchandise amcc 
    /info - untuk informasi pengembangan chatbot  
      ")
    when '/lokasifirstmeet@kumiss_bot', '/lokasifirstmeet'
      bot.api.send_location(chat_id: message.chat.id, latitude: -7.759356, longitude: 110.408348)
    end
    when Telegram::Bot::Types::CallbackQuery
     if message.data == 'help'
       bot.api.send_message(chat_id: message.from.id, text: "/help")
     end
   when Telegram::Bot::Types::Message
     kb = [
       Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Amcc Website', url: 'https://amcc.or.id/'),
       Telegram::Bot::Types::InlineKeyboardButton.new(text: 'ITC (Introduction To Computer)', url: 'https://itc.amcc.or.id/'),
       Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Help', callback_data: 'help'),
     ]
     markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
     bot.api.send_message(chat_id: message.chat.id, text: 'List Bantuan', reply_markup: markup)
   end
  end
end
