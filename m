Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js9el-0004uw-8o
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 18:46:27 +0000
Date: Sun, 5 Jul 2020 20:46:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705184625.GA15485@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
 <20200701091122.3437-24-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701091122.3437-24-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 23/28] ARM: at91: sama5d27-som1: add additional first
 stage entry point
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 01, 2020 at 11:11:17AM +0200, Ahmad Fatoum wrote:
> The BootROM constrains us to a 64K big first stage bootloader. Add a PBL
> entry point for a xload barebox that sets up the minimum necessary to
> load a FAT32 barebox.bin from the SD-Card.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/sama5d27-som1/lowlevel.c      | 32 +++++++++------
>  arch/arm/mach-at91/Kconfig                    |  1 +
>  arch/arm/mach-at91/include/mach/barebox-arm.h | 21 ++++++++++
>  .../include/mach/sama5d2-sip-ddramc.h         | 39 +++++++++++++++++++
>  images/Makefile.at91                          |  5 +++
>  5 files changed, 87 insertions(+), 11 deletions(-)
>  create mode 100644 arch/arm/mach-at91/include/mach/barebox-arm.h
>  create mode 100644 arch/arm/mach-at91/include/mach/sama5d2-sip-ddramc.h
> 
> diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
> index 2e408ce832f7..d52c4ca7465e 100644
> --- a/arch/arm/boards/sama5d27-som1/lowlevel.c
> +++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
> @@ -5,13 +5,12 @@
>  
>  #include <common.h>
>  #include <init.h>
> -
> -#include <asm/barebox-arm-head.h>
> -#include <asm/barebox-arm.h>
> +#include <mach/barebox-arm.h>
>  #include <mach/sama5d2_ll.h>
>  #include <mach/iomux.h>
> +#include <mach/xload.h>
>  #include <debug_ll.h>
> -#include <mach/at91_dbgu.h>
> +#include <mach/sama5d2-sip-ddramc.h>
>  
>  #define RGB_LED_GREEN (1 << 0)
>  #define RGB_LED_RED   (1 << 1)
> @@ -40,23 +39,34 @@ static void ek_turn_led(unsigned color)
>  	}
>  }
>  
> -static void ek_dbgu_init(void)
> +SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
>  {
> -	sama5d2_resetup_uart_console(MASTER_CLOCK);
> +	void __iomem *dbgu_base;
> +	sama5d2_lowlevel_init();
> +
> +	dbgu_base = sama5d2_resetup_uart_console(MASTER_CLOCK);
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		putc_ll('>');

putc_ll() is a noop function when CONFIG_DEBUG_LL is disabled. No need
to put it inside a IS_ENABLED(CONFIG_DEBUG_LL).

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
