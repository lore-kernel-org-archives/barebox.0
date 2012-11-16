Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZSMY-0003Vh-Ob
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 20:18:08 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 7B930FF9AFA
 for <barebox@lists.infradead.org>; Fri, 16 Nov 2012 21:29:11 +0100 (CET)
Date: Fri, 16 Nov 2012 21:16:04 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121116201604.GD8327@game.jcrosoft.org>
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
To: barebox@lists.infradead.org

HI,

	just retested on master on sam9x5ek work fine

	can you check on sabrelite too

Best Regards,
J.
On 11:11 Thu 15 Nov     , Jean-Christophe PLAGNIOL-VILLARD wrote:
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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
