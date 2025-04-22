Delivery-date: Tue, 22 Apr 2025 13:13:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7BZd-0041u5-2h
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 13:13:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7BZc-0002i6-KU
	for lore@pengutronix.de; Tue, 22 Apr 2025 13:13:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8UDB6j5QwWxwecwrEkAOYHuZ0QvZT72t9vCeFtXBY4Y=; b=UvYeFx4ulQCS8GH7JlfoGbURQP
	qSW7+sHFF1ozA734x9pr4xR5cq0YsChEb+yPF6qb5MX0+hx/QwLqjDjJgsZ2+ZosvpLwJUNX6puBB
	8GdtX0H2hWsvp9JupxrwcfZ9fTElvm5h61AoX2VmTaWHpNOLtoLYKhCRIII7yw5Kb14jBH3RdekD4
	obIm6Ps9SqNTQ3AtTVT0eLPqgh3LoZgdD4+proHBziwtCWqVqlNgrRM7y00HkxCsav/JgUk50AGB+
	x0xNirPYKMuAFO52XJ8EUCrlI2bayKOccH2QAkWtPyFkCYr8SSljx3NqmLCZxB8XudT0j3uBcGbBo
	6MmLe21w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7BYu-00000006tpj-3OBc;
	Tue, 22 Apr 2025 11:13:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Av8-00000006muA-2RoP
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 10:32:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u7Av6-0002y4-W1; Tue, 22 Apr 2025 12:32:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7Av6-001XHZ-2Z;
	Tue, 22 Apr 2025 12:32:04 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u7Av6-00F707-2F;
	Tue, 22 Apr 2025 12:32:04 +0200
Date: Tue, 22 Apr 2025 12:32:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aAdwJKnnUD5n_y-8@pengutronix.de>
References: <20250422075615.220139-1-a.fatoum@pengutronix.de>
 <20250422075615.220139-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250422075615.220139-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_033206_929536_E258F262 
X-CRM114-Status: GOOD (  26.32  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] poweroff: give all poweroff_handler::poweroff
 callbacks a flags parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 22, 2025 at 09:56:14AM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> Like done for restart handlers and the poweroff_machine function, give
> the callbacks a parameter as well and pass the flags along.

What kind of flags are you anticipating for poweroff?

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  arch/arm/cpu/psci-client.c            | 3 ++-
>  arch/arm/mach-imx/imx6.c              | 3 ++-
>  arch/arm/mach-pxa/pxa2xx.c            | 3 ++-
>  arch/arm/mach-pxa/pxa3xx.c            | 3 ++-
>  arch/kvx/lib/poweroff.c               | 3 ++-
>  arch/mips/mach-xburst/reset-jz4750.c  | 3 ++-
>  arch/sandbox/board/power.c            | 3 ++-
>  common/poweroff.c                     | 5 +++--
>  drivers/mfd/axp20x.c                  | 3 ++-
>  drivers/mfd/rk808.c                   | 3 ++-
>  drivers/power/reset/gpio-poweroff.c   | 3 ++-
>  drivers/power/reset/htif-poweroff.c   | 3 ++-
>  drivers/power/reset/syscon-poweroff.c | 3 ++-
>  drivers/regulator/pfuze.c             | 3 ++-
>  drivers/watchdog/bcm2835_wdt.c        | 5 +++--
>  drivers/watchdog/stpmic1_wdt.c        | 3 ++-
>  efi/payload/init.c                    | 3 ++-
>  include/mach/imx/imx6.h               | 3 ++-
>  include/poweroff.h                    | 6 ++++--
>  19 files changed, 42 insertions(+), 22 deletions(-)
> 
> diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
> index 70436bde0a3a..43293fe034e6 100644
> --- a/arch/arm/cpu/psci-client.c
> +++ b/arch/arm/cpu/psci-client.c
> @@ -25,7 +25,8 @@ static void __noreturn psci_invoke_noreturn(ulong function)
>  	hang();
>  }
>  
> -static void __noreturn psci_poweroff(struct poweroff_handler *handler)
> +static void __noreturn psci_poweroff(struct poweroff_handler *handler,
> +				     unsigned long flags)
>  {
>  	psci_invoke_noreturn(ARM_PSCI_0_2_FN_SYSTEM_OFF);
>  }
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index b0d3d8ef2fb0..ed6cde801ec7 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -358,7 +358,8 @@ static int imx6_fixup_cpus_register(void)
>  }
>  device_initcall(imx6_fixup_cpus_register);
>  
> -void __noreturn imx6_pm_stby_poweroff(struct poweroff_handler *handler)
> +void __noreturn imx6_pm_stby_poweroff(struct poweroff_handler *handler,
> +				      unsigned long flags)
>  {
>  	void *ccm_base = IOMEM(MX6_CCM_BASE_ADDR);
>  	void *gpc_base = IOMEM(MX6_GPC_BASE_ADDR);
> diff --git a/arch/arm/mach-pxa/pxa2xx.c b/arch/arm/mach-pxa/pxa2xx.c
> index 496ceb39d513..ee50dca7a9aa 100644
> --- a/arch/arm/mach-pxa/pxa2xx.c
> +++ b/arch/arm/mach-pxa/pxa2xx.c
> @@ -47,7 +47,8 @@ void pxa_clear_reset_source(void)
>  	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
>  }
>  
> -static void __noreturn pxa2xx_poweroff(struct poweroff_handler *handler)
> +static void __noreturn pxa2xx_poweroff(struct poweroff_handler *handler,
> +				       unsigned long flags)
>  {
>  	shutdown_barebox();
>  
> diff --git a/arch/arm/mach-pxa/pxa3xx.c b/arch/arm/mach-pxa/pxa3xx.c
> index ec4998396253..ea84efc8b046 100644
> --- a/arch/arm/mach-pxa/pxa3xx.c
> +++ b/arch/arm/mach-pxa/pxa3xx.c
> @@ -49,7 +49,8 @@ void pxa_clear_reset_source(void)
>  
>  device_initcall(pxa_detect_reset_source);
>  
> -static void __noreturn pxa3xx_poweroff(struct poweroff_handler *handler)
> +static void __noreturn pxa3xx_poweroff(struct poweroff_handler *handler,
> +				       unsigned long flags)
>  {
>  	shutdown_barebox();
>  
> diff --git a/arch/kvx/lib/poweroff.c b/arch/kvx/lib/poweroff.c
> index d776cb087777..324144837a18 100644
> --- a/arch/kvx/lib/poweroff.c
> +++ b/arch/kvx/lib/poweroff.c
> @@ -9,7 +9,8 @@
>  
>  #include <asm/sfr.h>
>  
> -static void __noreturn kvx_poweroff(struct poweroff_handler *handler)
> +static void __noreturn kvx_poweroff(struct poweroff_handler *handler,
> +				    unsigned long flags)
>  {
>  	register int status asm("r0") = 0;
>  
> diff --git a/arch/mips/mach-xburst/reset-jz4750.c b/arch/mips/mach-xburst/reset-jz4750.c
> index a1d5976fb2c2..561654f80e90 100644
> --- a/arch/mips/mach-xburst/reset-jz4750.c
> +++ b/arch/mips/mach-xburst/reset-jz4750.c
> @@ -27,7 +27,8 @@ static void __noreturn jz4750d_halt(void)
>  	unreachable();
>  }
>  
> -static void __noreturn jz4750_poweroff(struct poweroff_handler *handler)
> +static void __noreturn jz4750_poweroff(struct poweroff_handler *handler,
> +				       unsigned long flags)
>  {
>  	u32 ctrl;
>  
> diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
> index 546e1a518fd3..9caaea5be2f0 100644
> --- a/arch/sandbox/board/power.c
> +++ b/arch/sandbox/board/power.c
> @@ -14,7 +14,8 @@ struct sandbox_power {
>  	struct nvmem_cell *reset_source_cell;
>  };
>  
> -static void sandbox_poweroff(struct poweroff_handler *poweroff)
> +static void sandbox_poweroff(struct poweroff_handler *poweroff,
> +			     unsigned long flags)
>  {
>  	struct sandbox_power *power = container_of(poweroff, struct sandbox_power, poweroff);
>  
> diff --git a/common/poweroff.c b/common/poweroff.c
> index d453a9a98025..896716bb258c 100644
> --- a/common/poweroff.c
> +++ b/common/poweroff.c
> @@ -43,7 +43,8 @@ int poweroff_handler_register(struct poweroff_handler *handler)
>   *
>   * return: 0 for success or negative error code
>   */
> -int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *))
> +int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *,
> +						     unsigned long flags))
>  {
>  	struct poweroff_handler *handler;
>  	int ret;
> @@ -78,7 +79,7 @@ void __noreturn poweroff_machine(unsigned long flags)
>  	if (handler) {
>  		pr_debug("using poweroff handler %s\n", handler->name);
>  		console_flush();
> -		handler->poweroff(handler);
> +		handler->poweroff(handler, flags);
>  	} else {
>  		pr_err("No poweroff handler found!\n");
>  	}
> diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
> index 666b9ea98cae..0f71131c9a2d 100644
> --- a/drivers/mfd/axp20x.c
> +++ b/drivers/mfd/axp20x.c
> @@ -233,7 +233,8 @@ static const struct mfd_cell axp813_cells[] = {
>  	},
>  };
>  
> -static void axp20x_power_off(struct poweroff_handler *handler)
> +static void axp20x_power_off(struct poweroff_handler *handler,
> +			     unsigned long flags)
>  {
>  	struct axp20x_dev *axp20x = container_of(handler, struct axp20x_dev, poweroff);
>  
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index 5b010e09ef33..1c5c705fa4fc 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -222,7 +222,8 @@ static const struct rk808_reg_data rk818_pre_init_reg[] = {
>  						    VB_LO_SEL_3500MV },
>  };
>  
> -static void rk808_poweroff(struct poweroff_handler *handler)
> +static void rk808_poweroff(struct poweroff_handler *handler,
> +			   unsigned long flags)
>  {
>  	struct rk808 *rk808 = container_of(handler, struct rk808, poweroff);
>  	int ret;
> diff --git a/drivers/power/reset/gpio-poweroff.c b/drivers/power/reset/gpio-poweroff.c
> index cafa1387ce0b..1085c68b506f 100644
> --- a/drivers/power/reset/gpio-poweroff.c
> +++ b/drivers/power/reset/gpio-poweroff.c
> @@ -22,7 +22,8 @@ static u32 timeout = DEFAULT_TIMEOUT_MS;
>  static u32 active_delay = 100;
>  static u32 inactive_delay = 100;
>  
> -static void gpio_poweroff_do_poweroff(struct poweroff_handler *handler)
> +static void gpio_poweroff_do_poweroff(struct poweroff_handler *handler,
> +				      unsigned long flags)
>  {
>  	/* drive it active, also inactive->active edge */
>  	gpiod_direction_output(reset_gpio, true);
> diff --git a/drivers/power/reset/htif-poweroff.c b/drivers/power/reset/htif-poweroff.c
> index e24397f934dc..e193d96d9335 100644
> --- a/drivers/power/reset/htif-poweroff.c
> +++ b/drivers/power/reset/htif-poweroff.c
> @@ -10,7 +10,8 @@
>  
>  static void __iomem *htif = IOMEM(HTIF_DEFAULT_BASE_ADDR);
>  
> -static void __noreturn riscvemu_poweroff(struct poweroff_handler *pwr)
> +static void __noreturn riscvemu_poweroff(struct poweroff_handler *pwr,
> +					 unsigned long flags)
>  {
>  	shutdown_barebox();
>  
> diff --git a/drivers/power/reset/syscon-poweroff.c b/drivers/power/reset/syscon-poweroff.c
> index 321bd1fc7be0..0510b352d2c7 100644
> --- a/drivers/power/reset/syscon-poweroff.c
> +++ b/drivers/power/reset/syscon-poweroff.c
> @@ -17,7 +17,8 @@ static u32 offset;
>  static u32 value;
>  static u32 mask;
>  
> -static void syscon_poweroff(struct poweroff_handler *handler)
> +static void syscon_poweroff(struct poweroff_handler *handler,
> +			    unsigned long flags)
>  {
>  	/* Issue the poweroff */
>  	regmap_update_bits(map, offset, mask, value);
> diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
> index 3e8890b10cec..c9d89001f3a9 100644
> --- a/drivers/regulator/pfuze.c
> +++ b/drivers/regulator/pfuze.c
> @@ -94,7 +94,8 @@ static int pfuze_i2c_reg_write(void *ctx, unsigned int reg, unsigned int val)
>  	return ret == 1 ? 0 : ret;
>  }
>  
> -static void pfuze_power_off_prepare(struct poweroff_handler *handler)
> +static void pfuze_power_off_prepare(struct poweroff_handler *handler,
> +				    unsigned long flags)
>  {
>  	dev_info(pfuze_dev->dev, "Configure standy mode for power off");
>  
> diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
> index 48654780b121..233b82bbe280 100644
> --- a/drivers/watchdog/bcm2835_wdt.c
> +++ b/drivers/watchdog/bcm2835_wdt.c
> @@ -44,7 +44,8 @@ static void __noreturn bcm2835_restart_soc(struct restart_handler *rst,
>  	hang();
>  }
>  
> -static void __noreturn bcm2835_poweroff_soc(struct poweroff_handler *poweroff)
> +static void __noreturn bcm2835_poweroff_soc(struct poweroff_handler *poweroff,
> +					    unsigned long flags)
>  {
>  	struct bcm2835_wd *priv = container_of(poweroff, struct bcm2835_wd, poweroff);
>  	uint32_t val;
> @@ -55,7 +56,7 @@ static void __noreturn bcm2835_poweroff_soc(struct poweroff_handler *poweroff)
>  	val |= PM_PASSWORD | PM_RSTS_RASPBERRYPI_HALT;
>  	writel_relaxed(val, priv->base + PM_RSTS);
>  
> -	bcm2835_restart_soc(&priv->restart);
> +	bcm2835_restart_soc(&priv->restart, flags);
>  }
>  
>  static int bcm2835_wd_set_timeout(struct watchdog *wd, unsigned timeout)
> diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
> index ba58474799fa..f25656e75c12 100644
> --- a/drivers/watchdog/stpmic1_wdt.c
> +++ b/drivers/watchdog/stpmic1_wdt.c
> @@ -109,7 +109,8 @@ static void __noreturn stpmic1_restart_handler(struct restart_handler *rst,
>  	hang();
>  }
>  
> -static void __noreturn stpmic1_poweroff(struct poweroff_handler *handler)
> +static void __noreturn stpmic1_poweroff(struct poweroff_handler *handler,
> +					unsigned long flags)
>  {
>  	struct stpmic1_wdt *wdt = container_of(handler, struct stpmic1_wdt, poweroff);
>  
> diff --git a/efi/payload/init.c b/efi/payload/init.c
> index 12896c065115..ae8b9203737b 100644
> --- a/efi/payload/init.c
> +++ b/efi/payload/init.c
> @@ -233,7 +233,8 @@ static void __noreturn efi_restart_system(struct restart_handler *rst,
>  	hang();
>  }
>  
> -static void __noreturn efi_poweroff_system(struct poweroff_handler *handler)
> +static void __noreturn efi_poweroff_system(struct poweroff_handler *handler,
> +					   unsigned long flags)
>  {
>  	shutdown_barebox();
>  	RT->reset_system(EFI_RESET_SHUTDOWN, EFI_SUCCESS, 0, NULL);
> diff --git a/include/mach/imx/imx6.h b/include/mach/imx/imx6.h
> index a67cc9df9642..f36ac6ce408c 100644
> --- a/include/mach/imx/imx6.h
> +++ b/include/mach/imx/imx6.h
> @@ -10,7 +10,8 @@
>  
>  #include <poweroff.h>
>  
> -void __noreturn imx6_pm_stby_poweroff(struct poweroff_handler *handler);
> +void __noreturn imx6_pm_stby_poweroff(struct poweroff_handler *handler,
> +				      unsigned long flags);
>  
>  #define IMX6_ANATOP_SI_REV 0x260
>  #define IMX6SL_ANATOP_SI_REV 0x280
> diff --git a/include/poweroff.h b/include/poweroff.h
> index 307097c01541..df2d3125a98d 100644
> --- a/include/poweroff.h
> +++ b/include/poweroff.h
> @@ -5,14 +5,16 @@
>  void __noreturn poweroff_machine(unsigned long poweroff_flags);
>  
>  struct poweroff_handler {
> -	void (*poweroff)(struct poweroff_handler *);
> +	void (*poweroff)(struct poweroff_handler *,
> +			 unsigned long flags);
>  	int priority;
>  	const char *name;
>  	struct list_head list;
>  };
>  
>  int poweroff_handler_register(struct poweroff_handler *);
> -int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *));
> +int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *,
> +						     unsigned long flags));
>  
>  #define POWEROFF_DEFAULT_PRIORITY 100
>  #define POWEROFF_DEFAULT_NAME "default"
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


