Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgK27-00063e-BM
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 18:49:24 +0000
Date: Wed, 5 Dec 2012 19:49:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205184921.GL10369@pengutronix.de>
References: <1354714769-5177-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354714769-5177-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] at91: fix debug_ll
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2012 at 02:39:29PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> since 9d1bcab50454e06c74dc9fda42a05cd8a43265c6
> debug_ll: Let architectures define PUTC_LL directly

Sorry, missed at91. Applied.

Thanks
 Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/include/mach/debug_ll.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
> index ee824cb..a85fdee 100644
> --- a/arch/arm/mach-at91/include/mach/debug_ll.h
> +++ b/arch/arm/mach-at91/include/mach/debug_ll.h
> @@ -25,7 +25,7 @@
>   *
>   * This does not append a newline
>   */
> -static void putc(int c)
> +static inline void PUTC_LL(char c)
>  {
>  	while (!(__raw_readl(UART_BASE + ATMEL_US_CSR) & ATMEL_US_TXRDY))
>  		barrier();
> -- 
> 1.7.10.4
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
