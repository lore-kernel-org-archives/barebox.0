Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8lGd-0007RY-1V
 for barebox@lists.infradead.org; Mon, 12 Aug 2013 06:06:12 +0000
Date: Mon, 12 Aug 2013 08:05:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130812060549.GJ26614@pengutronix.de>
References: <1376201488-29063-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1376201488-29063-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] Cleanup Kconfig files
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Aug 11, 2013 at 10:11:28AM +0400, Alexander Shiyan wrote:
> This patch provides a global cleanup barebox Kconfig files. This includes
> replacing spaces to tabs, formatting in accordance format.
> No functional changes.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-mvebu/Kconfig |  2 +-
>  arch/arm/mach-omap/Kconfig  |  2 +-
>  commands/Kconfig            | 16 ++++++++--------
>  drivers/clk/Kconfig         |  2 +-
>  lib/bootstrap/Kconfig       |  2 +-
>  5 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
> index 7fb7d04..3c38642 100644
> --- a/arch/arm/mach-mvebu/Kconfig
> +++ b/arch/arm/mach-mvebu/Kconfig
> @@ -124,6 +124,6 @@ config MVEBU_CONSOLE_UART
>  	range 0 3 if ARCH_DOVE
>  	range 0 1 if ARCH_KIRKWOOD
>  	help
> -	 Select the UART number the barebox console will sit on.
> +	  Select the UART number the barebox console will sit on.
>  
>  endif # ARCH_MVEBU
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 3ec18f0..e1879df 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -142,7 +142,7 @@ config MACH_BEAGLE
>  config MACH_BEAGLEBONE
>  	bool "Texas Instrument's Beagle Bone"
>  	depends on ARCH_AM33XX
> -	  help
> +	help
>  	  Say Y here if you are using Beagle Bone
>  
>  config MACH_OMAP3EVM
> diff --git a/commands/Kconfig b/commands/Kconfig
> index ede1b3a..55e46a0 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -563,14 +563,14 @@ config CMD_NANDTEST
>  	prompt "nandtest"
>  
>  config CMD_MEMTEST
> -    tristate
> -    prompt "memtest"
> -       help
> -         The memtest command can test the registered barebox memory.
> -         During this test barebox memory regions like heap, stack, ...
> -	 will be skipped. If the tested architecture has MMU with PTE
> -	 flags support, the memtest is running twice with cache enabled
> -	 and with cache disabled
> +	tristate
> +	prompt "memtest"
> +	help
> +	  The memtest command can test the registered barebox memory.
> +	  During this test barebox memory regions like heap, stack, ...
> +	  will be skipped. If the tested architecture has MMU with PTE
> +	  flags support, the memtest is running twice with cache enabled
> +	  and with cache disabled
>  
>  endmenu
>  
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index daf778a..2978c2e 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -11,4 +11,4 @@ config COMMON_CLK
>  config COMMON_CLK_OF_PROVIDER
>  	bool
>  	help
> -	 Clock driver provides OF-Tree based clock lookup.
> +	  Clock driver provides OF-Tree based clock lookup.
> diff --git a/lib/bootstrap/Kconfig b/lib/bootstrap/Kconfig
> index 558da00..645f0b4 100644
> --- a/lib/bootstrap/Kconfig
> +++ b/lib/bootstrap/Kconfig
> @@ -1,5 +1,5 @@
>  menuconfig BOOTSTRAP
> -	bool "Library bootstrap routines           "
> +	bool "Library bootstrap routines"
>  	depends on SHELL_NONE
>  
>  if BOOTSTRAP
> -- 
> 1.8.1.5
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
