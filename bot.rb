require 'telegram_bot'
token = '1590560448:AAGp_iwzVp47-RENm0fTIfmr9wqZABPfdO0'
bot = TelegramBot.new(token: token)

bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

  message.reply do |reply|
    case command
    when /list/i
      reply.text = "[/zuck], [/tmkc], [/govt], [/wd], [/list], [/heavy], [/cong], [/greet], [/swear], [/rfor], [/sarthak], [/janit], [/manas], [/yash], [/sleep]"
    when /zuck/i
        reply.text = "Mark Zuckerberg की मा की चूत"
    when /tmkc/i
        reply.text = "तेरी मा की चूत"
    when /govt/i
        reply.text = "Ye bik gayi hai gormint, ab gormint mein kuch nahi. Ye behenchod saare milke humko pagal bana rahe hain madarchod ke bacche. Itne gaandphati ke hain ye bhadve."
    when /wd/i
        reply.text = "Waell Done!"
    when /heavy/i
        reply.text = "Tam toh bade heavy driver hoe"
    when /cong/i
        reply.text = "Congrates bhai!"
    when /rfor/i
      reply.text = "Randi @srivsarthak"
    when /swear/i
        reply.text = "Abey jaa na bhosdike"
    when /sarthak/i
        reply.text = "Abey jaldi aaja bhen ke lode @srivsarthak"
    when /janit/i
        reply.text = "Abey jaldi aaja bhen ke lode @janitchawla"
    when /manas/i
        reply.text = "Abey jaldi aaja bhen ke lode @manas502"
    when /yash/i
        reply.text = "Abey jaldi aaja bhen ke lode @ywalia01"
    when /sleep/i
        reply.text = "Abey so ke toh dekh bkl @srivsarthak"
    when /greet/i
      greetings = ['bonjour', 'hola', 'hallo', 'sveiki', 'namaste', 'salaam', 'szia', 'halo', 'ciao']
      reply.text = "#{greetings.sample.capitalize} #{"bsdk"}, #{message.from.first_name}!"
    else
      reply.text = "I have no idea what #{command.inspect} means."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end
