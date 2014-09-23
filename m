Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XWJEV-0001GF-Bm
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 06:05:52 +0000
Date: Tue, 23 Sep 2014 08:05:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140923060529.GS4992@pengutronix.de>
References: <1411424015-16466-1-git-send-email-eric@eukrea.com>
 <1411424015-16466-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411424015-16466-2-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] eukrea-cpuimx35: refresh configuration
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 23, 2014 at 12:13:35AM +0200, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/configs/eukrea_cpuimx35_defconfig | 61 ++++++++++++++++++------=
------
>  1 file changed, 36 insertions(+), 25 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/config=
s/eukrea_cpuimx35_defconfig
> index 7569cde..4c83102 100644
> --- a/arch/arm/configs/eukrea_cpuimx35_defconfig
> +++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
> @@ -1,71 +1,81 @@
>  CONFIG_ARCH_IMX=3Dy
> -CONFIG_CACHE_L2X0=3Dy
> -CONFIG_ARCH_IMX35=3Dy
> +CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0x40000
>  CONFIG_MACH_EUKREA_CPUIMX35=3Dy
>  CONFIG_IMX_IIM=3Dy
>  CONFIG_IMX_IIM_FUSE_BLOW=3Dy
>  CONFIG_AEABI=3Dy
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
> +CONFIG_PBL_IMAGE=3Dy
> +CONFIG_PBL_RELOCATABLE=3Dy
>  CONFIG_MMU=3Dy
> -CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0x40000
>  CONFIG_MALLOC_SIZE=3D0x800000
>  CONFIG_EXPERIMENTAL=3Dy
>  CONFIG_MALLOC_TLSF=3Dy
> -CONFIG_LONGHELP=3Dy
> +CONFIG_RELOCATABLE=3Dy
>  CONFIG_GLOB=3Dy
>  CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_CMDLINE_EDITING=3Dy
>  CONFIG_AUTO_COMPLETE=3Dy
> -# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
>  CONFIG_CONSOLE_ACTIVATE_ALL=3Dy
> +CONFIG_DEFAULT_COMPRESSION_LZO=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"arch/arm/boards/eukrea_cpuimx35/env"
> -CONFIG_CMD_EDIT=3Dy
> -CONFIG_CMD_SLEEP=3Dy
> -CONFIG_CMD_SAVEENV=3Dy
> -CONFIG_CMD_EXPORT=3Dy
> -CONFIG_CMD_PRINTENV=3Dy
> -CONFIG_CMD_READLINE=3Dy
> -CONFIG_CMD_AUTOMOUNT=3Dy
> -CONFIG_CMD_ECHO_E=3Dy
> -CONFIG_CMD_LOADB=3Dy
> -CONFIG_CMD_MEMINFO=3Dy
> +CONFIG_LONGHELP=3Dy
>  CONFIG_CMD_IOMEM=3Dy
> -CONFIG_CMD_MTEST=3Dy
> -CONFIG_CMD_FLASH=3Dy
> +CONFIG_CMD_IMD=3Dy
> +CONFIG_CMD_MEMINFO=3Dy
>  CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy
>  CONFIG_CMD_BOOTM_VERBOSE=3Dy
>  CONFIG_CMD_BOOTM_INITRD=3Dy
>  CONFIG_CMD_BOOTM_OFTREE=3Dy
>  CONFIG_CMD_BOOTM_OFTREE_UIMAGE=3Dy
> -CONFIG_CMD_RESET=3Dy
>  CONFIG_CMD_GO=3Dy
> -CONFIG_CMD_OFTREE=3Dy
> -CONFIG_CMD_TIMEOUT=3Dy
> +CONFIG_CMD_LOADB=3Dy
> +CONFIG_CMD_RESET=3Dy
>  CONFIG_CMD_PARTITION=3Dy
> +CONFIG_CMD_AUTOMOUNT=3Dy
> +CONFIG_CMD_EXPORT=3Dy
> +CONFIG_CMD_LOADENV=3Dy
> +CONFIG_CMD_PRINTENV=3Dy
>  CONFIG_CMD_MAGICVAR=3Dy
>  CONFIG_CMD_MAGICVAR_HELP=3Dy
> +CONFIG_CMD_SAVEENV=3Dy
> +CONFIG_CMD_UNCOMPRESS=3Dy
> +CONFIG_CMD_SLEEP=3Dy
> +CONFIG_CMD_DHCP=3Dy
> +CONFIG_CMD_MIITOOL=3Dy
> +CONFIG_CMD_PING=3Dy
> +CONFIG_CMD_TFTP=3Dy
> +CONFIG_CMD_ECHO_E=3Dy
> +CONFIG_CMD_EDIT=3Dy
>  CONFIG_CMD_SPLASH=3Dy
> +CONFIG_CMD_READLINE=3Dy
> +CONFIG_CMD_TIMEOUT=3Dy
> +CONFIG_CMD_MEMTEST=3Dy
> +CONFIG_CMD_MM=3Dy
> +CONFIG_CMD_CLK=3Dy
> +CONFIG_CMD_DETECT=3Dy
> +CONFIG_CMD_FLASH=3Dy
>  CONFIG_CMD_GPIO=3Dy
> -CONFIG_CMD_UNCOMPRESS=3Dy
>  CONFIG_CMD_I2C=3Dy
>  CONFIG_CMD_LED=3Dy
>  CONFIG_CMD_LED_TRIGGER=3Dy
> +CONFIG_CMD_USBGADGET=3Dy
> +CONFIG_CMD_OFTREE=3Dy
>  CONFIG_NET=3Dy
> -CONFIG_CMD_DHCP=3Dy
>  CONFIG_NET_NFS=3Dy
> -CONFIG_CMD_PING=3Dy
> -CONFIG_CMD_TFTP=3Dy
> -CONFIG_FS_TFTP=3Dy
>  CONFIG_NET_NETCONSOLE=3Dy
>  CONFIG_DRIVER_NET_FEC_IMX=3Dy
> +CONFIG_SMSC_PHY=3Dy
>  # CONFIG_SPI is not set
>  CONFIG_I2C=3Dy
>  CONFIG_I2C_IMX=3Dy
>  CONFIG_MTD=3Dy
>  CONFIG_MTD_RAW_DEVICE=3Dy
>  CONFIG_NAND=3Dy
> +CONFIG_NAND_ALLOW_ERASE_BAD=3Dy
>  CONFIG_NAND_IMX=3Dy
> +CONFIG_NAND_IMX_BBM=3Dy
>  CONFIG_USB_HOST=3Dy
>  CONFIG_USB_EHCI=3Dy
>  CONFIG_USB_STORAGE=3Dy
> @@ -79,6 +89,7 @@ CONFIG_MCI_IMX_ESDHC=3Dy
>  CONFIG_LED=3Dy
>  CONFIG_LED_GPIO=3Dy
>  CONFIG_LED_TRIGGERS=3Dy
> +CONFIG_FS_TFTP=3Dy
>  CONFIG_FS_FAT=3Dy
>  CONFIG_FS_FAT_WRITE=3Dy
>  CONFIG_FS_FAT_LFN=3Dy
> -- =

> 1.9.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
