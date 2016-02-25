Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x234.google.com ([2a00:1450:400c:c09::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYrXt-0002KT-Ct
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 08:45:14 +0000
Received: by mail-wm0-x234.google.com with SMTP id g62so17630879wme.1
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 00:44:52 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160224181515.GS3939@pengutronix.de>
References: <CABQt-UnnTJffkX_6hCXOjh+hgkjiGausWuuCwwEWncvpoiTqAQ@mail.gmail.com>
 <20160223083236.GA3939@pengutronix.de>
 <CABQt-U=+f_5EJvw=9FFbw2cR2A54te6WN3Dgn4jtyuoPvC+CzQ@mail.gmail.com>
 <CABQt-U=jXuJMJY1Uew4cVa2Ap=dpX9rzW91JbiuRSDpeuf+C0g@mail.gmail.com>
 <20160224111516.GM3939@pengutronix.de>
 <CABQt-UnC4FvOPwkHJ8UtefBDLkc65nTr7hVSJ6vPgBYASWAS5w@mail.gmail.com>
 <20160224124343.GO3939@pengutronix.de>
 <CABQt-Ukb1thMQYOwCmuNmfdYTni6JeT9wKxtMH45Tfvv0mLB9w@mail.gmail.com>
 <CABQt-UkFnrhYDYTPH8fYJqHUi-iSGh0+4rYMtZy5BC3rWJ8yjg@mail.gmail.com>
 <20160224181515.GS3939@pengutronix.de>
Date: Thu, 25 Feb 2016 09:44:51 +0100
Message-ID: <CABQt-U=X5SDmpRoc=FS7_DSuQz6HWmAw3viuiLsiUocSnEBd1Q@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

There is no backtrace (but I do not try to increase the log level). I
re-test the behavior and splash crash only on PNG image (I enabled
picoPNG).


Philippe LEDUC
ledphilippe@gmail.com


2016-02-24 19:15 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Wed, Feb 24, 2016 at 02:46:08PM +0100, Philippe Leduc wrote:
>> Victory!
>>
>> I checked the timings with an oscilloscope by using Linux and
>> everything except one pin is identical: LCD_ENABLE ^^ ' . It is a GPIO
>> that let the display in sleep mode to limit consumption.
>>
>> Note that splash utility continue to freeze the board.
>
> No backtrace? Is it a BMP or a PNG that you are trying to show?
>
>>
>> About the 'driver' that parse the dt to expose the timings, I'll clean
>> up and let you review it (this time I'll use git to send you the patch
>> :) )
>
> Looking forward to it. I think it we had the issue with the missing
> parallel display support before.
>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
