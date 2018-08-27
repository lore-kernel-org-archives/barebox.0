Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuCKD-0005N5-4k
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 07:52:38 +0000
Date: Mon, 27 Aug 2018 09:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180827075224.zmouhtgevz4masrd@pengutronix.de>
References: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
 <20180824170407.geeahhgkqntovpi5@pengutronix.de>
 <20180824195556.jihqkka6bj5tbqpq@pengutronix.de>
 <CAOMZO5AMUiaPyaGcfNz2NtApwgthYGSYSH0Xx94F83q1qESKxQ@mail.gmail.com>
 <20180827074741.rnmenb6mvjzv2qto@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180827074741.rnmenb6mvjzv2qto@pengutronix.de>
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
Subject: Re: [PATCH] imx{5,6}: reset otg port after usb-serial boot
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 27, 2018 at 09:47:41AM +0200, Michael Grzeschik wrote:
> On Fri, Aug 24, 2018 at 05:18:02PM -0300, Fabio Estevam wrote:
> > Hi Michael,
> > 
> > On Fri, Aug 24, 2018 at 4:55 PM, Michael Grzeschik <mgr@pengutronix.de> wrote:
> > 
> > > I get that it is not safe to toggle bits if the clock is not
> > > there. We could check for the bootsource. Is it possible to
> > > ensure that we are started by imx-usb-loader?
> > 
> > It is possible to determine if we have started via USB download mode.
> > 
> > Check the is_boot_from_usb() implementation in U-Boot for a reference.
> 
> Right, So it seems to be safe to reach for the phys registers on mx6.
> 
> On mx5 and similar we have a nop phy and the only way to
> communicate with it is through usbmisc, which is also in the
> register space that leads to a hang if one clock is missing.
> 
> I will search for another solutions on those SoCs.

It's not necessary to ask for the bootsource. You just have to enable
the clocks necessary to access the USB registers. Or the other way
round: When the clocks are not enabled already, you could assume we have
not booted from USB.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
