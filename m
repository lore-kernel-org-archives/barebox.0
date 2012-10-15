Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNhsj-0006eq-IU
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 10:26:47 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id D78A3FF956E
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2012 12:36:04 +0200 (CEST)
Date: Mon, 15 Oct 2012 12:24:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121015102424.GW13639@game.jcrosoft.org>
References: <20121014204622.GT13639@game.jcrosoft.org>
 <1350247764-18132-1-git-send-email-plagnioj@jcrosoft.com>
 <1350247764-18132-2-git-send-email-plagnioj@jcrosoft.com>
 <20121015070810.GH27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121015070810.GH27665@pengutronix.de>
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
Subject: Re: [PATCH 2/3] mtd: add dataflash support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:08 Mon 15 Oct     , Sascha Hauer wrote:
> On Sun, Oct 14, 2012 at 10:49:23PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > from linux 3.6
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/mtd/devices/Kconfig         |   18 +
> >  drivers/mtd/devices/Makefile        |    1 +
> >  drivers/mtd/devices/mtd_dataflash.c |  882 +++++++++++++++++++++++++++++++++++
> >  include/spi/flash.h                 |    2 +-
> >  4 files changed, 902 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/mtd/devices/mtd_dataflash.c
> > 
> > diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
> > index e6d747c..e956921 100644
> > --- a/drivers/mtd/devices/Kconfig
> > +++ b/drivers/mtd/devices/Kconfig
> > @@ -1,6 +1,24 @@
> >  menu "Self contained MTD devices"
> >  	depends on MTD!=n
> >  
> > +config MTD_DATAFLASH
> > +	tristate "Support for AT45xxx DataFlash"
> > +	depends on SPI
> > +	help
> > +	  This enables access to AT45xxx DataFlash chips, using SPI.
> > +	  Sometimes DataFlash chips are packaged inside MMC-format
> > +	  cards; at this writing, the MMC stack won't handle those.
> > +
> > +config MTD_DATAFLASH_WRITE_VERIFY
> > +	bool "Verify DataFlash page writes"
> > +	depends on MTD_DATAFLASH
> > +	help
> > +	  This adds an extra check when data is written to the flash.
> > +	  It may help if you are verifying chip setup (timings etc) on
> > +	  your board.  There is a rare possibility that even though the
> > +	  device thinks the write was successful, a bit could have been
> > +	  flipped accidentally due to device wear or something else.
> > +
> 
> What about MTD_DATAFLASH_OTP?
 the DATAFLASH_OTP need the MTD to have the OTP support

 which we do not have yet

 do I did not add it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
