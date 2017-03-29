Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ct7Km-0006T0-0Z
 for barebox@lists.infradead.org; Wed, 29 Mar 2017 06:43:58 +0000
Date: Wed, 29 Mar 2017 08:43:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170329064332.k64rsjt2o6y5rp3l@pengutronix.de>
References: <1490518497-12690-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1490518497-12690-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM Kindle3 defconfig: add clock manipulation command
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 26, 2017 at 10:54:57AM +0200, Alexander Kurz wrote:
> The clock manipulation command provides usefull information for a
> potential kernel developper. Just add it for kindle3 defconfig.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/configs/kindle3_defconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/kindle3_defconfig b/arch/arm/configs/kindle3_defconfig
> index 0b7088e..a4e08df 100644
> --- a/arch/arm/configs/kindle3_defconfig
> +++ b/arch/arm/configs/kindle3_defconfig
> @@ -1,8 +1,8 @@
>  CONFIG_ARCH_IMX=y
>  CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x30000
>  CONFIG_MACH_KINDLE3=y
> -CONFIG_ARCH_IMX_USBLOADER=y
>  CONFIG_IMX_IIM=y
> +CONFIG_ARCH_IMX_USBLOADER=y
>  CONFIG_AEABI=y
>  CONFIG_ARM_BOARD_APPEND_ATAG=y
>  CONFIG_ARM_BOARD_PREPEND_ATAG=y
> @@ -46,6 +46,7 @@ CONFIG_CMD_TIMEOUT=y
>  CONFIG_CMD_CRC=y
>  CONFIG_CMD_CRC_CMP=y
>  CONFIG_CMD_MEMTEST=y
> +CONFIG_CMD_CLK=y
>  CONFIG_CMD_GPIO=y
>  CONFIG_CMD_I2C=y
>  CONFIG_CMD_SPI=y
> -- 
> 2.1.4
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
