Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGrMG-0003an-87
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 13:08:57 +0000
Date: Wed, 26 Sep 2012 15:08:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926130853.GP1322@pengutronix.de>
References: <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
 <1348660411-9210-1-git-send-email-plagnioj@jcrosoft.com>
 <20120926124305.GO1322@pengutronix.de>
 <1348663849.3370.5.camel@coredoba.hi.pengutronix.de>
 <20120926130353.GQ26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120926130353.GQ26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 3/3] net/eth: fix link handling
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 03:03:53PM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> On 14:50 Wed 26 Sep     , Jan L=FCbbe wrote:
> > On Wed, 2012-09-26 at 14:43 +0200, Sascha Hauer wrote:
> > > The eth->active is for tracking whether a device is opened (thus we h=
ave
> > > to call eth->halt). With this patch eth->active =3D=3D 0 could mean:
> > > =

> > > a) device not opened
> > > b) opened, but no link
> > > =

> > > This is asking for trouble. A bit only has two states, you should not
> > > encode three states in it.
> > =

> > Yes. We should not repeatedly open the device to check link status
> > again. A open (active=3D=3D1) device with no link is perfectly valid, it
> > just can't be used for TX/RX.
> > =

> > So if we have an open device in TX/RX and
> >   link down: recheck link
> >   link up: recheck link if the last check is "too old"
> > =

> > This way we notice both link going down and up, while not wasting time
> > when we are waiting for link up.
> except this can not work in barebox. In linux you can as you have a sched=
ule
> work that check the phy status. In barebox we do not do so and I do not w=
ant
> it (slow down the boot). So we check it at the open only and only once. W=
hen
> the phy is up we do not check it again.
> =

> Remember we are in a bootloader not in an os we need to do some concessio=
n.

int check_link_status(void)
{
	if (is_timeout(last_link_check, SECOND)) {
		do_link_check();
		last_link_check =3D get_time_ns();
	}
}

eth_rx(void)
{
	check_link_status();
}

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
