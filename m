Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV4ln-0001PF-VW
 for barebox@lists.infradead.org; Thu, 17 May 2012 17:45:48 +0000
Date: Thu, 17 May 2012 19:45:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120517174544.GG30400@pengutronix.de>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
 <1337269578-20570-16-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337269578-20570-16-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 16/16] eukrea_cpuimx25&35: update defconfig
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, May 17, 2012 at 05:46:18PM +0200, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/configs/eukrea_cpuimx25_defconfig |   10 +++-------
>  arch/arm/configs/eukrea_cpuimx35_defconfig |    9 +++------

That's the third time these defconfigs are updated in this series. Is
this necessary?

Sascha

>  2 files changed, 6 insertions(+), 13 deletions(-)
> =

> diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/config=
s/eukrea_cpuimx25_defconfig
> index 32833f8..94ae670 100644
> --- a/arch/arm/configs/eukrea_cpuimx25_defconfig
> +++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
> @@ -13,7 +13,6 @@ CONFIG_GLOB=3Dy
>  CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_CMDLINE_EDITING=3Dy
>  CONFIG_AUTO_COMPLETE=3Dy
> -CONFIG_MENU=3Dy
>  # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
>  CONFIG_CONSOLE_ACTIVATE_ALL=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=3Dy
> @@ -24,8 +23,6 @@ CONFIG_CMD_SAVEENV=3Dy
>  CONFIG_CMD_EXPORT=3Dy
>  CONFIG_CMD_PRINTENV=3Dy
>  CONFIG_CMD_READLINE=3Dy
> -CONFIG_CMD_MENU=3Dy
> -CONFIG_CMD_MENU_MANAGEMENT=3Dy
>  CONFIG_CMD_AUTOMOUNT=3Dy
>  CONFIG_CMD_ECHO_E=3Dy
>  CONFIG_CMD_LOADB=3Dy
> @@ -50,13 +47,14 @@ CONFIG_CMD_GPIO=3Dy
>  CONFIG_CMD_UNCOMPRESS=3Dy
>  CONFIG_CMD_I2C=3Dy
>  CONFIG_CMD_LED=3Dy
> +CONFIG_CMD_LED_TRIGGER=3Dy
>  CONFIG_NET=3Dy
>  CONFIG_NET_DHCP=3Dy
> +CONFIG_NET_NFS=3Dy
>  CONFIG_NET_PING=3Dy
>  CONFIG_NET_TFTP=3Dy
>  CONFIG_NET_TFTP_PUSH=3Dy
>  CONFIG_NET_NETCONSOLE=3Dy
> -CONFIG_NET_RESOLV=3Dy
>  CONFIG_DRIVER_NET_FEC_IMX=3Dy
>  # CONFIG_SPI is not set
>  CONFIG_I2C=3Dy
> @@ -64,9 +62,6 @@ CONFIG_I2C_IMX=3Dy
>  CONFIG_MTD=3Dy
>  CONFIG_MTD_RAW_DEVICE=3Dy
>  CONFIG_NAND=3Dy
> -# CONFIG_NAND_ECC_SOFT is not set
> -# CONFIG_NAND_ECC_HW_SYNDROME is not set
> -# CONFIG_NAND_ECC_HW_NONE is not set
>  CONFIG_NAND_IMX=3Dy
>  CONFIG_USB=3Dy
>  CONFIG_USB_EHCI=3Dy
> @@ -80,6 +75,7 @@ CONFIG_MCI=3Dy
>  CONFIG_MCI_IMX_ESDHC=3Dy
>  CONFIG_LED=3Dy
>  CONFIG_LED_GPIO=3Dy
> +CONFIG_LED_TRIGGERS=3Dy
>  CONFIG_FS_FAT=3Dy
>  CONFIG_FS_FAT_WRITE=3Dy
>  CONFIG_FS_FAT_LFN=3Dy
> diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/config=
s/eukrea_cpuimx35_defconfig
> index 44be126..a888765 100644
> --- a/arch/arm/configs/eukrea_cpuimx35_defconfig
> +++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
> @@ -14,7 +14,6 @@ CONFIG_GLOB=3Dy
>  CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_CMDLINE_EDITING=3Dy
>  CONFIG_AUTO_COMPLETE=3Dy
> -CONFIG_MENU=3Dy
>  # CONFIG_CONSOLE_ACTIVATE_FIRST is not set
>  CONFIG_CONSOLE_ACTIVATE_ALL=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC=3Dy
> @@ -25,8 +24,6 @@ CONFIG_CMD_SAVEENV=3Dy
>  CONFIG_CMD_EXPORT=3Dy
>  CONFIG_CMD_PRINTENV=3Dy
>  CONFIG_CMD_READLINE=3Dy
> -CONFIG_CMD_MENU=3Dy
> -CONFIG_CMD_MENU_MANAGEMENT=3Dy
>  CONFIG_CMD_AUTOMOUNT=3Dy
>  CONFIG_CMD_ECHO_E=3Dy
>  CONFIG_CMD_LOADB=3Dy
> @@ -51,8 +48,10 @@ CONFIG_CMD_GPIO=3Dy
>  CONFIG_CMD_UNCOMPRESS=3Dy
>  CONFIG_CMD_I2C=3Dy
>  CONFIG_CMD_LED=3Dy
> +CONFIG_CMD_LED_TRIGGER=3Dy
>  CONFIG_NET=3Dy
>  CONFIG_NET_DHCP=3Dy
> +CONFIG_NET_NFS=3Dy
>  CONFIG_NET_PING=3Dy
>  CONFIG_NET_TFTP=3Dy
>  CONFIG_NET_TFTP_PUSH=3Dy
> @@ -64,9 +63,6 @@ CONFIG_I2C_IMX=3Dy
>  CONFIG_MTD=3Dy
>  CONFIG_MTD_RAW_DEVICE=3Dy
>  CONFIG_NAND=3Dy
> -# CONFIG_NAND_ECC_SOFT is not set
> -# CONFIG_NAND_ECC_HW_SYNDROME is not set
> -# CONFIG_NAND_ECC_HW_NONE is not set
>  CONFIG_NAND_IMX=3Dy
>  CONFIG_USB=3Dy
>  CONFIG_USB_EHCI=3Dy
> @@ -80,6 +76,7 @@ CONFIG_MCI=3Dy
>  CONFIG_MCI_IMX_ESDHC=3Dy
>  CONFIG_LED=3Dy
>  CONFIG_LED_GPIO=3Dy
> +CONFIG_LED_TRIGGERS=3Dy
>  CONFIG_FS_FAT=3Dy
>  CONFIG_FS_FAT_WRITE=3Dy
>  CONFIG_FS_FAT_LFN=3Dy
> -- =

> 1.7.7.6
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
