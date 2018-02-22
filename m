Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eol8s-0002W9-Hu
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 07:18:12 +0000
Date: Thu, 22 Feb 2018 08:17:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180222071758.hkyimkehvbkgb5cx@pengutronix.de>
References: <20180216073946.1120-1-s.hauer@pengutronix.de>
 <075169cf-a231-eb73-427a-65c37b8d5465@schmidt-andreas.de>
 <20180219065402.dbiv3vke2kqwhfdj@pengutronix.de>
 <b7c837eb63fe7d64236a54b5da612904@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7c837eb63fe7d64236a54b5da612904@schmidt-andreas.de>
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
Subject: Re: [PATCH] net: cpsw: remove unnecessary mdiobus_scan()
To: list@schmidt-andreas.de
Cc: barebox@lists.infradead.org

On Mon, Feb 19, 2018 at 12:08:34PM +0100, list@schmidt-andreas.de wrote:
> On 2018-02-19 07:54, Sascha Hauer wrote:
> > On Sat, Feb 17, 2018 at 10:18:16AM +0100, Andreas Schmidt wrote:
> [...]
> > > On 16.02.2018 08:39, Sascha Hauer wrote:
> > > > No need to call mdiobus_scan() manually. it is called from
> > > > phy_device_connect() already in cpsw_open() which does all
> > > > the magic to connect a network device with its phy.
> > > You added call of mdiobus_scan to check if the slave has valid phy,
> > > I guess.
> > > Or I misunderstood your commit:
> > > b2568de82d62c18fd5dc8affb0e4dc050403c498
> > > net: cpsw: ignore error on slave setup ?
> > > 
> > > I guess it should work in follow:
> > > If slave has a valid phy (determined by mdiobus_scan), slave will be
> > > continue to register (call eth_register),
> > > if not, cpsw_clave_setup function will exit with an error and next
> > > slave
> > > will be try to register.
> > 
> > You're right. I have overlooked the case that we do not want to register
> > ethernet devices for slaves which do not have a valid phy.
> > 
> > In this case, how about the following variant?
> Yes, it's better. I tested it with fixed-link and with real phy and it
> works.
> Except a little bug, see comments below.

Ok, applied with your fixup added.

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
