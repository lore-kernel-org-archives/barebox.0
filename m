Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6NkC-0003sP-Ev
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 15:30:21 +0000
Received: from mail423.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 7E17A1050E08
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2012 17:35:24 +0200 (CEST)
Date: Tue, 28 Aug 2012 17:30:16 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120828173016.35ee0219@eb-e6520>
In-Reply-To: <1346167466-10098-1-git-send-email-eric@eukrea.com>
References: <1346167466-10098-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/2] usb_hub_power_on: wait for the power to be stable
To: barebox@lists.infradead.org

Hi Sascha,

Le Tue, 28 Aug 2012 17:24:25 +0200,
Eric B=E9nard <eric@eukrea.com> a =E9crit :

> - the 100ms value is taken from Linux & u-boot

and in fact after a few more tests without debug enabled, it seems that
a 200 ms value would be needed to get it working reliable with several
peripherals  so please wait for v2 before applying thyis patch.

Thanks,
Eric
> - without this, I don't see peripherals connected to a hub
> connected to an i.MX35's host port.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/usb/core/usb.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> =

> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index a5075d5..ae3eb88 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -948,7 +948,7 @@ static void usb_hub_power_on(struct usb_hub_device *h=
ub)
>  		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
>  		USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
>  	}
> -	mdelay(20);
> +	mdelay(100);
>  }
>  =

>  #define MAX_TRIES 5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
