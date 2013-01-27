Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f324.mail.ru ([128.140.169.187])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzV9X-0006tw-PI
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 16:32:21 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sun, 27 Jan 2013 20:32:15 +0400
Message-ID: <1359304335.39487654@f324.mail.ru>
In-Reply-To: <1359283623-1782-17-git-send-email-s.hauer@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
 <1359283623-1782-17-git-send-email-s.hauer@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAxNi8zNF0gQVJNIGNsZXA3MjEyOiBzd2l0Y2ggdG8gYmFy?=
 =?UTF-8?B?ZWJveF9hcm1fZW50cnk=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Kconfig                    |    2 ++
>  arch/arm/boards/clep7212/lowlevel.c |    3 ++-
>  arch/arm/mach-clps711x/Kconfig      |    2 --
>  3 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 3197f8b..6ed9bf0 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -44,6 +44,8 @@ config ARCH_CLPS711X
>  	bool "Cirrus Logic EP711x/EP721x/EP731x"
>  	select CLKDEV_LOOKUP
>  	select CPU_32v4T
> +	select MACH_HAS_LOWLEVEL_INIT
> +	select MACH_DO_LOWLEVEL_INIT
>  
>  config ARCH_EP93XX
>  	bool "Cirrus Logic EP93xx"
> diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> index 9b7e241..7465a42 100644
> --- a/arch/arm/boards/clep7212/lowlevel.c
> +++ b/arch/arm/boards/clep7212/lowlevel.c
> @@ -9,6 +9,7 @@
>  
>  #include <common.h>
>  #include <init.h>
> +#include <sizes.h>
>  
>  #include <asm/io.h>
>  #include <asm/barebox-arm.h>
> @@ -52,5 +53,5 @@ void __naked __bare_init reset(void)
>  	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
>  	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
>  
> -	board_init_lowlevel_return();
> +	barebox_arm_entry(SDRAM0_BASE, SZ_32M, 0);
...
Since this code placed in pbl, can we define a minimal size at this point?
Some targets may have a little than 32M.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
