# Bang_kumiss
Bot sederhana untuk membantu member AMCC yang dibangun dalam bahasa Ruby.

### Persiapan
1. Buat bot pada BotFather
- Tambahkan akun BotFather di Telegram https://t.me/botfather
- Ikuti step pada dokumentasi BotFather https://core.telegram.org/bots#6-botfather
2. Ambil token API bot telegramnya
3. Install Ruby
4. Copy `.env.sample` menjadi `.env` dan sesuaikan token API bot
5. Install Library yang diperlukan
```shell
$ gem install dotenv telegram-bot-ruby
```

### Menjalankan Bot
```shell
$ ruby namafile.rb
```

### Directory Structure
```
Bang_kumiss
|-- bot                             # Bot folder
|   |-- .env.sample                 # .env setting for Telegram Bot API
|   |-- bot                         # Bot Program
```

### Tech Stack
- Ruby
- Telegram Bot API
