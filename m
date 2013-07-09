Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwd7C-0007tb-1X
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 18:58:19 +0000
Received: from mail605.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 715D7FFAB5A
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 20:57:56 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20130709174333.GY516@pengutronix.de>
Date: Wed, 10 Jul 2013 02:57:51 +0800
Message-Id: <5C73F356-67C8-4D18-B0B8-3D0BE89794A7@jcrosoft.com>
References: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
 <20130709174333.GY516@pengutronix.de>
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
Subject: Re: [PATCH] Force set console baudrate
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexey Galakhov <agalakhov@gmail.com>


On Jul 10, 2013, at 1:43 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Jul 09, 2013 at 09:22:10PM +0600, Alexey Galakhov wrote:
>> Most serial drivers require setbrg() to be called at least once. Call them
>> just after the device has been added.
>> 
>> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>

This is wrong if you do this at boot which means you force the same baudrate
on all the console

We must do this only is enable by default of via shell

and some console may not need the setbrg call back (keyboard or fbdev as example)

Also if we want to use a rs232 for controlling a mcu the baud rate may not be the
CONFIG_BAUDRATE

so force it at register is wrong

Best Regards,
J.
> 
> Applied, thanks.
> 
> Sascha
> 
>> ---
>> common/console.c |    1 +
>> 1 file changed, 1 insertion(+)
>> 
>> diff --git a/common/console.c b/common/console.c
>> index a0a06f6..abf5322 100644
>> --- a/common/console.c
>> +++ b/common/console.c
>> @@ -147,6 +147,7 @@ int console_register(struct console_device *newcdev)
>> 		newcdev->baudrate = CONFIG_BAUDRATE;
>> 		dev_add_param_int(dev, "baudrate", console_baudrate_set,
>> 			NULL, &newcdev->baudrate, "%u", newcdev);
>> +		newcdev->setbrg(newcdev, newcdev->baudrate);
>> 	}
>> 
>> 	dev_add_param(dev, "active", console_std_set, NULL, 0);
>> -- 
>> 1.7.10.4
>> 
>> 
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
