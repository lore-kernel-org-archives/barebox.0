Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ax8eS-0001uC-A4
 for barebox@lists.infradead.org; Mon, 02 May 2016 07:52:21 +0000
Date: Mon, 2 May 2016 09:51:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160502075156.GB19714@pengutronix.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
 <1461751489-13302-9-git-send-email-s.christ@phytec.de>
 <20160428083449.GB7860@pengutronix.de>
 <20160429072528.GA2685@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160429072528.GA2685@lws-christ>
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
Subject: Re: [PATCH for next 08/15] ARM: phytec-som-imx6: add boot device
 emmc and automount
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 29, 2016 at 09:25:28AM +0200, Stefan Christ wrote:
> Hi Sascha,
> 
> > > diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
> > > new file mode 100644
> > > index 0000000..e3cc9e3
> > > --- /dev/null
> > > +++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
> > > @@ -0,0 +1,5 @@
> > > +#!/bin/sh
> > > +
> > > +global.bootm.image="/mnt/emmc/linuximage"
> > > +global.bootm.oftree="/mnt/emmc/oftree"
> > > +global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"
> > 
> > Does this work reliably? Is there finally a patch upstream that creates
> > fixed numbers for MMC/SD block devices?
> 
> Our kernel tree contains a patch for that. The mmcblk id is derived from the
> device tree alias index. It isn't a mainline ready solution, since there are
> some unhandled edge cases in the patch and it's implemented currently only for
> the driver "sdhci-esdhc-imx".

There was yet another attempt for consistent mmcblk numbering shot down
here just last weekend: http://www.spinics.net/lists/arm-kernel/msg501495.html

Given that there probably never will be a way to (reliably) pass the rootfs via
root=mmcblkxy, I can't take this patch. I sent a patch which pushes the
partuuid mechanism from the bootloader spec code to bootm which might
help to solve this problem here.

I applied this series without this patch. This provoked a little merge
conflict in the patch renaming the environment directory. Please check
the result in -next.

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
