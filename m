Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNYoA-0001Bk-Ny
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 07:44:56 +0000
Date: Fri, 16 Nov 2018 08:44:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181116074442.mkx2lj3dozbf2n7w@pengutronix.de>
References: <20181115090530.10081-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181115090530.10081-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: socfpga: update defconfig
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Nov 15, 2018 at 10:05:29AM +0100, Steffen Trumtrar wrote:
> Select some more common drivers in the defconfig.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/configs/socfpga_defconfig | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
> index 3a50bae8f2dc..d9688ca29ce3 100644
> --- a/arch/arm/configs/socfpga_defconfig
> +++ b/arch/arm/configs/socfpga_defconfig
> @@ -59,6 +59,7 @@ CONFIG_CMD_GPIO=y
>  CONFIG_CMD_LED=y
>  CONFIG_CMD_SPI=y
>  CONFIG_CMD_LED_TRIGGER=y
> +CONFIG_CMD_WD=y
>  CONFIG_CMD_BAREBOX_UPDATE=y
>  CONFIG_CMD_FIRMWARELOAD=y
>  CONFIG_CMD_OF_NODE=y
> @@ -73,15 +74,22 @@ CONFIG_OF_BAREBOX_ENV_IN_FS=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_DRIVER_NET_DESIGNWARE=y
>  CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA=y
> +CONFIG_MTD=y
> +CONFIG_NAND=y
> +CONFIG_MTD_NAND_DENALI=y
> +CONFIG_MTD_NAND_DENALI_DT=y
> +CONFIG_MTD_SPI_NOR=y
> +CONFIG_SPI_CADENCE_QUADSPI=y
>  CONFIG_MCI=y
>  CONFIG_MCI_DW=y
> -CONFIG_MFD_MC13XXX=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
>  CONFIG_LED_GPIO_OF=y
>  CONFIG_LED_TRIGGERS=y
>  CONFIG_EEPROM_AT25=y
>  CONFIG_KEYBOARD_GPIO=y
> +CONFIG_WATCHDOG=y
> +CONFIG_WATCHDOG_DW=y
>  CONFIG_GPIO_DESIGNWARE=y
>  CONFIG_FIRMWARE_ALTERA_SOCFPGA=y
>  CONFIG_FS_EXT4=y
> -- 
> 2.19.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
