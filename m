Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNrpu-0001yW-Ch
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 06:13:03 +0000
Date: Thu, 1 Oct 2020 08:12:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201001061255.GI11648@pengutronix.de>
References: <20200929105823.11542-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929105823.11542-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/5] common: debug_ll: remove reference to undefined
 Kconfig option
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 29, 2020 at 12:58:19PM +0200, Ahmad Fatoum wrote:
> The code was copied from the kernel, but we don't support the imx6sl.
> Drop the left-over.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 9e6918189bdb..be03c0d5df2b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1292,7 +1292,6 @@ config DEBUG_IMX_UART_PORT
>  						DEBUG_IMX51_UART || \
>  						DEBUG_IMX53_UART || \
>  						DEBUG_IMX6Q_UART || \
> -						DEBUG_IMX6SL_UART || \
>  						DEBUG_IMX7D_UART || \
>  						DEBUG_IMX8M_UART || \
>  						DEBUG_VF610_UART
> -- 
> 2.28.0
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
