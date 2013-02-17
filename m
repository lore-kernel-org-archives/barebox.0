Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f46.google.com ([74.125.83.46])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U71ww-0007wm-5q
 for barebox@lists.infradead.org; Sun, 17 Feb 2013 10:58:27 +0000
Received: by mail-ee0-f46.google.com with SMTP id e49so2319588eek.33
 for <barebox@lists.infradead.org>; Sun, 17 Feb 2013 02:58:24 -0800 (PST)
Date: Sun, 17 Feb 2013 11:59:14 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130217105856.GA949@x61s.8.8.8.8>
References: <1360915499-1659-1-git-send-email-s.hauer@pengutronix.de>
 <1360915901-3420-1-git-send-email-s.hauer@pengutronix.de>
 <20130215081251.GJ1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130215081251.GJ1906@pengutronix.de>
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
Subject: Re: [PATCH] nor flash: integrate into mtd
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, 

On Fri, Feb 15, 2013 at 09:12:51AM +0100, Sascha Hauer wrote:
> On Fri, Feb 15, 2013 at 09:11:40AM +0100, Sascha Hauer wrote:
> > CFI Flash is currently handled outside the mtd layer which makes it
> > a special case. Integrate it into mtd so that we get rid of this
> > special status.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Last patch was blocked due to message size. Resent with -M which makes
> more sense here anyway.
> 
> Sascha
> 
> > ---
> >  arch/arm/configs/edb93xx_defconfig                |    1 +
> >  arch/arm/configs/eukrea_cpuimx27_defconfig        |    1 +
> >  arch/arm/configs/freescale_mx51_babbage_defconfig |    1 +
> >  arch/arm/configs/mmccpu_defconfig                 |    1 +
> >  arch/arm/configs/mx21ads_defconfig                |    1 +
> >  arch/arm/configs/mx27ads_defconfig                |    1 +
> >  arch/arm/configs/netx_nxdb500_defconfig           |    1 +
> >  arch/arm/configs/pcm027_defconfig                 |    1 +
> >  arch/arm/configs/pm9263_defconfig                 |    1 +
> >  arch/arm/configs/scb9328_defconfig                |    1 +
> >  arch/blackfin/configs/ipe337_defconfig            |    1 +
> >  arch/nios2/configs/generic_defconfig              |    1 +
> >  arch/ppc/configs/pcm030_defconfig                 |    1 +
> >  drivers/Kconfig                                   |    1 -
> >  drivers/Makefile                                  |    1 -
> >  drivers/mtd/Kconfig                               |    1 +
> >  drivers/mtd/Makefile                              |    1 +
> >  drivers/{ => mtd}/nor/Kconfig                     |    6 +-
> >  drivers/{ => mtd}/nor/Makefile                    |    0
> >  drivers/{ => mtd}/nor/cfi_flash.c                 |   82 +++++----------------
> >  drivers/{ => mtd}/nor/cfi_flash.h                 |    1 -
> >  drivers/{ => mtd}/nor/cfi_flash_amd.c             |    0
> >  drivers/{ => mtd}/nor/cfi_flash_intel.c           |    0
> >  23 files changed, 35 insertions(+), 71 deletions(-)
> >  rename drivers/{ => mtd}/nor/Kconfig (96%)
> >  rename drivers/{ => mtd}/nor/Makefile (100%)
> >  rename drivers/{ => mtd}/nor/cfi_flash.c (93%)
> >  rename drivers/{ => mtd}/nor/cfi_flash.h (99%)
> >  rename drivers/{ => mtd}/nor/cfi_flash_amd.c (100%)
> >  rename drivers/{ => mtd}/nor/cfi_flash_intel.c (100%)
> > 
> > diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
> > index 363e511..86b1040 100644
> > --- a/arch/arm/configs/edb93xx_defconfig
> > +++ b/arch/arm/configs/edb93xx_defconfig
> > @@ -30,4 +30,5 @@ CONFIG_CMD_TFTP=y
> >  CONFIG_FS_TFTP=y
> >  CONFIG_DRIVER_NET_EP93XX=y
> >  # CONFIG_SPI is not set
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> > diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
> > index 880941d..bd0c470 100644
> > --- a/arch/arm/configs/eukrea_cpuimx27_defconfig
> > +++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
> > @@ -46,6 +46,7 @@ CONFIG_DRIVER_NET_FEC_IMX=y
> >  CONFIG_I2C=y
> >  CONFIG_I2C_IMX=y
> >  CONFIG_I2C_LP3972=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  # CONFIG_DRIVER_CFI_AMD is not set
> >  # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
> > diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
> > index 0817cfa..97963c1 100644
> > --- a/arch/arm/configs/freescale_mx51_babbage_defconfig
> > +++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
> > @@ -55,6 +55,7 @@ CONFIG_NET_PING=y
> >  CONFIG_NET_RESOLV=y
> >  CONFIG_DRIVER_NET_FEC_IMX=y
> >  CONFIG_DRIVER_SPI_IMX=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  CONFIG_CFI_BUFFER_WRITE=y
> >  CONFIG_MCI=y
> > diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
> > index 334c5e8..0e6914f 100644
> > --- a/arch/arm/configs/mmccpu_defconfig
> > +++ b/arch/arm/configs/mmccpu_defconfig
> > @@ -34,5 +34,6 @@ CONFIG_FS_TFTP=y
> >  CONFIG_DRIVER_NET_MACB=y
> >  # CONFIG_SPI is not set
> >  CONFIG_I2C=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  CONFIG_CFI_BUFFER_WRITE=y
> > diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
> > index 28ad013..dbc2962 100644
> > --- a/arch/arm/configs/mx21ads_defconfig
> > +++ b/arch/arm/configs/mx21ads_defconfig
> > @@ -35,6 +35,7 @@ CONFIG_CMD_TFTP=y
> >  CONFIG_FS_TFTP=y
> >  CONFIG_DRIVER_NET_CS8900=y
> >  # CONFIG_SPI is not set
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  # CONFIG_DRIVER_CFI_INTEL is not set
> >  CONFIG_CFI_BUFFER_WRITE=y
> > diff --git a/arch/arm/configs/mx27ads_defconfig b/arch/arm/configs/mx27ads_defconfig
> > index 077e799..b3fdf84 100644
> > --- a/arch/arm/configs/mx27ads_defconfig
> > +++ b/arch/arm/configs/mx27ads_defconfig
> > @@ -33,6 +33,7 @@ CONFIG_NET_PING=y
> >  CONFIG_CMD_TFTP=y
> >  CONFIG_FS_TFTP=y
> >  CONFIG_DRIVER_SPI_IMX=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  # CONFIG_DRIVER_CFI_INTEL is not set
> >  CONFIG_CFI_BUFFER_WRITE=y
> > diff --git a/arch/arm/configs/netx_nxdb500_defconfig b/arch/arm/configs/netx_nxdb500_defconfig
> > index 6d32c56..8e7a0b3 100644
> > --- a/arch/arm/configs/netx_nxdb500_defconfig
> > +++ b/arch/arm/configs/netx_nxdb500_defconfig
> > @@ -26,5 +26,6 @@ CONFIG_NET_PING=y
> >  CONFIG_CMD_TFTP=y
> >  CONFIG_FS_TFTP=y
> >  CONFIG_DRIVER_NET_NETX=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  CONFIG_CFI_BUFFER_WRITE=y
> > diff --git a/arch/arm/configs/pcm027_defconfig b/arch/arm/configs/pcm027_defconfig
> > index ac9269d..f911951 100644
> > --- a/arch/arm/configs/pcm027_defconfig
> > +++ b/arch/arm/configs/pcm027_defconfig
> > @@ -54,6 +54,7 @@ CONFIG_FS_TFTP=y
> >  CONFIG_DRIVER_SERIAL_PXA=y
> >  CONFIG_DRIVER_NET_SMC91111=y
> >  # CONFIG_SPI is not set
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  CONFIG_VIDEO=y
> >  CONFIG_DRIVER_VIDEO_PXA=y
> > diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
> > index e223e77..c9a7141 100644
> > --- a/arch/arm/configs/pm9263_defconfig
> > +++ b/arch/arm/configs/pm9263_defconfig
> > @@ -33,6 +33,7 @@ CONFIG_CMD_TFTP=y
> >  CONFIG_FS_TFTP=y
> >  CONFIG_DRIVER_NET_MACB=y
> >  # CONFIG_SPI is not set
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  CONFIG_CFI_BUFFER_WRITE=y
> >  CONFIG_W1=y
> > diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
> > index 818bbd0..21a2571 100644
> > --- a/arch/arm/configs/scb9328_defconfig
> > +++ b/arch/arm/configs/scb9328_defconfig
> > @@ -52,6 +52,7 @@ CONFIG_FS_TFTP=y
> >  CONFIG_NET_NETCONSOLE=y
> >  CONFIG_NET_RESOLV=y
> >  CONFIG_DRIVER_NET_DM9K=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
> >  CONFIG_CFI_BUFFER_WRITE=y
> > diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
> > index d01c7e7..086a971 100644
> > --- a/arch/blackfin/configs/ipe337_defconfig
> > +++ b/arch/blackfin/configs/ipe337_defconfig
> > @@ -25,5 +25,6 @@ CONFIG_NET_PING=y
> >  CONFIG_CMD_TFTP=y
> >  CONFIG_FS_TFTP=y
> >  CONFIG_DRIVER_NET_SMC911X=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  CONFIG_CFI_BUFFER_WRITE=y
> > diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
> > index 5e27cc8..4189990 100644
> > --- a/arch/nios2/configs/generic_defconfig
> > +++ b/arch/nios2/configs/generic_defconfig
> > @@ -27,6 +27,7 @@ CONFIG_CMD_PARTITION=y
> >  CONFIG_NET=y
> >  CONFIG_NET_PING=y
> >  CONFIG_DRIVER_NET_TSE=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  CONFIG_FS_TFTP=y
> >  CONFIG_ZLIB=y
> > diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
> > index d2ff16c..9743841 100644
> > --- a/arch/ppc/configs/pcm030_defconfig
> > +++ b/arch/ppc/configs/pcm030_defconfig
> > @@ -36,6 +36,7 @@ CONFIG_FS_TFTP=y
> >  CONFIG_ARCH_MPC5XXX=y
> >  CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
> >  CONFIG_DRIVER_NET_MPC5200=y
> > +CONFIG_MTD=y
> >  CONFIG_DRIVER_CFI=y
> >  CONFIG_CFI_BUFFER_WRITE=y
> >  CONFIG_ZLIB=y
> > diff --git a/drivers/Kconfig b/drivers/Kconfig
> > index 988ec9e..2ae05c2 100644
> > --- a/drivers/Kconfig
> > +++ b/drivers/Kconfig
> > @@ -4,7 +4,6 @@ source "drivers/serial/Kconfig"
> >  source "drivers/net/Kconfig"
> >  source "drivers/spi/Kconfig"
> >  source "drivers/i2c/Kconfig"
> > -source "drivers/nor/Kconfig"
> >  source "drivers/mtd/Kconfig"
> >  source "drivers/ata/Kconfig"
> >  source "drivers/usb/Kconfig"
> > diff --git a/drivers/Makefile b/drivers/Makefile
> > index 1fddee0..f81bf99 100644
> > --- a/drivers/Makefile
> > +++ b/drivers/Makefile
> > @@ -3,7 +3,6 @@ obj-$(CONFIG_ARM_AMBA) += amba/
> >  obj-y	+= net/
> >  obj-y	+= serial/
> >  obj-y	+= mtd/
> > -obj-y	+= nor/
> >  obj-y	+= usb/
> >  obj-$(CONFIG_DISK) += ata/
> >  obj-$(CONFIG_SPI) += spi/
> > diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
> > index 9450f5d..e94e6b1 100644
> > --- a/drivers/mtd/Kconfig
> > +++ b/drivers/mtd/Kconfig
> > @@ -21,6 +21,7 @@ config MTD_RAW_DEVICE
> >  	prompt "mtdraw device to read/write both data+oob"
> >  
> >  source "drivers/mtd/devices/Kconfig"
> > +source "drivers/mtd/nor/Kconfig"
> >  source "drivers/mtd/nand/Kconfig"
> >  source "drivers/mtd/ubi/Kconfig"
> >  
> > diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
> > index 4f97d9a..82b2cc9 100644
> > --- a/drivers/mtd/Makefile
> > +++ b/drivers/mtd/Makefile
> > @@ -1,4 +1,5 @@
> >  obj-$(CONFIG_NAND)			+= nand/
> > +obj-$(CONFIG_DRIVER_CFI)		+= nor/
> >  obj-$(CONFIG_UBI)			+= ubi/
> >  obj-y					+= devices/
> >  obj-$(CONFIG_PARTITION_NEED_MTD)	+= partition.o
> > diff --git a/drivers/nor/Kconfig b/drivers/mtd/nor/Kconfig
> > similarity index 96%
> > rename from drivers/nor/Kconfig
> > rename to drivers/mtd/nor/Kconfig
> > index c8ce24f..591d1ac 100644
> > --- a/drivers/nor/Kconfig
> > +++ b/drivers/mtd/nor/Kconfig
> > @@ -1,7 +1,5 @@
> > -menu "flash drivers"
> > -
> >  menuconfig DRIVER_CFI
> > -	bool "CFI"
> > +	bool "CFI NOR flash support"
> >  	help
> >  	  If you have NOR Flash devices connected to your system and wish
> >  	  to use them say yes here.
> > @@ -55,5 +53,3 @@ config CFI_BUFFER_WRITE
> >  	depends on DRIVER_CFI || DRIVER_CFI

"DRIVER_CFI || DRIVER_CFI" looks weird. :-)

Why we not set this to depends on MTD instead of adding support for mtd
in each config file?

Regrads
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
