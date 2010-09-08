Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OtIN9-0005nb-5t
	for barebox@lists.infradead.org; Wed, 08 Sep 2010 10:59:25 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 8 Sep 2010 12:58:06 +0200
References: <AANLkTinY-pU+97DMxkFddz6qj+ayQh=5nC1Or++A1qfh@mail.gmail.com>
	<20100908094706.GA2847@game.jcrosoft.org>
	<201009081201.01622.jbe@pengutronix.de>
In-Reply-To: <201009081201.01622.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009081258.06169.jbe@pengutronix.de>
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
Subject: Re: [PATCH] mach-s3c24xx: Fix compilation problem when make a9m2410
	or a9m2440 defconfig.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Juergen Beisert wrote:
> Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 20:52 Tue 07 Sep     , Marek Belisko wrote:
> > > Following steps lead to compilation error (barebox v2010.09.0):
> > >
> > > 1. make a9m2440_defconfig (or a9m2410) ARCH=arm
> > > 2. make CROSS_COMPILE=arm-linux- ARCH=arm
> > >
> > > This patch should fix problems.
> > >
> > > Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> > > ---
> > >  arch/arm/mach-s3c24xx/Kconfig |    4 +++-
> > >  1 files changed, 3 insertions(+), 1 deletions(-)
> > >
> > > diff --git a/arch/arm/mach-s3c24xx/Kconfig
> > > b/arch/arm/mach-s3c24xx/Kconfig index 37ccf2f..297fdbb 100644
> > > --- a/arch/arm/mach-s3c24xx/Kconfig
> > > +++ b/arch/arm/mach-s3c24xx/Kconfig
> > > @@ -81,7 +81,9 @@ config S3C24XX_SDRAM_INIT
> > >  config S3C24XX_NAND_BOOT
> > >  	bool
> > >  	prompt "Booting from NAND"
> > > -	select NAND_S3C24X0
> > > +	select MTD
> > > +	select NAND
> > > +	select NAND_S3C24X0
> >
> > you should be able to boot from nand only if you enable the NAND and not
> > the invert
>
> Hmm, you can enable NAND support, but you may do not want to boot from it.
> IMHO its correct in this way.

In this case it is not a matter of taste how these parts depends on each 
other. This CPU module only contains NAND. There is no alternative to start 
from.
But this discussion leads into the lack of a "select S3C24XX_NAND_BOOT" when 
selecting one of these boards. So, the correct fix should better be like 
this:

diff --git a/arch/arm/boards/a9m2410/a9m2410.c 
b/arch/arm/boards/a9m2410/a9m2410.c
index f327f82..db0ddab 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -152,14 +152,12 @@ static int a9m2410_devices_init(void)
 	register_device(&sdram_dev);
 	register_device(&network_dev);
 
-#ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-#endif
 
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
@@ -170,12 +168,10 @@ static int a9m2410_devices_init(void)
 
 device_initcall(a9m2410_devices_init);
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
 void __bare_init nand_boot(void)
 {
 	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0, 512);
 }
-#endif
 
 static struct device_d a9m2410_serial_device = {
 	.name     = "s3c24x0_serial",
diff --git a/arch/arm/boards/a9m2440/a9m2440.c 
b/arch/arm/boards/a9m2440/a9m2440.c
index 2567f5e..bfa56ec 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -159,14 +159,13 @@ static int a9m2440_devices_init(void)
 	register_device(&sdram_dev);
 	register_device(&network_dev);
 
-#ifdef CONFIG_NAND
 	/* ----------- add some vital partitions -------- */
 	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
 
 	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
 	dev_add_bb_dev("env_raw", "env0");
-#endif
+
 	armlinux_add_dram(&sdram_dev);
 	armlinux_set_bootparams((void *)sdram_dev.map_base + 0x100);
 	armlinux_set_architecture(MACH_TYPE_A9M2440);
@@ -176,12 +175,10 @@ static int a9m2440_devices_init(void)
 
 device_initcall(a9m2440_devices_init);
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
 void __bare_init nand_boot(void)
 {
 	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0, 512);
 }
-#endif
 
 static struct device_d a9m2440_serial_device = {
 	.name     = "s3c24x0_serial",
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
index 37ccf2f..2670837 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-s3c24xx/Kconfig
@@ -24,6 +24,7 @@ config MACH_A9M2410
 	select MACH_HAS_LOWLEVEL_INIT
 	select S3C24XX_PLL_INIT
 	select S3C24XX_SDRAM_INIT
+	select S3C24XX_NAND_BOOT
 	help
 	  Say Y here if you are using Digi's Connect Core 9M equipped
 	  with a Samsung S3C2410 Processor
@@ -33,6 +34,7 @@ config MACH_A9M2440
 	select CPU_S3C2440
 	select MACH_HAS_LOWLEVEL_INIT
 	select S3C24XX_PLL_INIT
+	select S3C24XX_NAND_BOOT
 	help
 	  Say Y here if you are using Digi's Connect Core 9M equipped
 	  with a Samsung S3C2440 Processor
@@ -81,6 +83,8 @@ config S3C24XX_SDRAM_INIT
 config S3C24XX_NAND_BOOT
 	bool
 	prompt "Booting from NAND"
+	select MTD
+	select NAND
 	select NAND_S3C24X0
 	help
 	  Add generic support to boot from NAND flash. Image loading will be

@Marek: Can you check it on your hardware? My a9m2440 isn't working right now.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
