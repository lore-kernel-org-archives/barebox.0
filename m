Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ4zg-0007jO-Jx
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 16:06:50 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id DC60DFFC893
 for <barebox@lists.infradead.org>; Tue,  2 Oct 2012 18:15:33 +0200 (CEST)
Date: Tue, 2 Oct 2012 18:04:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121002160421.GA26553@game.jcrosoft.org>
References: <20120924093122.GD26553@game.jcrosoft.org>
 <506AFDEB.4010805@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <506AFDEB.4010805@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/1 v7] net: introduce phylib
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On 15:44 Tue 02 Oct     , Renaud Barbier wrote:
> On 24/09/12 10:31, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > 
> > Adapt phylib from linux
> > 
> > This will allow to have
> >  - phy drivers
> >  - to only connect the phy at then opening of the device
> >  - if the phy is not ready or down fail on open
> > 
> > Same behaviour as in linux and will allow to share code and simplify porting.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > 
> > ----------------------------------------------------------------
> > Jean-Christophe PLAGNIOL-VILLARD (1):
> >       net: introduce phylib
> > 
> >  arch/arm/boards/freescale-mx6-arm2/board.c      |   43 ++---
> >  arch/arm/boards/freescale-mx6-sabrelite/board.c |   40 ++--
> >  arch/arm/configs/phycard_a_l1_defconfig         |    2 +-
> >  arch/arm/configs/tx51stk5_defconfig             |    2 +-
> >  arch/ppc/boards/pcm030/pcm030.c                 |    4 +-
> >  arch/ppc/mach-mpc5xxx/include/mach/fec.h        |   14 --
> >  drivers/net/Kconfig                             |   30 +--
> >  drivers/net/Makefile                            |    2 +-
> >  drivers/net/altera_tse.c                        |   48 +++--
> >  drivers/net/altera_tse.h                        |    3 +-
> >  drivers/net/at91_ether.c                        |   49 ++---
> >  drivers/net/designware.c                        |   62 ++++---
> >  drivers/net/dm9k.c                              |   50 +++--
> >  drivers/net/ep93xx.c                            |   35 ++--
> >  drivers/net/ep93xx.h                            |    2 +-
> >  drivers/net/fec_imx.c                           |   89 +++++----
> >  drivers/net/fec_imx.h                           |    6 +-
> >  drivers/net/fec_mpc5200.c                       |   58 +++---
> >  drivers/net/fec_mpc5200.h                       |    4 +-
> >  drivers/net/gianfar.c                           |   61 +++---
> The mdiobus_scan performed when registering the mdio bus at probe time
> has an impact on boot time. I have a 85xx board whose PHY needs 450ms to
> be ready for access.
> 
> I will send a patch for the gianfar driver to register the mdio bus only
> when the device is open.
That why I did at the first open before

and I guess your case is not the only one

I do not like the idea to register the bus later

we need to have defer probe

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
