Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL0RE-0000BY-0c
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 08:47:48 +0000
Date: Wed, 23 Sep 2020 10:47:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200923084741.GE25328@pengutronix.de>
References: <20200918110442.25159-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918110442.25159-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Regenerate defconfig files
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Fri, Sep 18, 2020 at 01:04:41PM +0200, Uwe Kleine-K=F6nig wrote:
> Done with the same script used to generate commit d952a0eeba37
> ("Regenerate defconfig files").
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/configs/at91sam9263ek_defconfig         |  1 -
>  arch/arm/configs/at91sam9x5ek_defconfig          |  1 -
>  arch/arm/configs/freescale-mx21-ads_defconfig    |  1 -
>  arch/arm/configs/imx_defconfig                   |  1 -
>  arch/arm/configs/imx_v8_defconfig                |  2 --
>  arch/arm/configs/kindle-mx50_defconfig           |  1 -
>  arch/arm/configs/layerscape_defconfig            |  2 --
>  arch/arm/configs/microchip_ksz9477_evb_defconfig |  1 -
>  arch/arm/configs/socfpga-arria10_defconfig       |  1 -
>  arch/arm/configs/virt2real_defconfig             |  1 -
>  arch/arm/configs/zii_vf610_dev_defconfig         |  1 -
>  arch/kvx/configs/generic_defconfig               | 12 +++++-------
>  arch/mips/configs/bcm47xx_defconfig              |  1 -
>  arch/mips/configs/qemu-malta_defconfig           |  1 -
>  arch/x86/configs/efi_defconfig                   |  1 -
>  15 files changed, 5 insertions(+), 23 deletions(-)
> =

> diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/=
at91sam9263ek_defconfig
> index 45c6f79de40b..0cde5396af3c 100644
> --- a/arch/arm/configs/at91sam9263ek_defconfig
> +++ b/arch/arm/configs/at91sam9263ek_defconfig
> @@ -1,4 +1,3 @@
> -CONFIG_ARCH_AT91SAM9263=3Dy
>  CONFIG_AT91_MULTI_BOARDS=3Dy
>  CONFIG_MACH_AT91SAM9263EK=3Dy
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0x40000
> diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/a=
t91sam9x5ek_defconfig
> index 11d1e4511e03..7b743abfaa17 100644
> --- a/arch/arm/configs/at91sam9x5ek_defconfig
> +++ b/arch/arm/configs/at91sam9x5ek_defconfig
> @@ -1,4 +1,3 @@
> -CONFIG_ARCH_AT91SAM9X5=3Dy
>  CONFIG_AT91_MULTI_BOARDS=3Dy
>  CONFIG_MACH_AT91SAM9X5EK=3Dy
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=3D0x40000
> diff --git a/arch/arm/configs/freescale-mx21-ads_defconfig b/arch/arm/con=
figs/freescale-mx21-ads_defconfig
> index e1843db3e24c..b1d37f76a895 100644
> --- a/arch/arm/configs/freescale-mx21-ads_defconfig
> +++ b/arch/arm/configs/freescale-mx21-ads_defconfig
> @@ -1,6 +1,5 @@
>  CONFIG_TEXT_BASE=3D0xc3000000
>  CONFIG_ARCH_IMX=3Dy
> -CONFIG_MACH_IMX21ADS=3Dy
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=3Dy
>  CONFIG_MALLOC_SIZE=3D0x2000000
>  CONFIG_CMDLINE_EDITING=3Dy
> diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defcon=
fig
> index 02e33e122ec8..e6333220b6c9 100644
> --- a/arch/arm/configs/imx_defconfig
> +++ b/arch/arm/configs/imx_defconfig
> @@ -13,7 +13,6 @@ CONFIG_MMU=3Dy
>  CONFIG_MALLOC_SIZE=3D0x0
>  CONFIG_MALLOC_TLSF=3Dy
>  CONFIG_KALLSYMS=3Dy
> -CONFIG_RELOCATABLE=3Dy
>  CONFIG_PANIC_HANG=3Dy
>  CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_CMDLINE_EDITING=3Dy
> diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_=
defconfig
> index 268770ec3f2e..06d79f594d5b 100644
> --- a/arch/arm/configs/imx_v8_defconfig
> +++ b/arch/arm/configs/imx_v8_defconfig
> @@ -10,7 +10,6 @@ CONFIG_MMU=3Dy
>  CONFIG_MALLOC_SIZE=3D0x0
>  CONFIG_MALLOC_TLSF=3Dy
>  CONFIG_KALLSYMS=3Dy
> -CONFIG_RELOCATABLE=3Dy
>  CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_AUTO_COMPLETE=3Dy
>  CONFIG_MENU=3Dy
> @@ -130,7 +129,6 @@ CONFIG_RTC_CLASS=3Dy
>  CONFIG_RTC_DRV_DS1307=3Dy
>  CONFIG_GENERIC_PHY=3Dy
>  CONFIG_USB_NOP_XCEIV=3Dy
> -CONFIG_PHY_FSL_IMX8MQ_USB=3Dy
>  CONFIG_FS_EXT4=3Dy
>  CONFIG_FS_TFTP=3Dy
>  CONFIG_FS_NFS=3Dy
> diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/ki=
ndle-mx50_defconfig
> index 552b2d6d331c..95fafd56e68c 100644
> --- a/arch/arm/configs/kindle-mx50_defconfig
> +++ b/arch/arm/configs/kindle-mx50_defconfig
> @@ -9,7 +9,6 @@ CONFIG_MMU=3Dy
>  CONFIG_MALLOC_SIZE=3D0x0
>  CONFIG_MALLOC_TLSF=3Dy
>  CONFIG_KALLSYMS=3Dy
> -CONFIG_RELOCATABLE=3Dy
>  CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_CMDLINE_EDITING=3Dy
>  CONFIG_AUTO_COMPLETE=3Dy
> diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/lay=
erscape_defconfig
> index b36f1944ecdc..394cd95c980a 100644
> --- a/arch/arm/configs/layerscape_defconfig
> +++ b/arch/arm/configs/layerscape_defconfig
> @@ -78,7 +78,6 @@ CONFIG_CMD_OFTREE=3Dy
>  CONFIG_CMD_TIME=3Dy
>  CONFIG_NET=3Dy
>  CONFIG_NET_NETCONSOLE=3Dy
> -CONFIG_OFDEVICE=3Dy
>  CONFIG_OF_BAREBOX_DRIVERS=3Dy
>  CONFIG_DRIVER_SERIAL_NS16550=3Dy
>  CONFIG_DRIVER_NET_FSL_FMAN=3Dy
> @@ -105,7 +104,6 @@ CONFIG_EEPROM_AT24=3Dy
>  CONFIG_WATCHDOG=3Dy
>  CONFIG_WATCHDOG_IMX=3Dy
>  CONFIG_GPIO_PCA953X=3Dy
> -CONFIG_NVMEM=3Dy
>  CONFIG_REGULATOR=3Dy
>  CONFIG_REGULATOR_FIXED=3Dy
>  CONFIG_FS_EXT4=3Dy
> diff --git a/arch/arm/configs/microchip_ksz9477_evb_defconfig b/arch/arm/=
configs/microchip_ksz9477_evb_defconfig
> index 4189b2c039d9..71304994902a 100644
> --- a/arch/arm/configs/microchip_ksz9477_evb_defconfig
> +++ b/arch/arm/configs/microchip_ksz9477_evb_defconfig
> @@ -1,4 +1,3 @@
> -CONFIG_ARCH_SAMA5D3=3Dy
>  CONFIG_AT91_MULTI_BOARDS=3Dy
>  CONFIG_MACH_MICROCHIP_KSZ9477_EVB=3Dy
>  CONFIG_AEABI=3Dy
> diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/config=
s/socfpga-arria10_defconfig
> index e47a0ab1836d..a37bae621729 100644
> --- a/arch/arm/configs/socfpga-arria10_defconfig
> +++ b/arch/arm/configs/socfpga-arria10_defconfig
> @@ -18,7 +18,6 @@ CONFIG_BOOTM_INITRD=3Dy
>  CONFIG_BOOTM_OFTREE=3Dy
>  CONFIG_DEFAULT_COMPRESSION_LZO=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> -CONFIG_POLLER=3Dy
>  CONFIG_STATE=3Dy
>  CONFIG_LONGHELP=3Dy
>  CONFIG_CMD_IOMEM=3Dy
> diff --git a/arch/arm/configs/virt2real_defconfig b/arch/arm/configs/virt=
2real_defconfig
> index 814fe69e42ce..62315b8cb3ec 100644
> --- a/arch/arm/configs/virt2real_defconfig
> +++ b/arch/arm/configs/virt2real_defconfig
> @@ -36,7 +36,6 @@ CONFIG_CMD_LED=3Dy
>  CONFIG_CMD_OF_NODE=3Dy
>  CONFIG_CMD_OF_PROPERTY=3Dy
>  CONFIG_CMD_OFTREE=3Dy
> -CONFIG_OFDEVICE=3Dy
>  CONFIG_OF_BAREBOX_DRIVERS=3Dy
>  CONFIG_DRIVER_SERIAL_NS16550=3Dy
>  # CONFIG_SPI is not set
> diff --git a/arch/arm/configs/zii_vf610_dev_defconfig b/arch/arm/configs/=
zii_vf610_dev_defconfig
> index 45c24d6df471..3ed5d374586d 100644
> --- a/arch/arm/configs/zii_vf610_dev_defconfig
> +++ b/arch/arm/configs/zii_vf610_dev_defconfig
> @@ -8,7 +8,6 @@ CONFIG_MMU=3Dy
>  CONFIG_MALLOC_SIZE=3D0x0
>  CONFIG_MALLOC_TLSF=3Dy
>  CONFIG_KALLSYMS=3Dy
> -CONFIG_RELOCATABLE=3Dy
>  CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_AUTO_COMPLETE=3Dy
>  CONFIG_MENU=3Dy
> diff --git a/arch/kvx/configs/generic_defconfig b/arch/kvx/configs/generi=
c_defconfig
> index 816217174183..0d971ff3d5dd 100644
> --- a/arch/kvx/configs/generic_defconfig
> +++ b/arch/kvx/configs/generic_defconfig
> @@ -1,15 +1,13 @@
>  CONFIG_AUTO_COMPLETE=3Dy
> -CONFIG_BAUDRATE=3D115200
> -CONFIG_CLOCKSOURCE_KVX=3Dy
> +CONFIG_CONSOLE_RATP=3Dy
>  CONFIG_CMD_BOOT=3Dy
> -CONFIG_CMD_BOOTM=3Dy
> +CONFIG_CMD_RESET=3Dy
>  CONFIG_CMD_CMP=3Dy
> -CONFIG_CMD_OF_DUMP=3Dy
>  CONFIG_CMD_POWEROFF=3Dy
> -CONFIG_CMD_RESET=3Dy
>  CONFIG_CMD_WD=3Dy
> -CONFIG_CONSOLE_RATP=3Dy
> +CONFIG_CMD_OF_DUMP=3Dy
>  CONFIG_DRIVER_SERIAL_NS16550=3Dy
> -CONFIG_PINCTRL_SINGLE=3Dy
> +CONFIG_CLOCKSOURCE_KVX=3Dy
>  CONFIG_WATCHDOG=3Dy
>  CONFIG_WATCHDOG_KVX=3Dy
> +CONFIG_PINCTRL_SINGLE=3Dy
> diff --git a/arch/mips/configs/bcm47xx_defconfig b/arch/mips/configs/bcm4=
7xx_defconfig
> index 0cd0e9e650e7..9cf172a70e57 100644
> --- a/arch/mips/configs/bcm47xx_defconfig
> +++ b/arch/mips/configs/bcm47xx_defconfig
> @@ -9,7 +9,6 @@ CONFIG_MENU=3Dy
>  CONFIG_BOOTM_SHOW_TYPE=3Dy
>  CONFIG_PARTITION=3Dy
>  # CONFIG_DEFAULT_ENVIRONMENT is not set
> -CONFIG_POLLER=3Dy
>  CONFIG_LONGHELP=3Dy
>  CONFIG_CMD_IOMEM=3Dy
>  CONFIG_CMD_MEMINFO=3Dy
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/q=
emu-malta_defconfig
> index 2465c0260d1d..ac0577c217e3 100644
> --- a/arch/mips/configs/qemu-malta_defconfig
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -12,7 +12,6 @@ CONFIG_BOOTM_SHOW_TYPE=3Dy
>  CONFIG_CONSOLE_ALLOW_COLOR=3Dy
>  CONFIG_PARTITION=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> -CONFIG_POLLER=3Dy
>  CONFIG_CMD_DMESG=3Dy
>  CONFIG_LONGHELP=3Dy
>  CONFIG_CMD_IOMEM=3Dy
> diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defcon=
fig
> index 47842d10afdd..99bc39eaa6f1 100644
> --- a/arch/x86/configs/efi_defconfig
> +++ b/arch/x86/configs/efi_defconfig
> @@ -14,7 +14,6 @@ CONFIG_BLSPEC=3Dy
>  CONFIG_CONSOLE_ACTIVATE_ALL=3Dy
>  CONFIG_PARTITION_DISK_EFI=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> -CONFIG_POLLER=3Dy
>  CONFIG_STATE=3Dy
>  CONFIG_DEBUG_LL=3Dy
>  CONFIG_LONGHELP=3Dy
> -- =

> 2.27.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
