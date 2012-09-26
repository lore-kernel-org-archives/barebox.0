Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGrw8-0004Zd-0f
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 13:46:01 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 304191000099
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 15:51:59 +0200 (CEST)
Date: Wed, 26 Sep 2012 15:43:26 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120926134326.GS26553@game.jcrosoft.org>
References: <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
 <1348660411-9210-1-git-send-email-plagnioj@jcrosoft.com>
 <20120926124305.GO1322@pengutronix.de>
 <1348663849.3370.5.camel@coredoba.hi.pengutronix.de>
 <20120926130353.GQ26553@game.jcrosoft.org>
 <20120926130853.GP1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120926130853.GP1322@pengutronix.de>
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
Subject: Re: [PATCH 3/3] net/eth: fix link handling
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:08 Wed 26 Sep     , Sascha Hauer wrote:
> On Wed, Sep 26, 2012 at 03:03:53PM +0200, Jean-Christophe PLAGNIOL-VILLAR=
D wrote:
> > On 14:50 Wed 26 Sep     , Jan L=FCbbe wrote:
> > > On Wed, 2012-09-26 at 14:43 +0200, Sascha Hauer wrote:
> > > > The eth->active is for tracking whether a device is opened (thus we=
 have
> > > > to call eth->halt). With this patch eth->active =3D=3D 0 could mean:
> > > > =

> > > > a) device not opened
> > > > b) opened, but no link
> > > > =

> > > > This is asking for trouble. A bit only has two states, you should n=
ot
> > > > encode three states in it.
> > > =

> > > Yes. We should not repeatedly open the device to check link status
> > > again. A open (active=3D=3D1) device with no link is perfectly valid,=
 it
> > > just can't be used for TX/RX.
> > > =

> > > So if we have an open device in TX/RX and
> > >   link down: recheck link
> > >   link up: recheck link if the last check is "too old"
> > > =

> > > This way we notice both link going down and up, while not wasting time
> > > when we are waiting for link up.
> > except this can not work in barebox. In linux you can as you have a sch=
edule
> > work that check the phy status. In barebox we do not do so and I do not=
 want
> > it (slow down the boot). So we check it at the open only and only once.=
 When
> > the phy is up we do not check it again.
> > =

> > Remember we are in a bootloader not in an os we need to do some concess=
ion.
> =

> int check_link_status(void)
> {
> 	if (is_timeout(last_link_check, SECOND)) {
> 		do_link_check();
> 		last_link_check =3D get_time_ns();
> 	}
> }
we can do this but every second is too much this will slow down nfs/tftp
transfert every 30s or 10s will be better

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
