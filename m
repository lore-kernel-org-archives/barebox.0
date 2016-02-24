Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYZlu-0003MA-GL
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 13:46:35 +0000
Received: by mail-wm0-x231.google.com with SMTP id g62so272305985wme.1
 for <barebox@lists.infradead.org>; Wed, 24 Feb 2016 05:46:10 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CABQt-Ukb1thMQYOwCmuNmfdYTni6JeT9wKxtMH45Tfvv0mLB9w@mail.gmail.com>
References: <CABQt-UnnTJffkX_6hCXOjh+hgkjiGausWuuCwwEWncvpoiTqAQ@mail.gmail.com>
 <20160223083236.GA3939@pengutronix.de>
 <CABQt-U=+f_5EJvw=9FFbw2cR2A54te6WN3Dgn4jtyuoPvC+CzQ@mail.gmail.com>
 <CABQt-U=jXuJMJY1Uew4cVa2Ap=dpX9rzW91JbiuRSDpeuf+C0g@mail.gmail.com>
 <20160224111516.GM3939@pengutronix.de>
 <CABQt-UnC4FvOPwkHJ8UtefBDLkc65nTr7hVSJ6vPgBYASWAS5w@mail.gmail.com>
 <20160224124343.GO3939@pengutronix.de>
 <CABQt-Ukb1thMQYOwCmuNmfdYTni6JeT9wKxtMH45Tfvv0mLB9w@mail.gmail.com>
Date: Wed, 24 Feb 2016 14:46:08 +0100
Message-ID: <CABQt-UkFnrhYDYTPH8fYJqHUi-iSGh0+4rYMtZy5BC3rWJ8yjg@mail.gmail.com>
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

Victory!

I checked the timings with an oscilloscope by using Linux and
everything except one pin is identical: LCD_ENABLE ^^ ' . It is a GPIO
that let the display in sleep mode to limit consumption.

Note that splash utility continue to freeze the board.

About the 'driver' that parse the dt to expose the timings, I'll clean
up and let you review it (this time I'll use git to send you the patch
:) ). I



Philippe LEDUC
ledphilippe@gmail.com


2016-02-24 13:50 GMT+01:00 Philippe Leduc <ledphilippe@gmail.com>:
> Same result with memset or cp : the screen stay white. I'll recheck my
> timings. Could it be related with the freeze of the splash utility?
>
> BTW, it seems that of_get_display_timings() can't manage ranges of
> datas as mentionned in the binding doc (display-timings.txt).
> Philippe LEDUC
> ledphilippe@gmail.com
>
>
> 2016-02-24 13:43 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
>> On Wed, Feb 24, 2016 at 01:39:25PM +0100, Philippe Leduc wrote:
>>> > You could try setting it to
>>> V4L2_PIX_FMT_RGB24 manually in ipu_crtc_mode_set().
>>> It is working with this trick and I do not get any error:
>>>
>>> Unfortunately, the display stay white... I tried to write it with "mw
>>> -d /dev/fb0 0xXXXXXXXX +0x40000" and splash freeze the board.
>>
>> Try 'cp /dev/ram0 /dev/fb0' or 'memset -d /dev/fb0 0x0 0x55 1M'. With
>> 'mw' you can only write single words which only gives you some dots in
>> one screen corner.
>>
>> Sascha
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
