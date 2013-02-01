Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1Kpu-0007WR-Ki
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 17:55:39 +0000
Date: Fri, 1 Feb 2013 18:55:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130201175536.GZ1906@pengutronix.de>
References: <1359654315-19183-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359654315-19183-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] omap3: fix debug_ll uart base
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 31, 2013 at 06:45:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-omap/include/mach/debug_ll.h |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
> index 142f01a..ed1777b 100644
> --- a/arch/arm/mach-omap/include/mach/debug_ll.h
> +++ b/arch/arm/mach-omap/include/mach/debug_ll.h
> @@ -23,9 +23,9 @@
>  #include <mach/omap3-silicon.h>
>  
>  #ifdef CONFIG_OMAP3EVM_UART1
> -#define UART_BASE	OMAP_UART1_BASE
> +#define UART_BASE	OMAP3_UART1_BASE
>  #else
> -#define UART_BASE	OMAP_UART3_BASE
> +#define UART_BASE	OMAP3_UART3_BASE
>  #endif

This file is also used for omap4 and am33xx. Probably this used to work
when all shared the same defines. So, the above does not seem to be a
proper fix.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
