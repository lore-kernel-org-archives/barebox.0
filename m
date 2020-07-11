Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ju728-0003cQ-1Q
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 04:22:40 +0000
Date: Sat, 11 Jul 2020 06:22:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200711042238.GK15485@pengutronix.de>
References: <1594121117-187193-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1594121117-187193-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM: configs: imx_v7_defconfig: Add state framework
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 07, 2020 at 01:25:16PM +0200, Robert Karszniewicz wrote:
> From: Daniel Schultz <d.schultz@phytec.de>
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---
>  arch/arm/configs/imx_v7_defconfig | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 24bdc0122c6a..ad5d43a68b62 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -65,6 +65,7 @@ CONFIG_BLSPEC=y
>  CONFIG_CONSOLE_ACTIVATE_NONE=y
>  CONFIG_PARTITION_DISK_EFI=y
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
> +CONFIG_STATE=y
>  CONFIG_RESET_SOURCE=y
>  CONFIG_FASTBOOT_CMD_OEM=y
>  CONFIG_CMD_DMESG=y
> @@ -127,6 +128,7 @@ CONFIG_CMD_OF_NODE=y
>  CONFIG_CMD_OF_PROPERTY=y
>  CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_TIME=y
> +CONFIG_CMD_STATE=y
>  CONFIG_NET=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
> @@ -173,6 +175,7 @@ CONFIG_MFD_DA9063=y
>  CONFIG_MFD_MC34704=y
>  CONFIG_MFD_MC9SDZ60=y
>  CONFIG_MFD_STMPE=y
> +CONFIG_STATE_DRV=y
>  CONFIG_LED=y
>  CONFIG_LED_GPIO=y
>  CONFIG_LED_GPIO_OF=y
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
