Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYs29-0005qZ-9J
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 09:16:29 +0000
Received: by mail-wm0-x231.google.com with SMTP id g62so18834274wme.1
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 01:16:08 -0800 (PST)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <CABQt-UkFnrhYDYTPH8fYJqHUi-iSGh0+4rYMtZy5BC3rWJ8yjg@mail.gmail.com>
 (Philippe Leduc's message of "Wed, 24 Feb 2016 14:46:08 +0100")
References: <CABQt-UnnTJffkX_6hCXOjh+hgkjiGausWuuCwwEWncvpoiTqAQ@mail.gmail.com>
 <20160223083236.GA3939@pengutronix.de>
 <CABQt-U=+f_5EJvw=9FFbw2cR2A54te6WN3Dgn4jtyuoPvC+CzQ@mail.gmail.com>
 <CABQt-U=jXuJMJY1Uew4cVa2Ap=dpX9rzW91JbiuRSDpeuf+C0g@mail.gmail.com>
 <20160224111516.GM3939@pengutronix.de>
 <CABQt-UnC4FvOPwkHJ8UtefBDLkc65nTr7hVSJ6vPgBYASWAS5w@mail.gmail.com>
 <20160224124343.GO3939@pengutronix.de>
 <CABQt-Ukb1thMQYOwCmuNmfdYTni6JeT9wKxtMH45Tfvv0mLB9w@mail.gmail.com>
 <CABQt-UkFnrhYDYTPH8fYJqHUi-iSGh0+4rYMtZy5BC3rWJ8yjg@mail.gmail.com>
Date: Thu, 25 Feb 2016 10:16:05 +0100
Message-ID: <87io1d176y.fsf@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Help configuring i.MX6 IPUv3 with a parrallel display
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

> Note that splash utility continue to freeze the board.

I'm on an older Barebox (2015.12.0) and here splash works. I do
something like this in my env/bin/init:

        splash -x 550 -y 500 -b 0xffffff /env/logo.png
        pwm_02080000.period_ns=200000
        pwm_02080000.duty_ns=160000  
        pwm_02080000.enable=1
        fb0.enable=1
        gpio_set_value 191 1

$ file env/logo.png 
env/logo.png: PNG image data, 194 x 52, 8-bit/color RGB, non-interlaced

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
