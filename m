Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bMU6U-0005oB-H2
 for barebox@lists.infradead.org; Mon, 11 Jul 2016 05:50:03 +0000
Date: Mon, 11 Jul 2016 07:49:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160711054940.GU20657@pengutronix.de>
References: <1467963348-15018-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467963348-15018-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx_defconfig: enable NAND_IMX_BBM and
 NAND_ALLOW_ERASE_BAD
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 08, 2016 at 09:35:48AM +0200, Uwe Kleine-K=F6nig wrote:
> The first is important for imx systems with NAND. The second is a useful
> debug aid that doesn't change behaviour without being explicitly enabled
> at runtime. So both should be safe.
> =

> The other changes result from MFD_MC13XXX and SPI_IMX being selected by
> MACH_PCM038 since 4bd07a103982 ("arm: imx: select MFD_MC13XXX for all
> boards that need it") and a move of a few Kconfig definitions in
> 7839011f61c0 ("bootm: Move bootm options to common/Kconfig").
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/configs/imx_defconfig | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defcon=
fig
> index 886bcefd9b68..69ab021e25ae 100644
> --- a/arch/arm/configs/imx_defconfig
> +++ b/arch/arm/configs/imx_defconfig
> @@ -19,6 +19,10 @@ CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_CMDLINE_EDITING=3Dy
>  CONFIG_AUTO_COMPLETE=3Dy
>  CONFIG_MENU=3Dy
> +CONFIG_BOOTM_SHOW_TYPE=3Dy
> +CONFIG_BOOTM_VERBOSE=3Dy
> +CONFIG_BOOTM_INITRD=3Dy
> +CONFIG_BOOTM_OFTREE=3Dy
>  CONFIG_BLSPEC=3Dy
>  CONFIG_CONSOLE_ACTIVATE_NONE=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> @@ -26,10 +30,6 @@ CONFIG_RESET_SOURCE=3Dy
>  CONFIG_LONGHELP=3Dy
>  CONFIG_CMD_IOMEM=3Dy
>  CONFIG_CMD_MEMINFO=3Dy
> -CONFIG_BOOTM_SHOW_TYPE=3Dy
> -CONFIG_BOOTM_VERBOSE=3Dy
> -CONFIG_BOOTM_INITRD=3Dy
> -CONFIG_BOOTM_OFTREE=3Dy
>  # CONFIG_CMD_BOOTU is not set
>  CONFIG_CMD_GO=3Dy
>  CONFIG_CMD_RESET=3Dy
> @@ -79,7 +79,6 @@ CONFIG_OF_BAREBOX_DRIVERS=3Dy
>  CONFIG_DRIVER_NET_FEC_IMX=3Dy
>  CONFIG_NET_USB=3Dy
>  CONFIG_NET_USB_ASIX=3Dy
> -CONFIG_DRIVER_SPI_IMX=3Dy
>  CONFIG_I2C=3Dy
>  CONFIG_I2C_IMX=3Dy
>  CONFIG_MTD=3Dy
> @@ -89,7 +88,9 @@ CONFIG_CFI_BUFFER_WRITE=3Dy
>  CONFIG_NAND=3Dy
>  # CONFIG_NAND_ECC_SOFT is not set
>  # CONFIG_NAND_ECC_HW_SYNDROME is not set
> +CONFIG_NAND_ALLOW_ERASE_BAD=3Dy
>  CONFIG_NAND_IMX=3Dy
> +CONFIG_NAND_IMX_BBM=3Dy
>  CONFIG_MTD_UBI=3Dy
>  CONFIG_MTD_UBI_FASTMAP=3Dy
>  CONFIG_USB_HOST=3Dy
> @@ -97,7 +98,6 @@ CONFIG_USB_EHCI=3Dy
>  CONFIG_USB_ULPI=3Dy
>  CONFIG_MCI=3Dy
>  CONFIG_MCI_IMX=3Dy
> -CONFIG_MFD_MC13XXX=3Dy
>  CONFIG_LED=3Dy
>  CONFIG_LED_GPIO=3Dy
>  CONFIG_LED_GPIO_OF=3Dy
> -- =

> 2.8.1
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
