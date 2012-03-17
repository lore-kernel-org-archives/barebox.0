Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S8wNq-0004Ll-Ak
 for barebox@lists.infradead.org; Sat, 17 Mar 2012 16:21:35 +0000
Date: Sat, 17 Mar 2012 17:21:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120317162129.GM3852@pengutronix.de>
References: <1331895123-8143-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331895123-8143-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] i.MX51: add support for UART3
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Mar 16, 2012 at 02:52:03PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks.

Sascha

> ---
>  arch/arm/mach-imx/include/mach/devices-imx51.h |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
> index d9bed8c..27fcaa2 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx51.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
> @@ -37,6 +37,11 @@ static inline struct device_d *imx51_add_uart1(void)
>  	return imx_add_uart((void *)MX51_UART2_BASE_ADDR, 1);
>  }
>  
> +static inline struct device_d *imx51_add_uart2(void)
> +{
> +	return imx_add_uart((void *)MX51_UART3_BASE_ADDR, 2);
> +}
> +
>  static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
>  {
>  	return imx_add_fec((void *)MX51_MXC_FEC_BASE_ADDR, pdata);
> -- 
> 1.7.3.4
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
