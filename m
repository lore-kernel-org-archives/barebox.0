Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T74Pa-0003Ln-NC
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 13:03:56 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 6729610583BF
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2012 15:09:02 +0200 (CEST)
Date: Thu, 30 Aug 2012 15:03:50 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120830150350.4ba00098@eb-e6520>
In-Reply-To: <1346329850-3866-4-git-send-email-s.trumtrar@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346329850-3866-4-git-send-email-s.trumtrar@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] usb: use ep-specific pwrgood delay
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen,

Le Thu, 30 Aug 2012 14:30:50 +0200,
Steffen Trumtrar <s.trumtrar@pengutronix.de> a =E9crit :

> In usb_hub_configure the hub is asked for its descriptor and among other =
things
> its bPwrOn2PwrGood time. In the actual hub_power_on function this informa=
tion
> was not used and a hardcoded value was used instead. For some hubs this d=
elay
> is to short. So, use the delay the hub wants.
> =

> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/usb/core/usb.c |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 81ae9f1..48bc121 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -948,7 +948,8 @@ static void usb_hub_power_on(struct usb_hub_device *h=
ub)
>  		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
>  		USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
>  	}
> -	mdelay(20);
> +	/* power on is encoded in 2ms increments -> times 2 for the actual dela=
y */
> +	mdelay(hub->desc.bPwrOn2PwrGood*2);
>  }
>  =

>  #define MAX_TRIES 5

I tested you patch on my MX35 board and it doesn't work (the hub
requires 50 ms, the mdelay is thus 100 ms and in the end that's not
enough to see the USB mass storage connected to the hub) but
mdelay(hub->desc.bPwrOn2PwrGood*3) works fine.
Is it possible to increase this delay (*3 instead of *2) ?

Thanks
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
