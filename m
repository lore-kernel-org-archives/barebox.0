Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REcCX-0007zO-Q8
	for barebox@lists.infradead.org; Fri, 14 Oct 2011 07:29:08 +0000
Date: Fri, 14 Oct 2011 09:29:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111014072904.GB13898@pengutronix.de>
References: <1318499513-13758-1-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318499513-13758-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH] arm: at91: fix environment location in flash for
	multiple boards
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 13, 2011 at 11:51:52AM +0200, Thomas Petazzoni wrote:
> The environment partition was overlapping the Barebox partition in
> those three Atmel boards. Saving the environment resulted in the
> Barebox being overwritten.
> 
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Applied to master.

Sascha

> ---
>  arch/arm/boards/at91sam9260ek/init.c    |    2 +-
>  arch/arm/boards/at91sam9263ek/init.c    |    2 +-
>  arch/arm/boards/at91sam9m10g45ek/init.c |    2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> index ea80a1b..958319e 100644
> --- a/arch/arm/boards/at91sam9260ek/init.c
> +++ b/arch/arm/boards/at91sam9260ek/init.c
> @@ -158,7 +158,7 @@ static int at91sam9260ek_devices_init(void)
>  
>  	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
> -	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
> +	devfs_add_partition("nand0", 0x80000, 0x20000, PARTITION_FIXED, "env_raw");
>  	dev_add_bb_dev("env_raw", "env0");
>  
>  	return 0;
> diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
> index 40c0b7b..bb564d7 100644
> --- a/arch/arm/boards/at91sam9263ek/init.c
> +++ b/arch/arm/boards/at91sam9263ek/init.c
> @@ -134,7 +134,7 @@ static int at91sam9263ek_devices_init(void)
>  #elif defined(CONFIG_NAND_ATMEL)
>  	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
> -	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
> +	devfs_add_partition("nand0", 0x80000, 0x20000, PARTITION_FIXED, "env_raw");
>  	dev_add_bb_dev("env_raw", "env0");
>  #endif
>  
> diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
> index 073ff42..5fdc960 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/init.c
> +++ b/arch/arm/boards/at91sam9m10g45ek/init.c
> @@ -142,7 +142,7 @@ static int at91sam9m10g45ek_devices_init(void)
>  
>  	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
> -	devfs_add_partition("nand0", 0x40000, 0x40000, PARTITION_FIXED, "env_raw");
> +	devfs_add_partition("nand0", 0x80000, 0x20000, PARTITION_FIXED, "env_raw");
>  	dev_add_bb_dev("env_raw", "env0");
>  
>  	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_6 + 0x100));
> -- 
> 1.7.4.1
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
