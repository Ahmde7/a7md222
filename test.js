// استدعاء المكتبات المطلوبة
require('dotenv').config(); 
const { Client, GatewayIntentBits } = require('discord.js');

// إنشاء عميل جديد للبوت مع تحديد الصلاحيات (Intents)
const client = new Client({ 
    intents: [
        GatewayIntentBits.Guilds, 
        GatewayIntentBits.GuildMessages, 
        GatewayIntentBits.MessageContent
    ] 
});

// حدث يعمل عند تشغيل البوت بنجاح
client.once('ready', () => {
    console.log(`تم تسجيل الدخول بنجاح باسم: ${client.user.tag}`);
});

// حدث يستمع للرسائل (مثال: الرد على كلمة "ping")
client.on('messageCreate', (message) => {
    // تجاهل رسائل البوتات الأخرى
    if (message.author.bot) return;

    // الرد إذا أرسل المستخدم كلمة ping
    if (message.content.toLowerCase() === 'ping') {
        message.reply('Pong! 🏓');
    }
});

// تسجيل الدخول باستخدام التوكن من ملف البيئة
client.login(process.env.BOT_TOKEN);
