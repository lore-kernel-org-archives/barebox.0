Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHSUF-0003qn-9Z
 for barebox@lists.infradead.org; Mon, 27 Jun 2016 09:05:50 +0000
Date: Mon, 27 Jun 2016 11:05:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160627090525.GE20657@pengutronix.de>
References: <1466970433-19810-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466970433-19810-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] ARM: boot: add prepend option for board specific ATAGs
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Jun 26, 2016 at 09:47:13PM +0200, Alexander Kurz wrote:
> Board specific ATAGs might be passed to vendor provided kernels via the
> ARM_BOARD_APPEND_ATAG option. In this case, the board specific ATAGs will
> be appended to the end of the ATAG list.
> Anyway, some vendor provided kernels might crop the ATAG list at ATAG_MEM,
> also chopping off the board specific ATAGs, see linux squash_mem_tags() as
> reference. The Kindle-3 kernel is one example.
> 
> This conflict might be solved by a) making ATAG_MEM optional which might break
> the existing behavour around squash_mem_tags() or b) by allowing the insertion
> of board specific ATAGs in front of ATAG_MEM which violates the requirement
> from Documentation/arm/Booting to order ATAGs by increasing address.
> 
> Add option to insert board specific ATAGs in front of ATAG_MEM.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  arch/arm/Kconfig        | 10 ++++++++++
>  arch/arm/lib/armlinux.c |  9 ++++++---
>  2 files changed, 16 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 1fc887b..71374cc 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -313,6 +313,16 @@ config ARM_BOARD_APPEND_ATAG
>  	  This option is purely to start some vendor provided kernels.
>  	  ** DO NOT USE FOR YOUR OWN DESIGNS! **
>  
> +config ARM_BOARD_PREPEND_ATAG
> +	bool "Prepend the board specific ATAGs"
> +	depends on ARM_BOARD_APPEND_ATAG
> +	help
> +	  Choose this option if your kernel crops the passed ATAG list e.g. at
> +	  ATAG_MEM, also cropping off the board specific ATAGs. This option
> +	  will pass all board specific ATAGs in front of all other ATAGs.
> +	  This option is purely to start some vendor provided kernels.
> +	  ** DO NOT USE FOR YOUR OWN DESIGNS! **
> +
>  endmenu
>  
>  menu "ARM specific settings"
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index 47b9bd3..e1f8146 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -234,6 +234,9 @@ static void setup_tags(unsigned long initrd_address,
>  	const char *commandline = linux_bootargs_get();
>  
>  	setup_start_tag();
> +	if (IS_ENABLED(CONFIG_ARM_BOARD_PREPEND_ATAG) && atag_appender)
> +		params = atag_appender(params);
> +
>  	setup_memory_tags();
>  	setup_commandline_tag(commandline, swap);
>  
> @@ -242,10 +245,10 @@ static void setup_tags(unsigned long initrd_address,
>  
>  	setup_revision_tag();
>  	setup_serial_tag();
> -#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
> -	if (atag_appender != NULL)
> +	if (IS_ENABLED(CONFIG_ARM_BOARD_APPEND_ATAG) && atag_appender &&
> +			!IS_ENABLED(CONFIG_ARM_BOARD_PREPEND_ATAG))
>  		params = atag_appender(params);
> -#endif
> +
>  	setup_end_tag();
>  
>  	printf("commandline: %s\n"
> -- 
> 2.1.4
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
