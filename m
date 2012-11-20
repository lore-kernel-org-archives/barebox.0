Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tan7A-0003a9-Fr
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 12:39:46 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C5507DC5055
 for <barebox@lists.infradead.org>; Tue, 20 Nov 2012 13:47:24 +0100 (CET)
Date: Tue, 20 Nov 2012 13:37:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121120123738.GK8327@game.jcrosoft.org>
References: <20121031120122.GF29599@game.jcrosoft.org>
 <20121115101150.GF31820@game.jcrosoft.org>
 <20121120084100.GI10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121120084100.GI10369@pengutronix.de>
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
Subject: Re: [PATCH 0/2] m25p80: re-import it againt mtd_add_host
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:41 Tue 20 Nov     , Sascha Hauer wrote:
> On Thu, Nov 15, 2012 at 11:11:50AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > ping
> > 
> > work on next
> > On 13:01 Wed 31 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Hi,
> > > 
> > > 	so we now create the cdev via mtd
> > > 
> > > 	This will also simplify sync with linux
> > > 
> > > 	to avoid the m25p8000 or m25p00 the cdev is still named name m25p and the
> > > 	drivers m25p80
> > > 
> > > 	sync with linux too
> > > 
> > > 	this patch series is agianst mtd_dataflash support
> > > 
> > > The following changes since commit 9428c386f876fa3a8871eeea4725a805cea5c367:
> > > 
> > >   mtd: add dataflash support (2012-10-31 04:48:39 +0800)
> > > 
> > > are available in the git repository at:
> > > 
> > >   git://git.jcrosoft.org/barebox.git delivery/m25p80
> 
> Applied, thanks
can we have this one on master it's there for a while

Best Regards,
J.
> 
> Sascha
> 
> > > 
> > > for you to fetch changes up to 35b8b98230dbcfe25973d5ed52a874027b4f3f05:
> > > 
> > >   m25p80: sync flash support with the kernel (2012-10-31 04:51:08 +0800)
> > > 
> > > ----------------------------------------------------------------
> > > Jean-Christophe PLAGNIOL-VILLARD (2):
> > >       m25p80: re-import it againt mtd_add_host
> > >       m25p80: sync flash support with the kernel
> > > 
> > >  arch/arm/boards/freescale-mx6-sabrelite/board.c |    2 +-
> > >  drivers/mtd/devices/Kconfig                     |   27 ++++++++++++
> > >  drivers/mtd/devices/Makefile                    |    1 +
> > >  drivers/{nor => mtd/devices}/m25p80.c           |  512 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------------------------------------------------------------------------
> > >  drivers/nor/Kconfig                             |   27 ------------
> > >  drivers/nor/Makefile                            |    1 -
> > >  drivers/nor/m25p80.h                            |   84 ------------------------------------
> > >  include/linux/mtd/cfi.h                         |   65 ++++++++++++++++++++++++++++
> > >  8 files changed, 371 insertions(+), 348 deletions(-)
> > >  rename drivers/{nor => mtd/devices}/m25p80.c (65%)
> > >  delete mode 100644 drivers/nor/m25p80.h
> > >  create mode 100644 include/linux/mtd/cfi.h
> > > 
> > > Best Regards,
> > > J.
> > > 
> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
