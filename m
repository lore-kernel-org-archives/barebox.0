Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaOeE-0007Ds-W1
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 10:32:15 +0000
Date: Mon, 19 Nov 2012 11:32:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119103212.GS10369@pengutronix.de>
References: <1352976671-17492-1-git-send-email-christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352976671-17492-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: Re: [PATCH] imx53: implement imx53_add_kpp
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On Thu, Nov 15, 2012 at 11:51:11AM +0100, Christian Kapeller wrote:
> Allows usage of imx keypad driver in imx53 platforms

Applied, thanks

Sascha

> 
> ---
>  arch/arm/mach-imx/include/mach/devices-imx53.h |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
> index 5f967ea..6692396 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx53.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
> @@ -82,3 +82,8 @@ static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pda
>  
>  	return dev;
>  }
> +
> +static inline struct device_d *imx53_add_kpp(struct matrix_keymap_data *pdata)
> +{
> +	return imx_add_kpp((void *)MX53_KPP_BASE_ADDR, pdata);
> +}
> -- 
> 1.7.5.4
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
