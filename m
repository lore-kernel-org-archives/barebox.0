Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axUVr-0004qb-CV
 for barebox@lists.infradead.org; Tue, 03 May 2016 07:12:56 +0000
Date: Tue, 3 May 2016 09:12:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160503071233.GJ19714@pengutronix.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
 <1461751489-13302-9-git-send-email-s.christ@phytec.de>
 <20160428083449.GB7860@pengutronix.de>
 <20160429072528.GA2685@lws-christ>
 <20160502075156.GB19714@pengutronix.de>
 <20160502090358.GD2601@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160502090358.GD2601@lws-christ>
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

On Mon, May 02, 2016 at 11:03:58AM +0200, Stefan Christ wrote:
> Hi Sascha,
> 
> On Mon, May 02, 2016 at 09:51:56AM +0200, Sascha Hauer wrote:
> > On Fri, Apr 29, 2016 at 09:25:28AM +0200, Stefan Christ wrote:
> > > Hi Sascha,
> > > 
> > > > > diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
> > > > > new file mode 100644
> > > > > index 0000000..e3cc9e3
> > > > > --- /dev/null
> > > > > +++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
> > > > > @@ -0,0 +1,5 @@
> > > > > +#!/bin/sh
> > > > > +
> > > > > +global.bootm.image="/mnt/emmc/linuximage"
> > > > > +global.bootm.oftree="/mnt/emmc/oftree"
> > > > > +global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"
> > > > 
> > > > Does this work reliably? Is there finally a patch upstream that creates
> > > > fixed numbers for MMC/SD block devices?
> > > 
> > > Our kernel tree contains a patch for that. The mmcblk id is derived from the
> > > device tree alias index. It isn't a mainline ready solution, since there are
> > > some unhandled edge cases in the patch and it's implemented currently only for
> > > the driver "sdhci-esdhc-imx".
> > 
> > There was yet another attempt for consistent mmcblk numbering shot down
> > here just last weekend: http://www.spinics.net/lists/arm-kernel/msg501495.html
> > 
> > Given that there probably never will be a way to (reliably) pass the rootfs via
> > root=mmcblkxy, I can't take this patch. I sent a patch which pushes the
> > partuuid mechanism from the bootloader spec code to bootm which might
> > help to solve this problem here.
> 
> Thanks for implementing this feature. Since our kernel and device tree is not
> in the root filesystem currently, we cannot use it. We will take a look at the
> bootspec to solve this problem.

Something I can think of is that we add a bootargs parameter to the
partition device similar to what we do with the fs devices. Only problem
is that there currently is no partition device, but that could be
changed.

> 
>  
> > I applied this series without this patch. This provoked a little merge
> > conflict in the patch renaming the environment directory. Please check
> > the result in -next.
> 
> I just diffed the next branch. So far it looks good. The dropped patch also
> introduced an 'automount' setting for the eMMC device. Have you an objection
> about this? If no, I would sent an extra patch for that.

No objections, you can send a patch.

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
