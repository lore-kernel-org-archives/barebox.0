Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T75Tx-0005L6-9o
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 14:12:29 +0000
Date: Thu, 30 Aug 2012 16:12:27 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20120830141227.GB20930@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
 <1346329850-3866-4-git-send-email-s.trumtrar@pengutronix.de>
 <20120830150350.4ba00098@eb-e6520>
 <20120830132631.GA20930@pengutronix.de>
 <20120830155932.7f57c80d@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120830155932.7f57c80d@eb-e6520>
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

>On Thu, Aug 30, 2012 at 03:59:32PM +0200, Eric B=E9nard wrote:
> Hi Steffen,
> =

> Le Thu, 30 Aug 2012 15:26:31 +0200,
> Steffen Trumtrar <s.trumtrar@pengutronix.de> a =E9crit :
> > Where does your 50ms come from? From the debug messages of the usb-tool?
> from a printf of bPwrOn2PwrGood
> =

> > It has the same factor of times 2.
> yes, so in the end the hub is supposed to need 100ms to enable power.

Okay. So you have an equal setting like me.

> =

> > Have you tried hardcoding mdelay(100)?
> yes -> doesn't work (see previous patch I sent 2 days ago on the same
> subject).

Ah, okay.

> > I first thought about doing it the same way linux does it and use
> > max(pwrgood, 100). But 100ms minimum wouldn't help you either.
> > I don't really like the idea of just guessing a value. But if necessary,
> > I'm surely willing to change this patch.
> =

> with Linux's 100ms that works fine on the same board (under Linux). So
> I'll check the if the mdelay(100) in barebox is really a 100ms timing
> because the problem's root may be here !

As both, barebox and linux, reset the hub and wait, it seems like the root
of the problem, yes.

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
