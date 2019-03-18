Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5yLB-0003pi-9U
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 19:54:35 +0000
Date: Mon, 18 Mar 2019 19:54:47 +0000 (UTC)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20190318085536.eeoohr2rxpnlkapf@pengutronix.de>
Message-ID: <alpine.DEB.2.20.1903181951010.2561@blala.de>
References: <20190318073242.30339-1-user@vserver64>
 <20190318085536.eeoohr2rxpnlkapf@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] ARM: i.MX: extend kindle-mx50 defconfig
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <rohieb@rohieb.name>

Hi Roland,
all removed lines are now part of a dependency to other config items.
make savedefconfig removes all those items. When you re-create a .config,
you'll see that all removed config items are still marked =y.
Cheers, Alexander

On Mon, 18 Mar 2019, Roland Hieber wrote:

> On Mon, Mar 18, 2019 at 07:32:42AM +0000, Alexander Kurz wrote:
> > From: Alexander Kurz <akurz@blala.de>
> > 
> > The current defaultenv-kindle-mx50 requires MCI_STARTUP to boot the installed
> > linux. CMD_LOADY is mentioned in the doc for barebox update purposes.
> > FS_EXT4, FS_FAT and FS_FAT_WRITE gives users file system access. Also enable
> > CMD_MEMTEST, CMD_CLK, CMD_REGULATOR and CMD_EDIT for interested users.
> > The extended image will consume 195kB of available 253kB.
> 
> And I guess the removed lines are just things that aren't usable in the
> first place because of missing hardware, or is it to save space?
> 
>  - Roland
> 
> > 
> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > ---
> >  arch/arm/configs/kindle-mx50_defconfig | 28 +++++++++++-----------------
> >  1 file changed, 11 insertions(+), 17 deletions(-)
> > 
> > diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/kindle-mx50_defconfig
> > index 31bfc9c06..95b505fda 100644
> > --- a/arch/arm/configs/kindle-mx50_defconfig
> > +++ b/arch/arm/configs/kindle-mx50_defconfig
> > @@ -4,8 +4,8 @@ CONFIG_MACH_KINDLE_MX50=y
> >  CONFIG_THUMB2_BAREBOX=y
> >  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> >  CONFIG_ARM_UNWIND=y
> > +CONFIG_IMAGE_COMPRESSION_XZKERN=y
> >  CONFIG_MMU=y
> > -CONFIG_MMU_EARLY=y
> >  CONFIG_MALLOC_SIZE=0x0
> >  CONFIG_MALLOC_TLSF=y
> >  CONFIG_KALLSYMS=y
> > @@ -13,7 +13,6 @@ CONFIG_RELOCATABLE=y
> >  CONFIG_HUSH_FANCY_PROMPT=y
> >  CONFIG_CMDLINE_EDITING=y
> >  CONFIG_AUTO_COMPLETE=y
> > -CONFIG_FLEXIBLE_BOOTARGS=y
> >  CONFIG_BOOTM_SHOW_TYPE=y
> >  CONFIG_BOOTM_VERBOSE=y
> >  CONFIG_BOOTM_INITRD=y
> > @@ -24,47 +23,42 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> >  CONFIG_CMD_DMESG=y
> >  CONFIG_LONGHELP=y
> >  CONFIG_CMD_MEMINFO=y
> > -CONFIG_CMD_BOOT=y
> > +CONFIG_CMD_REGULATOR=y
> > +CONFIG_CMD_LOADY=y
> >  CONFIG_CMD_RESET=y
> > -CONFIG_CMD_AUTOMOUNT=y
> >  CONFIG_CMD_EXPORT=y
> > -CONFIG_CMD_GLOBAL=y
> >  CONFIG_CMD_PRINTENV=y
> >  CONFIG_CMD_MAGICVAR=y
> >  CONFIG_CMD_MAGICVAR_HELP=y
> > +CONFIG_CMD_EDIT=y
> > +CONFIG_CMD_MEMTEST=y
> > +CONFIG_CMD_CLK=y
> >  CONFIG_CMD_DETECT=y
> >  CONFIG_CMD_FLASH=y
> >  CONFIG_CMD_GPIO=y
> >  CONFIG_CMD_I2C=y
> >  CONFIG_CMD_SPI=y
> > -CONFIG_CMD_USB=y
> >  CONFIG_CMD_USBGADGET=y
> > -CONFIG_CMD_OF_DUMP=y
> >  CONFIG_CMD_OFTREE=y
> >  CONFIG_OFDEVICE=y
> > -CONFIG_OF_GPIO=y
> >  CONFIG_OF_BAREBOX_DRIVERS=y
> >  CONFIG_MTD=y
> > -CONFIG_MTD_WRITE=y
> >  CONFIG_MTD_M25P80=y
> > -CONFIG_MTD_SPI_NOR=y
> > -CONFIG_USB=y
> >  CONFIG_USB_HOST=y
> >  CONFIG_USB_IMX_CHIPIDEA=y
> >  CONFIG_USB_EHCI=y
> >  CONFIG_USB_GADGET=y
> > -CONFIG_USB_GADGET_DRIVER_ARC=y
> >  CONFIG_USB_GADGET_SERIAL=y
> >  CONFIG_USB_GADGET_FASTBOOT=y
> >  CONFIG_MCI=y
> > -CONFIG_MCI_INFO=y
> > -CONFIG_MCI_WRITE=y
> > +CONFIG_MCI_STARTUP=y
> >  CONFIG_MCI_MMC_BOOT_PARTITIONS=y
> >  CONFIG_MCI_IMX_ESDHC=y
> > -CONFIG_PINCTRL=y
> >  CONFIG_REGULATOR=y
> >  CONFIG_REGULATOR_FIXED=y
> >  CONFIG_GENERIC_PHY=y
> >  CONFIG_USB_NOP_XCEIV=y
> > -CONFIG_FS_AUTOMOUNT=y
> > -CONFIG_IMAGE_COMPRESSION_XZKERN=y
> > +CONFIG_FS_EXT4=y
> > +CONFIG_FS_FAT=y
> > +CONFIG_FS_FAT_WRITE=y
> > +CONFIG_FS_FAT_LFN=y
> > -- 
> > 2.11.0
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Roland Hieber                     | r.hieber@pengutronix.de     |
> Pengutronix e.K.                  | https://www.pengutronix.de/ |
> Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
