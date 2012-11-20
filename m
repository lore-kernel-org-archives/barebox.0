Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TajOA-0005FL-73
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 08:41:02 +0000
Date: Tue, 20 Nov 2012 09:41:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121120084100.GI10369@pengutronix.de>
References: <20121031120122.GF29599@game.jcrosoft.org>
 <20121115101150.GF31820@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121115101150.GF31820@game.jcrosoft.org>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 15, 2012 at 11:11:50AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> ping
> 
> work on next
> On 13:01 Wed 31 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	so we now create the cdev via mtd
> > 
> > 	This will also simplify sync with linux
> > 
> > 	to avoid the m25p8000 or m25p00 the cdev is still named name m25p and the
> > 	drivers m25p80
> > 
> > 	sync with linux too
> > 
> > 	this patch series is agianst mtd_dataflash support
> > 
> > The following changes since commit 9428c386f876fa3a8871eeea4725a805cea5c367:
> > 
> >   mtd: add dataflash support (2012-10-31 04:48:39 +0800)
> > 
> > are available in the git repository at:
> > 
> >   git://git.jcrosoft.org/barebox.git delivery/m25p80

Applied, thanks

Sascha

> > 
> > for you to fetch changes up to 35b8b98230dbcfe25973d5ed52a874027b4f3f05:
> > 
> >   m25p80: sync flash support with the kernel (2012-10-31 04:51:08 +0800)
> > 
> > ----------------------------------------------------------------
> > Jean-Christophe PLAGNIOL-VILLARD (2):
> >       m25p80: re-import it againt mtd_add_host
> >       m25p80: sync flash support with the kernel
> > 
> >  arch/arm/boards/freescale-mx6-sabrelite/board.c |    2 +-
> >  drivers/mtd/devices/Kconfig                     |   27 ++++++++++++
> >  drivers/mtd/devices/Makefile                    |    1 +
> >  drivers/{nor => mtd/devices}/m25p80.c           |  512 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------------------------------------------------------------------------------
> >  drivers/nor/Kconfig                             |   27 ------------
> >  drivers/nor/Makefile                            |    1 -
> >  drivers/nor/m25p80.h                            |   84 ------------------------------------
> >  include/linux/mtd/cfi.h                         |   65 ++++++++++++++++++++++++++++
> >  8 files changed, 371 insertions(+), 348 deletions(-)
> >  rename drivers/{nor => mtd/devices}/m25p80.c (65%)
> >  delete mode 100644 drivers/nor/m25p80.h
> >  create mode 100644 include/linux/mtd/cfi.h
> > 
> > Best Regards,
> > J.
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
