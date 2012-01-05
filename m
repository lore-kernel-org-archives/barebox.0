Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Riigk-0007Py-1L
 for barebox@lists.infradead.org; Thu, 05 Jan 2012 08:28:43 +0000
Date: Thu, 5 Jan 2012 09:28:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120105082830.GX5446@pengutronix.de>
References: <20120104114533.GB1810@game.jcrosoft.org>
 <1325689276-12863-1-git-send-email-eric@eukrea.com>
 <20120104163755.GW5446@pengutronix.de>
 <20120104180423.5d13b88c@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120104180423.5d13b88c@eb-e6520>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] loadb: only try to change the baudrate if the driver has
 this feature
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 04, 2012 at 06:04:23PM +0100, Eric B=E9nard wrote:
> Hi Sascha,
> =

> Le Wed, 4 Jan 2012 17:37:56 +0100,
> Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> =

> > On Wed, Jan 04, 2012 at 04:01:16PM +0100, Eric B=E9nard wrote:
> > > this allows loadb to work over usbserial gadget
> > =

> > I like the original approach better. The baudrate setting has no meaning
> > in hardware for the usb serial gadget. This means that we can happily
> > support every baudrate requested by adding a fake setbrg function.
> > =

> > If we had some global console_setbrg function I would agree
> > Jean-Christophe, this function should return cdev->setbrg or
> > -ENOSYS if the driver does not have a setbrg function. Still the
> > usb gadget serial driver should have a fake setbrg function for
> > the reason explained above.
> > =

> > This command could be improved by doing all this baudrate stuff only
> > when the -b option is given. This way we default to the current
> > baudrate (which seems sane in the cases I can think of)
> > =

> OK so in conclusion, what do you prefer : =

> - applying " u_serial: add setbrg to be able to use loadb & co"
> - a fix for loadb to only handle baudrate change if -b option is given
> - or maybe both options ? ;-)

Yes, both. The -b option patch was just something I saw when looking at
your patch.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
