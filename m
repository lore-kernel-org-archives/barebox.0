Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kwl2R-0001I1-LS
 for barebox@lists.infradead.org; Tue, 05 Jan 2021 12:02:12 +0000
Date: Tue, 5 Jan 2021 13:02:06 +0100
Message-ID: <20210105120206.GB19063@pengutronix.de>
References: <20210104093432.6257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104093432.6257-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH master] ARM: at91: at91sam9x5: fix co-existance of
 erratum-aware and generic reset
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 04, 2021 at 10:34:32AM +0100, Ahmad Fatoum wrote:
> We have a generic at91sam9 reset driver, but it's unaware of the
> erratum on the at91sam9x5, which can prevent reboot from NAND due to
> interference from SDRAM. The workaround is packing the powering down
> of the DDR and the system reset into a single cache line and executing
> that. This would be a bit tedious to add into the device tree probed
> driver, thus:
> 
>  - Don't activate the work around if we are device-tree enabled, but
>    have a newer SoC
>  - Give the workaround a slightly higher priority, so it's taken instead
>    of the generic DT driver
> 
> This fixes an issue of failing reset with the at91_multi_defconfig,
> because both reset drivers have the same priority of 100.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/at91sam9x5.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
> index 086e27a79f51..8266b512c999 100644
> --- a/arch/arm/mach-at91/at91sam9x5.c
> +++ b/arch/arm/mach-at91/at91sam9x5.c
> @@ -11,10 +11,17 @@ static void at91sam9x5_restart(struct restart_handler *rst)
>  			  IOMEM(AT91SAM9X5_BASE_RSTC + AT91_RSTC_CR));
>  }
>  
> +static struct restart_handler restart;
> +
>  static int at91sam9x5_initialize(void)
>  {
> -	restart_handler_register_fn("soc", at91sam9x5_restart);
> +	if (IS_ENABLED(CONFIG_OFDEVICE) && !of_machine_is_compatible("atmel,at91sam9x5"))
> +		return 0;
> +
> +	restart.name = "soc";
> +	restart.priority = 110;
> +	restart.restart = at91sam9x5_restart;
>  
> -	return 0;
> +	return restart_handler_register(&restart);
>  }
>  coredevice_initcall(at91sam9x5_initialize);
> -- 
> 2.29.2
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
