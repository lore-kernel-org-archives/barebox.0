Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPKdl-0006MM-Gk
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 07:10:34 +0000
Date: Mon, 5 Oct 2020 09:10:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201005071030.GB11648@pengutronix.de>
References: <20201002092955.20882-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201002092955.20882-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] commands: boot_order: note that it's OMAP specific in
 help text
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 02, 2020 at 11:29:55AM +0200, Ahmad Fatoum wrote:
> Kconfig and online documentation don't indicate that it's OMAP
> specific. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-omap/boot_order.c | 4 ++--
>  commands/Kconfig                | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-omap/boot_order.c b/arch/arm/mach-omap/boot_order.c
> index db22513bde42..4b74fdba66b6 100644
> --- a/arch/arm/mach-omap/boot_order.c
> +++ b/arch/arm/mach-omap/boot_order.c
> @@ -70,13 +70,13 @@ static int cmd_boot_order(int argc, char *argv[])
>  }
>  
>  BAREBOX_CMD_HELP_START(boot_order)
> -BAREBOX_CMD_HELP_TEXT("Set warm boot order of up to four devices. Each device can be one of:")
> +BAREBOX_CMD_HELP_TEXT("Set OMAP warm boot order of up to four devices. Each device can be one of:")
>  BAREBOX_CMD_HELP_TEXT("xip xipwait nand onenand mmc1 mmc2_1 mmc2_2 uart usb_1 usb_ulpi usb_2")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(boot_order)
>  	.cmd		= cmd_boot_order,
> -	BAREBOX_CMD_DESC("set warm boot order")
> +	BAREBOX_CMD_DESC("set OMAP warm boot order")
>  	BAREBOX_CMD_OPTS("DEVICE...")
>  	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
>  	BAREBOX_CMD_HELP(cmd_boot_order_help)
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 9114d3cb31a5..df18715f20d4 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -285,9 +285,9 @@ config CMD_AT91_BOOT_TEST
>  config CMD_BOOT_ORDER
>  	tristate
>  	depends on ARCH_OMAP4
> -	prompt "boot_order"
> +	prompt "OMAP boot_order"
>  	help
> -	  Set warm boot order (the next boot device on a warm reset).
> +	  Set OMAP warm boot order (the next boot device on a warm reset).
>  
>  	  Usage: boot_order DEVICE...
>  
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
