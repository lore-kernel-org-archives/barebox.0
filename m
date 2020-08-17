Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7cQ2-0006jB-3U
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 10:31:10 +0000
Date: Mon, 17 Aug 2020 12:31:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200817103108.GD19745@pengutronix.de>
References: <20200816214242.137168-1-dev@lynxeye.de>
 <20200816214242.137168-2-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200816214242.137168-2-dev@lynxeye.de>
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
Subject: Re: [PATCH 2/3] ARM: vexpress: allow to select debug UART address
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 16, 2020 at 11:42:41PM +0200, Lucas Stach wrote:
> DEBUG_LL currently doesn't work on the Vexpress platform for multiple
> reasons: the addresses defined in the header aren't the real UART base
> addresses but only the bus base address, also the referenced MP define
> is never set.
> 
> Add two options to allow the user to select the correct debug UART
> address for both supported Vexpress platforms.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/mach-vexpress/include/mach/debug_ll.h | 11 +++++------
>  common/Kconfig                                 | 15 +++++++++++++++
>  2 files changed, 20 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-vexpress/include/mach/debug_ll.h b/arch/arm/mach-vexpress/include/mach/debug_ll.h
> index d59f68ea1973..a9c0d9850db8 100644
> --- a/arch/arm/mach-vexpress/include/mach/debug_ll.h
> +++ b/arch/arm/mach-vexpress/include/mach/debug_ll.h
> @@ -10,13 +10,12 @@
>  #include <linux/amba/serial.h>
>  #include <io.h>
>  
> -#define DEBUG_LL_PHYS_BASE		0x10000000
> -#define DEBUG_LL_PHYS_BASE_RS1		0x1c000000
> +#ifdef CONFIG_DEBUG_VEXPRESS_CA9_UART
> +#define DEBUG_LL_UART_ADDR 0x10009000
> +#endif
>  
> -#ifdef MP
> -#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE
> -#else
> -#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
> +#ifdef CONFIG_DEBUG_VEXPRESS_CA15_UART
> +#define DEBUG_LL_UART_ADDR 0x1c090000
>  #endif

With this change DEBUG_LL_UART_ADDR is undefined when CONFIG_DEBUG_LL is
not set.

>  
>  #include <debug_ll/pl011.h>

in this file DEBUG_LL_UART_ADDR is used in a static inline function, so
we may only include it when DEBUG_LL_UART_ADDR is defined.

Not sure what we best do about it, but this breaks compilation of
vexpress_defconfig.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
