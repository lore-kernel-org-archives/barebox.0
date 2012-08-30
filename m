Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T74lU-0004Pm-Rt
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 13:26:33 +0000
Date: Thu, 30 Aug 2012 15:26:31 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20120830132631.GA20930@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346329850-3866-4-git-send-email-s.trumtrar@pengutronix.de>
 <20120830150350.4ba00098@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120830150350.4ba00098@eb-e6520>
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
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

> Hi Steffen,
> =

> Le Thu, 30 Aug 2012 14:30:50 +0200,
> Steffen Trumtrar <s.trumtrar@pengutronix.de> a =E9crit :
> =

> > In usb_hub_configure the hub is asked for its descriptor and among othe=
r things
> > its bPwrOn2PwrGood time. In the actual hub_power_on function this infor=
mation
> > was not used and a hardcoded value was used instead. For some hubs this=
 delay
> > is to short. So, use the delay the hub wants.
> > =

> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > ---
> >  drivers/usb/core/usb.c |    3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> > index 81ae9f1..48bc121 100644
> > --- a/drivers/usb/core/usb.c
> > +++ b/drivers/usb/core/usb.c
> > @@ -948,7 +948,8 @@ static void usb_hub_power_on(struct usb_hub_device =
*hub)
> >  		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
> >  		USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
> >  	}
> > -	mdelay(20);
> > +	/* power on is encoded in 2ms increments -> times 2 for the actual de=
lay */
> > +	mdelay(hub->desc.bPwrOn2PwrGood*2);
> >  }
> >  =

> >  #define MAX_TRIES 5
> =

> I tested you patch on my MX35 board and it doesn't work (the hub
> requires 50 ms, the mdelay is thus 100 ms and in the end that's not
> enough to see the USB mass storage connected to the hub) but
> mdelay(hub->desc.bPwrOn2PwrGood*3) works fine.
> Is it possible to increase this delay (*3 instead of *2) ?
> =

> Thanks
> Eric
> =


Where does your 50ms come from? From the debug messages of the usb-tool?
It has the same factor of times 2.
Have you tried hardcoding mdelay(100)?
I first thought about doing it the same way linux does it and use
max(pwrgood, 100). But 100ms minimum wouldn't help you either.
I don't really like the idea of just guessing a value. But if necessary,
I'm surely willing to change this patch.

Greetings
Steffen

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
