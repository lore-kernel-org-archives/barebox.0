Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9tHt-0001m0-8Z
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 07:47:37 +0000
Date: Fri, 7 Sep 2012 09:47:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120907074734.GO26594@pengutronix.de>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <20120907065703.GM26594@pengutronix.de>
 <20120907093000.35f2227d@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120907093000.35f2227d@eb-e6520>
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
Subject: Re: [PATCH 1/3] fec: restart autoneg at open instead of init
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 07, 2012 at 09:30:00AM +0200, Eric B=E9nard wrote:
> Hi Sascha,
> =

> Le Fri, 7 Sep 2012 08:57:03 +0200,
> Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> =

> > Hi Eric,
> > =

> > On Thu, Sep 06, 2012 at 09:39:29PM +0200, Eric B=E9nard wrote:
> > > this saves some time during boot when ethernet is not needed in bareb=
ox
> > =

> > Is this really significant on your hardware? I made a measurement here
> > and the miidev_restart_aneg() takes 130us on an i.MX27 board.
> > =

> > The original intention of doing it at init time was that autonegotation
> > is already completed when we actually use the network. And this time
> > really is significant:
> > =

> > without the patch:
> > =

> > barebox@Phytec phyCORE-i.MX27:/ time ping 192.168.23.4
> > warning: No MAC address set. Using random address 62:FE:FE:0B:09:A8
> > phy0: Link is up - 100/Full
> > host 192.168.23.4 is alive
> > time: 10ms
> > =

> > with the patch:
> > =

> > barebox@Phytec phyCORE-i.MX27:/ time ping 192.168.23.4
> > warning: No MAC address set. Using random address A6:1B:AB:80:FA:E7
> > phy0: Link is up - 100/Full
> > host 192.168.23.4 is alive
> > time: 2040ms
> > =

> that strange. I don't see why miidev_restart_aneg() would take less
> time at boot than at open.

Well, it does not really take longer. The difference is that if you are
sitting before your board it usually takes a few seconds to interrupt
autoboot, think what you want to do, and finally enter some network
command. In the meantime autonegotiation will be complete. If we start
autonegotiation at open time, we will always have to wait for the full
autonegotiation time after starting the first network command.

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
