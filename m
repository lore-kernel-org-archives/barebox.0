Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5BAP-0007TO-Jo
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 09:29:14 +0000
Date: Mon, 20 Jan 2014 10:28:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140120092850.GJ16215@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
 <1389971012-22977-3-git-send-email-s.hauer@pengutronix.de>
 <20140118191625.GB3624@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140118191625.GB3624@omega>
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
Subject: Re: [PATCH 02/22] ARM: phyCARD-i.MX27: increase barebox partition
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 18, 2014 at 08:16:27PM +0100, Alexander Aring wrote:
> Hi,
> 
> On Fri, Jan 17, 2014 at 04:03:12PM +0100, Sascha Hauer wrote:
> > More place for barebox.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/phycard-i.MX27/env/config | 2 +-
> >  arch/arm/boards/phycard-i.MX27/pca100.c   | 5 +++--
> >  2 files changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
> > index 9596311..9f10e7d 100644
> > --- a/arch/arm/boards/phycard-i.MX27/env/config
> > +++ b/arch/arm/boards/phycard-i.MX27/env/config
> > @@ -39,7 +39,7 @@ autoboot_timeout=3
> >  
> >  bootargs="console=ttymxc0,115200"
> >  
> > -nand_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
> > +nand_parts="512k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
> 
> First I through "2 MB for kernel?", but then I see you change this to 4MB
> in another patch which introduce the new barebox env, so thats pretty cool.

I changed this patch to increase both partitions now. It makes no sense
to wreck the partition layout twice in a single series.

> >  	nand = get_device_by_name("nand0");
> 
> I know, you don't make any change here but I though "What the hell do this
> function here? Increase some reference count, because nand is never used
> in this function?" Then I look a little bit deeper and it simple does
> nothing... - Maybe we should remove this and the nand variable?

Added a patch to remove the unused variable. Thanks for spotting this.

Sascha

----------------8<--------------------

From a25dd5cd482c80e1c3be75568ee0a16df3b3d78d Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Jan 2014 10:18:48 +0100
Subject: [PATCH 02/23] ARM: phyCARD-i.MX27: remove unused variable

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
reported-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/boards/phycard-i.MX27/pca100.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 2ff1b79..613a2ee 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -178,7 +178,6 @@ static void pca100_usb_init(void)
 static int pca100_devices_init(void)
 {
 	int i;
-	struct device_d *nand;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -286,7 +285,6 @@ static int pca100_devices_init(void)
 	pca100_usb_register();
 #endif
 
-	nand = get_device_by_name("nand0");
 	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 

---------------------8<----------------


From 955ac6de78aa8f09015f1d7829d66f7e982ecbf4 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 08:48:54 +0100
Subject: [PATCH 03/23] ARM: phyCARD-i.MX27: increase barebox and kernel
 partition

More place for barebox and the kernel as both have the tendency to
get bigger.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-i.MX27/env/config | 2 +-
 arch/arm/boards/phycard-i.MX27/pca100.c   | 5 +++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
index 9596311..160cbe7 100644
--- a/arch/arm/boards/phycard-i.MX27/env/config
+++ b/arch/arm/boards/phycard-i.MX27/env/config
@@ -39,7 +39,7 @@ autoboot_timeout=3
 
 bootargs="console=ttymxc0,115200"
 
-nand_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
+nand_parts="512k(barebox)ro,512k(bareboxenv),4M(kernel),-(root)"
 rootfs_mtdblock_nand=7
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 613a2ee..3c6b727 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -21,6 +21,7 @@
 #include <mach/imx27-regs.h>
 #include <fec.h>
 #include <gpio.h>
+#include <sizes.h>
 #include <asm/armlinux.h>
 #include <asm/sections.h>
 #include <generated/mach-types.h>
@@ -285,10 +286,10 @@ static int pca100_devices_init(void)
 	pca100_usb_register();
 #endif
 
-	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
+	devfs_add_partition("nand0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
-	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
+	devfs_add_partition("nand0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_architecture(2149);


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
