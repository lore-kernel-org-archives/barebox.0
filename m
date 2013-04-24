Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUvmX-0003qq-Pr
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 09:14:30 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 6DA28104D77B
 for <barebox@lists.infradead.org>; Wed, 24 Apr 2013 11:14:28 +0200 (CEST)
Date: Wed, 24 Apr 2013 11:09:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130424090956.GE13393@game.jcrosoft.org>
References: <wilhelm.lundgren@gmail.com>
 <1366724505-23034-1-git-send-email-wilhelm.lundgren@gmail.com>
 <20130424073521.GA32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130424073521.GA32299@pengutronix.de>
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
Subject: Re: [PATCH] Added sd driver for bcm2835 (Raspberry PI)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:35 Wed 24 Apr     , Sascha Hauer wrote:
> 
> On Tue, Apr 23, 2013 at 03:41:45PM +0200, wilhelm wrote:
> > ---
> >  arch/arm/mach-bcm2835/core.c |   1 +
> >  drivers/mci/Kconfig          |   5 +
> >  drivers/mci/Makefile         |   1 +
> >  drivers/mci/mci-bcm2835.c    | 551 +++++++++++++++++++++++++++++++++++++++++++
> >  drivers/mci/mci-bcm2835.h    | 126 ++++++++++
> >  5 files changed, 684 insertions(+)
> >  create mode 100644 drivers/mci/mci-bcm2835.c
> >  create mode 100644 drivers/mci/mci-bcm2835.h
> > 
> > diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> > new file mode 100644
> > index 0000000..29afe0c
> > --- /dev/null
> > +++ b/drivers/mci/mci-bcm2835.c
> > @@ -0,0 +1,551 @@
> > +/*
> > + * Raspberry PI MCI driver
> > + *
> > + * Portions (e.g. read/write macros, concepts for back-to-back register write
> > + * timing workarounds) obviously extracted from the Linux kernel at:
> > + * https://github.com/raspberrypi/linux.git rpi-3.6.y
> > + *
> > + * The Linux kernel code has the following (c) and license, which is hence
> > + * propagated to here:
> > + *
> > + * Support for SDHCI device on 2835
> > + * Based on sdhci-bcm2708.c (c) 2010 Broadcom
> > + * Inspired by bcm2835_sdhci.c from git://github.com/gonzoua/u-boot-pi.git
> 
> Although it's hard to see this is a SDHCI driver. The same hardware is
> used on i.MX and I think also on Zynq.
> 
> From the i.MX SDHCI controller I know that it needs several quirks which
> will make it hard writing a common driver. At least the kernel (i.MX-)
> SDHCI driver looks nasty.
> 
> So writing a common driver may not be worth it, but I think we should
> aim for a common set of register defines. This would make it a lot
> easier to share code and to at least compare the drivers. I just sent
> out an initial series for this, maybe you could switch your driver
> to use the same defines. Later we could then search for common code.

I send the SDHCI support but the platform that use it can not be published yet
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
