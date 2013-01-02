Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqM30-0007oO-IS
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 10:59:49 +0000
Date: Wed, 2 Jan 2013 11:59:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130102105945.GU24458@pengutronix.de>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
 <1356722174-22598-10-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356722174-22598-10-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 10/13] at91: SMC: switch to platfrom_driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

subject: s/platfrom_driver/platform_driver

Sascha

On Fri, Dec 28, 2012 at 08:16:11PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to support multiple arch
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9260ek/init.c           |    3 +-
>  arch/arm/boards/at91sam9261ek/init.c           |    5 +-
>  arch/arm/boards/at91sam9263ek/init.c           |    3 +-
>  arch/arm/boards/at91sam9m10g45ek/init.c        |    3 +-
>  arch/arm/boards/at91sam9n12ek/init.c           |    5 +-
>  arch/arm/boards/at91sam9x5ek/init.c            |    3 +-
>  arch/arm/boards/dss11/init.c                   |    3 +-
>  arch/arm/boards/pm9261/init.c                  |    5 +-
>  arch/arm/boards/pm9263/init.c                  |    3 +-
>  arch/arm/boards/pm9g45/init.c                  |    3 +-
>  arch/arm/boards/qil-a9260/init.c               |    3 +-
>  arch/arm/boards/tny-a926x/init.c               |    5 +-
>  arch/arm/boards/usb-a926x/init.c               |    5 +-
>  arch/arm/mach-at91/at91sam9260.c               |    1 +
>  arch/arm/mach-at91/at91sam9261.c               |    1 +
>  arch/arm/mach-at91/at91sam9263.c               |    2 +
>  arch/arm/mach-at91/at91sam926x_lowlevel_init.c |    8 +-
>  arch/arm/mach-at91/at91sam9g45.c               |    1 +
>  arch/arm/mach-at91/at91sam9n12.c               |    1 +
>  arch/arm/mach-at91/at91sam9x5.c                |    1 +
>  arch/arm/mach-at91/generic.h                   |    7 ++
>  arch/arm/mach-at91/include/mach/at91sam9260.h  |    3 +-
>  arch/arm/mach-at91/include/mach/at91sam9261.h  |    2 +-
>  arch/arm/mach-at91/include/mach/at91sam9263.h  |    3 +-
>  arch/arm/mach-at91/include/mach/at91sam9_smc.h |   50 ++++++--
>  arch/arm/mach-at91/include/mach/at91sam9g45.h  |    2 +-
>  arch/arm/mach-at91/include/mach/at91sam9n12.h  |    2 +-
>  arch/arm/mach-at91/include/mach/at91sam9x5.h   |    2 +-
>  arch/arm/mach-at91/include/mach/sam9_smc.h     |   33 ------
>  arch/arm/mach-at91/sam9_smc.c                  |  146 ++++++++++++++++++++----
>  30 files changed, 206 insertions(+), 108 deletions(-)
>  delete mode 100644 arch/arm/mach-at91/include/mach/sam9_smc.h
> 
> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> index d07eda9..7bd0279 100644
> --- a/arch/arm/boards/at91sam9260ek/init.c
> +++ b/arch/arm/boards/at91sam9260ek/init.c
> @@ -31,7 +31,6 @@
>  #include <linux/mtd/nand.h>
>  #include <mach/board.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91_pmc.h>
> @@ -122,7 +121,7 @@ static void ek_add_device_nand(void)
>  		smc->mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, smc);
> +	sam9_smc_configure(0, 3, smc);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
> index 0020c92..7c95435 100644
> --- a/arch/arm/boards/at91sam9261ek/init.c
> +++ b/arch/arm/boards/at91sam9261ek/init.c
> @@ -33,7 +33,6 @@
>  #include <mach/gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <dm9000.h>
>  #include <gpio_keys.h>
>  #include <readkey.h>
> @@ -80,7 +79,7 @@ static void ek_add_device_nand(void)
>  		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &ek_nand_smc_config);
> +	sam9_smc_configure(0, 3, &ek_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> @@ -118,7 +117,7 @@ static struct sam9_smc_config __initdata dm9000_smc_config = {
>  static void __init ek_add_device_dm9000(void)
>  {
>  	/* Configure chip-select 2 (DM9000) */
> -	sam9_smc_configure(2, &dm9000_smc_config);
> +	sam9_smc_configure(0, 2, &dm9000_smc_config);
>  
>  	/* Configure Reset signal as output */
>  	at91_set_gpio_output(AT91_PIN_PC10, 0);
> diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
> index 7334bae..a86c0fd 100644
> --- a/arch/arm/boards/at91sam9263ek/init.c
> +++ b/arch/arm/boards/at91sam9263ek/init.c
> @@ -35,7 +35,6 @@
>  #include <mach/gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  
>  static struct atmel_nand_data nand_pdata = {
>  	.ale		= 21,
> @@ -78,7 +77,7 @@ static void ek_add_device_nand(void)
>  		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &ek_nand_smc_config);
> +	sam9_smc_configure(0, 3, &ek_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
> index 7d01d96..d77b2bf 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/init.c
> +++ b/arch/arm/boards/at91sam9m10g45ek/init.c
> @@ -36,7 +36,6 @@
>  #include <mach/gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <gpio_keys.h>
>  #include <readkey.h>
>  
> @@ -101,7 +100,7 @@ static void ek_add_device_nand(void)
>  		ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &ek_nand_smc_config);
> +	sam9_smc_configure(0, 3, &ek_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
> index 51c4fb0..310f418 100644
> --- a/arch/arm/boards/at91sam9n12ek/init.c
> +++ b/arch/arm/boards/at91sam9n12ek/init.c
> @@ -31,7 +31,6 @@
>  #include <linux/mtd/nand.h>
>  #include <mach/board.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91_pmc.h>
> @@ -77,7 +76,7 @@ static void ek_add_device_nand(void)
>  	ek_nand_smc_config.mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &ek_nand_smc_config);
> +	sam9_smc_configure(0, 3, &ek_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> @@ -112,7 +111,7 @@ static struct sam9_smc_config __initdata ks8851_smc_config = {
>  static void __init ek_add_device_ks8851(void)
>  {
>  	/* Configure chip-select 2 (KS8851) */
> -	sam9_smc_configure(2, &ks8851_smc_config);
> +	sam9_smc_configure(0, 2, &ks8851_smc_config);
>  	/* Configure NCS signal */
>  	at91_set_B_periph(AT91_PIN_PD19, 0);
>  	/* Configure Interrupt pin as input, no pull-up */
> diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
> index 3f22d02..f230205 100644
> --- a/arch/arm/boards/at91sam9x5ek/init.c
> +++ b/arch/arm/boards/at91sam9x5ek/init.c
> @@ -31,7 +31,6 @@
>  #include <linux/mtd/nand.h>
>  #include <mach/board.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91_pmc.h>
> @@ -93,7 +92,7 @@ static void ek_add_device_nand(void)
>  		cm_nand_smc_config.mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &cm_nand_smc_config);
> +	sam9_smc_configure(0, 3, &cm_nand_smc_config);
>  
>  	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT)) {
>  		unsigned long csa;
> diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
> index 12d4263..a2e9825 100644
> --- a/arch/arm/boards/dss11/init.c
> +++ b/arch/arm/boards/dss11/init.c
> @@ -29,7 +29,6 @@
>  #include <linux/mtd/nand.h>
>  #include <mach/board.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91_rstc.h>
> @@ -69,7 +68,7 @@ static void dss11_add_device_nand(void)
>  	dss11_nand_smc_config.mode |= AT91_SMC_DBW_16;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &dss11_nand_smc_config);
> +	sam9_smc_configure(0, 3, &dss11_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
> index a91fa7a..207092c 100644
> --- a/arch/arm/boards/pm9261/init.c
> +++ b/arch/arm/boards/pm9261/init.c
> @@ -34,7 +34,6 @@
>  #include <mach/gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <dm9000.h>
>  #include <linux/w1-gpio.h>
>  #include <w1_mac_address.h>
> @@ -84,7 +83,7 @@ static void pm_add_device_nand(void)
>  		pm_nand_smc_config.mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &pm_nand_smc_config);
> +	sam9_smc_configure(0, 3, &pm_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> @@ -123,7 +122,7 @@ static void __init pm_add_device_dm9000(void)
>  {
>  	w1_local_mac_address_register(0, "ron", "w1-1-0");
>  	/* Configure chip-select 2 (DM9000) */
> -	sam9_smc_configure(2, &dm9000_smc_config);
> +	sam9_smc_configure(0, 2, &dm9000_smc_config);
>  
>  	add_dm9000_device(0, AT91_CHIPSELECT_2, AT91_CHIPSELECT_2 + 4,
>  			  IORESOURCE_MEM_16BIT, &dm9000_data);
> diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
> index f719c65..f7ef148 100644
> --- a/arch/arm/boards/pm9263/init.c
> +++ b/arch/arm/boards/pm9263/init.c
> @@ -35,7 +35,6 @@
>  #include <mach/gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <linux/w1-gpio.h>
>  #include <w1_mac_address.h>
>  
> @@ -84,7 +83,7 @@ static void pm_add_device_nand(void)
>  		pm_nand_smc_config.mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &pm_nand_smc_config);
> +	sam9_smc_configure(0, 3, &pm_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
> index fabe97b..8e29f62 100644
> --- a/arch/arm/boards/pm9g45/init.c
> +++ b/arch/arm/boards/pm9g45/init.c
> @@ -34,7 +34,6 @@
>  #include <mach/gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <linux/w1-gpio.h>
>  #include <w1_mac_address.h>
>  
> @@ -76,7 +75,7 @@ static void pm_add_device_nand(void)
>  	pm_nand_smc_config.mode |= AT91_SMC_DBW_8;
>  
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &pm_nand_smc_config);
> +	sam9_smc_configure(0, 3, &pm_nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
> index a06566c..4977d3b 100644
> --- a/arch/arm/boards/qil-a9260/init.c
> +++ b/arch/arm/boards/qil-a9260/init.c
> @@ -22,7 +22,6 @@
>  #include <linux/clk.h>
>  #include <mach/board.h>
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  #include <gpio.h>
>  #include <led.h>
>  #include <mach/io.h>
> @@ -59,7 +58,7 @@ static struct sam9_smc_config nand_smc_config = {
>  static void qil_a9260_add_device_nand(void)
>  {
>  	/* configure chip-select 3 (NAND) */
> -	sam9_smc_configure(3, &nand_smc_config);
> +	sam9_smc_configure(0, 3, &nand_smc_config);
>  
>  	at91_add_device_nand(&nand_pdata);
>  }
> diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
> index e30cccf..5fe6531 100644
> --- a/arch/arm/boards/tny-a926x/init.c
> +++ b/arch/arm/boards/tny-a926x/init.c
> @@ -32,7 +32,6 @@
>  #include <mach/board.h>
>  #include <mach/at91sam9_smc.h>
>  #include <mach/at91sam9_sdramc.h>
> -#include <mach/sam9_smc.h>
>  #include <gpio.h>
>  #include <mach/io.h>
>  #include <mach/at91_pmc.h>
> @@ -100,9 +99,9 @@ static void tny_a9260_add_device_nand(void)
>  {
>  	/* configure chip-select 3 (NAND) */
>  	if (machine_is_tny_a9g20())
> -		sam9_smc_configure(3, &tny_a9g20_nand_smc_config);
> +		sam9_smc_configure(0, 3, &tny_a9g20_nand_smc_config);
>  	else
> -		sam9_smc_configure(3, &tny_a9260_nand_smc_config);
> +		sam9_smc_configure(0, 3, &tny_a9260_nand_smc_config);
>  
>  	if (machine_is_tny_a9263()) {
>  		nand_pdata.rdy_pin	= AT91_PIN_PA22;
> diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
> index dd136da..95ac6a8 100644
> --- a/arch/arm/boards/usb-a926x/init.c
> +++ b/arch/arm/boards/usb-a926x/init.c
> @@ -32,7 +32,6 @@
>  #include <mach/board.h>
>  #include <mach/at91sam9_smc.h>
>  #include <mach/at91sam9_sdramc.h>
> -#include <mach/sam9_smc.h>
>  #include <gpio.h>
>  #include <led.h>
>  #include <mach/io.h>
> @@ -101,9 +100,9 @@ static void usb_a9260_add_device_nand(void)
>  {
>  	/* configure chip-select 3 (NAND) */
>  	if (machine_is_usb_a9g20())
> -		sam9_smc_configure(3, &usb_a9g20_nand_smc_config);
> +		sam9_smc_configure(0, 3, &usb_a9g20_nand_smc_config);
>  	else
> -		sam9_smc_configure(3, &usb_a9260_nand_smc_config);
> +		sam9_smc_configure(0, 3, &usb_a9260_nand_smc_config);
>  
>  	if (machine_is_usb_a9263()) {
>  		nand_pdata.rdy_pin	= AT91_PIN_PA22;
> diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
> index 4c76d94..2a06f0d 100644
> --- a/arch/arm/mach-at91/at91sam9260.c
> +++ b/arch/arm/mach-at91/at91sam9260.c
> @@ -236,6 +236,7 @@ static void at91sam9260_initialize(void)
>  	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
>  
>  	at91_add_pit(AT91SAM9260_BASE_PIT);
> +	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9260_BASE_SMC, 0x200);
>  }
>  
>  AT91_SOC_START(sam9260)
> diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
> index 1efbbee..c801d9d 100644
> --- a/arch/arm/mach-at91/at91sam9261.c
> +++ b/arch/arm/mach-at91/at91sam9261.c
> @@ -228,6 +228,7 @@ static void at91sam9261_initialize(void)
>  	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
>  
>  	at91_add_pit(AT91SAM9261_BASE_PIT);
> +	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9261_BASE_SMC, 0x200);
>  }
>  
>  AT91_SOC_START(sam9261)
> diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
> index e1fbe6f..42777d0 100644
> --- a/arch/arm/mach-at91/at91sam9263.c
> +++ b/arch/arm/mach-at91/at91sam9263.c
> @@ -247,6 +247,8 @@ static void at91sam9263_initialize(void)
>  	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
>  
>  	at91_add_pit(AT91SAM9263_BASE_PIT);
> +	at91_add_sam9_smc(0, AT91SAM9263_BASE_SMC0, 0x200);
> +	at91_add_sam9_smc(1, AT91SAM9263_BASE_SMC1, 0x200);
>  }
>  
>  AT91_SOC_START(sam9263)
> diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> index 5edbd8b..6e4101d 100644
> --- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> +++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
> @@ -62,13 +62,13 @@ void __naked __bare_init reset(void)
>  #endif
>  
>  	/* flash */
> -	at91_sys_write(AT91_SMC_MODE(CONFIG_SYS_SMC_CS), CONFIG_SYS_SMC_MODE_VAL);
> +	at91_smc_write(CONFIG_SYS_SMC_CS, AT91_SMC_MODE, CONFIG_SYS_SMC_MODE_VAL);
>  
> -	at91_sys_write(AT91_SMC_CYCLE(CONFIG_SYS_SMC_CS), CONFIG_SYS_SMC_CYCLE_VAL);
> +	at91_smc_write(CONFIG_SYS_SMC_CS, AT91_SMC_CYCLE, CONFIG_SYS_SMC_CYCLE_VAL);
>  
> -	at91_sys_write(AT91_SMC_PULSE(CONFIG_SYS_SMC_CS), CONFIG_SYS_SMC_PULSE_VAL);
> +	at91_smc_write(CONFIG_SYS_SMC_CS, AT91_SMC_PULSE, CONFIG_SYS_SMC_PULSE_VAL);
>  
> -	at91_sys_write(AT91_SMC_SETUP(CONFIG_SYS_SMC_CS), CONFIG_SYS_SMC_SETUP_VAL);
> +	at91_smc_write(CONFIG_SYS_SMC_CS, AT91_SMC_SETUP, CONFIG_SYS_SMC_SETUP_VAL);
>  
>  	/*
>  	 * PMC Check if the PLL is already initialized
> diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
> index 94fee59..7ca1f3b 100644
> --- a/arch/arm/mach-at91/at91sam9g45.c
> +++ b/arch/arm/mach-at91/at91sam9g45.c
> @@ -259,6 +259,7 @@ static void at91sam9g45_initialize(void)
>  	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
>  
>  	at91_add_pit(AT91SAM9G45_BASE_PIT);
> +	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9G45_BASE_SMC, 0x200);
>  }
>  
>  AT91_SOC_START(sam9g45)
> diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
> index d1b7ce1..967885a 100644
> --- a/arch/arm/mach-at91/at91sam9n12.c
> +++ b/arch/arm/mach-at91/at91sam9n12.c
> @@ -219,6 +219,7 @@ static void at91sam9n12_initialize(void)
>  	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
>  
>  	at91_add_pit(AT91SAM9N12_BASE_PIT);
> +	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9N12_BASE_SMC, 0x200);
>  }
>  
>  AT91_SOC_START(sam9n12)
> diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
> index 7b58e12..090d9dd 100644
> --- a/arch/arm/mach-at91/at91sam9x5.c
> +++ b/arch/arm/mach-at91/at91sam9x5.c
> @@ -304,6 +304,7 @@ static void at91sam9x5_initialize(void)
>  	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
>  
>  	at91_add_pit(AT91SAM9X5_BASE_PIT);
> +	at91_add_sam9_smc(DEVICE_ID_SINGLE, AT91SAM9X5_BASE_SMC, 0x200);
>  }
>  
>  AT91_SOC_START(sam9x5)
> diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
> index 490cf3c..a19c1c5 100644
> --- a/arch/arm/mach-at91/generic.h
> +++ b/arch/arm/mach-at91/generic.h
> @@ -28,3 +28,10 @@ static inline struct device_d *at91_add_pit(resource_size_t start)
>  	return add_generic_device("at91-pit", DEVICE_ID_SINGLE, NULL, start, 16,
>  				  IORESOURCE_MEM, NULL);
>  }
> +
> +static inline struct device_d *at91_add_sam9_smc(int id, resource_size_t start,
> +						 resource_size_t size)
> +{
> +	return add_generic_device("at91sam9-smc", id, NULL, start, size,
> +				  IORESOURCE_MEM, NULL);
> +}
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
> index 5d1b376..0804dc3 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9260.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
> @@ -100,13 +100,14 @@
>   */
>  #define AT91_ECC	(0xffffe800 - AT91_BASE_SYS)
>  #define AT91_SDRAMC	(0xffffea00 - AT91_BASE_SYS)
> -#define AT91_SMC	(0xffffec00 - AT91_BASE_SYS)
>  #define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
>  
> +#define AT91_BASE_SMC	AT91SAM9260_BASE_SMC
> +#define AT91_BASE_PIOA	AT91SAM9260_BASE_PIOA
>  #define AT91_BASE_PIOA	AT91SAM9260_BASE_PIOA
>  #define AT91_BASE_PIOB	AT91SAM9260_BASE_PIOB
>  #define AT91_BASE_PIOC	AT91SAM9260_BASE_PIOC
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
> index 1469f7e..0565e1b 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9261.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
> @@ -86,13 +86,13 @@
>   * System Peripherals (offset from AT91_BASE_SYS)
>   */
>  #define AT91_SDRAMC	(0xffffea00 - AT91_BASE_SYS)
> -#define AT91_SMC	(0xffffec00 - AT91_BASE_SYS)
>  #define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
>  
> +#define AT91_BASE_SMC	AT91SAM9261_BASE_SMC
>  #define AT91_BASE_PIOA	AT91SAM9261_BASE_PIOA
>  #define AT91_BASE_PIOB	AT91SAM9261_BASE_PIOB
>  #define AT91_BASE_PIOC	AT91SAM9261_BASE_PIOC
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
> index a8c067a..9eff27a 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9263.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
> @@ -104,13 +104,13 @@
>   */
>  #define AT91_ECC0	(0xffffe000 - AT91_BASE_SYS)
>  #define AT91_SDRAMC0	(0xffffe200 - AT91_BASE_SYS)
> -#define AT91_SMC0	(0xffffe400 - AT91_BASE_SYS)
>  #define AT91_MATRIX	(0xffffec00 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
>  
> +#define AT91_BASE_SMC	AT91SAM9263_BASE_SMC0
>  #define AT91_BASE_PIOA	AT91SAM9263_BASE_PIOA
>  #define AT91_BASE_PIOB	AT91SAM9263_BASE_PIOB
>  #define AT91_BASE_PIOC	AT91SAM9263_BASE_PIOC
> @@ -122,7 +122,6 @@
>  #define AT91_USART2	AT91SAM9263_BASE_US2
>  #define AT91_NB_USART	4
>  
> -#define AT91_SMC	AT91_SMC0
>  #define AT91_SDRAMC	AT91_SDRAMC0
>  
>  #define AT91_BASE_SPI	AT91SAM9263_BASE_SPI0
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9_smc.h b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> index d64511b..d5cf5f7 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9_smc.h
> @@ -16,7 +16,42 @@
>  #ifndef AT91SAM9_SMC_H
>  #define AT91SAM9_SMC_H
>  
> -#define AT91_SMC_SETUP(n)	(AT91_SMC + 0x00 + ((n)*0x10))	/* Setup Register for CS n */
> +#define at91_smc_read(id, field) \
> +	__raw_readl(AT91_BASE_SMC + ((id) * 0x10) + field)
> +
> +#define at91_smc_write(id, field, value) \
> +	__raw_writel(value, AT91_BASE_SMC + ((id) * 0x10) + field)
> +
> +#ifndef __ASSEMBLY__
> +struct sam9_smc_config {
> +	/* Setup register */
> +	u8 ncs_read_setup;
> +	u8 nrd_setup;
> +	u8 ncs_write_setup;
> +	u8 nwe_setup;
> +
> +	/* Pulse register */
> +	u8 ncs_read_pulse;
> +	u8 nrd_pulse;
> +	u8 ncs_write_pulse;
> +	u8 nwe_pulse;
> +
> +	/* Cycle register */
> +	u16 read_cycle;
> +	u16 write_cycle;
> +
> +	/* Mode register */
> +	u32 mode;
> +	u8 tdf_cycles:4;
> +};
> +
> +extern void sam9_smc_configure(int id, int cs, struct sam9_smc_config *config);
> +extern void sam9_smc_read(int id, int cs, struct sam9_smc_config *config);
> +extern void sam9_smc_read_mode(int id, int cs, struct sam9_smc_config *config);
> +extern void sam9_smc_write_mode(int id, int cs, struct sam9_smc_config *config);
> +#endif
> +
> +#define AT91_SMC_SETUP		0x00				/* Setup Register for CS n */
>  #define		AT91_SMC_NWESETUP	(0x3f << 0)			/* NWE Setup Length */
>  #define			AT91_SMC_NWESETUP_(x)	((x) << 0)
>  #define		AT91_SMC_NCS_WRSETUP	(0x3f << 8)			/* NCS Setup Length in Write Access */
> @@ -26,7 +61,7 @@
>  #define		AT91_SMC_NCS_RDSETUP	(0x3f << 24)			/* NCS Setup Length in Read Access */
>  #define			AT91_SMC_NCS_RDSETUP_(x)	((x) << 24)
>  
> -#define AT91_SMC_PULSE(n)	(AT91_SMC + 0x04 + ((n)*0x10))	/* Pulse Register for CS n */
> +#define AT91_SMC_PULSE		0x04				/* Pulse Register for CS n */
>  #define		AT91_SMC_NWEPULSE	(0x7f <<  0)			/* NWE Pulse Length */
>  #define			AT91_SMC_NWEPULSE_(x)	((x) << 0)
>  #define		AT91_SMC_NCS_WRPULSE	(0x7f <<  8)			/* NCS Pulse Length in Write Access */
> @@ -36,13 +71,13 @@
>  #define		AT91_SMC_NCS_RDPULSE	(0x7f << 24)			/* NCS Pulse Length in Read Access */
>  #define			AT91_SMC_NCS_RDPULSE_(x)((x) << 24)
>  
> -#define AT91_SMC_CYCLE(n)	(AT91_SMC + 0x08 + ((n)*0x10))	/* Cycle Register for CS n */
> +#define AT91_SMC_CYCLE		0x08				/* Cycle Register for CS n */
>  #define		AT91_SMC_NWECYCLE	(0x1ff << 0 )			/* Total Write Cycle Length */
>  #define			AT91_SMC_NWECYCLE_(x)	((x) << 0)
>  #define		AT91_SMC_NRDCYCLE	(0x1ff << 16)			/* Total Read Cycle Length */
>  #define			AT91_SMC_NRDCYCLE_(x)	((x) << 16)
>  
> -#define AT91_SMC_MODE(n)	(AT91_SMC + 0x0c + ((n)*0x10))	/* Mode Register for CS n */
> +#define AT91_SMC_MODE		0x0c				/* Mode Register for CS n */
>  #define		AT91_SMC_READMODE	(1 <<  0)			/* Read Mode */
>  #define		AT91_SMC_WRITEMODE	(1 <<  1)			/* Write Mode */
>  #define		AT91_SMC_EXNWMODE	(3 <<  4)			/* NWAIT Mode */
> @@ -66,11 +101,4 @@
>  #define			AT91_SMC_PS_16			(2 << 28)
>  #define			AT91_SMC_PS_32			(3 << 28)
>  
> -#if defined(AT91_SMC1)		/* The AT91SAM9263 has 2 Static Memory contollers */
> -#define AT91_SMC1_SETUP(n)	(AT91_SMC1 + 0x00 + ((n)*0x10))	/* Setup Register for CS n */
> -#define AT91_SMC1_PULSE(n)	(AT91_SMC1 + 0x04 + ((n)*0x10))	/* Pulse Register for CS n */
> -#define AT91_SMC1_CYCLE(n)	(AT91_SMC1 + 0x08 + ((n)*0x10))	/* Cycle Register for CS n */
> -#define AT91_SMC1_MODE(n)	(AT91_SMC1 + 0x0c + ((n)*0x10))	/* Mode Register for CS n */
> -#endif
> -
>  #endif
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
> index 85ed129..9c5234a 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
> @@ -115,13 +115,13 @@
>  #define AT91_ECC	(0xffffe200 - AT91_BASE_SYS)
>  #define AT91_DDRSDRC1	(0xffffe400 - AT91_BASE_SYS)
>  #define AT91_DDRSDRC0	(0xffffe600 - AT91_BASE_SYS)
> -#define AT91_SMC	(0xffffe800 - AT91_BASE_SYS)
>  #define AT91_MATRIX	(0xffffea00 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
>  
> +#define AT91_BASE_SMC	AT91SAM9G45_BASE_SMC
>  #define AT91_BASE_PIOA	AT91SAM9G45_BASE_PIOA
>  #define AT91_BASE_PIOB	AT91SAM9G45_BASE_PIOB
>  #define AT91_BASE_PIOC	AT91SAM9G45_BASE_PIOC
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
> index 59d7030..b55e5f0 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
> @@ -112,12 +112,12 @@
>  #define AT91_PMECC	(0xffffe000 - AT91_BASE_SYS)
>  #define AT91_PMERRLOC	(0xffffe600 - AT91_BASE_SYS)
>  #define AT91_DDRSDRC0	(0xffffe800 - AT91_BASE_SYS)
> -#define AT91_SMC	(0xffffea00 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
>  
> +#define AT91_BASE_SMC	AT91SAM9N12_BASE_SMC
>  #define AT91_BASE_PIOA	AT91SAM9N12_BASE_PIOA
>  #define AT91_BASE_PIOB	AT91SAM9N12_BASE_PIOB
>  #define AT91_BASE_PIOC	AT91SAM9N12_BASE_PIOC
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
> index 63a5138..8a48eed 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
> @@ -119,12 +119,12 @@
>  #define AT91_PMECC	(0xffffe000 - AT91_BASE_SYS)
>  #define AT91_PMERRLOC	(0xffffe600 - AT91_BASE_SYS)
>  #define AT91_DDRSDRC0	(0xffffe800 - AT91_BASE_SYS)
> -#define AT91_SMC	(0xffffea00 - AT91_BASE_SYS)
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
>  
> +#define AT91_BASE_SMC	AT91SAM9X5_BASE_SMC
>  #define AT91_BASE_PIOA	AT91SAM9X5_BASE_PIOA
>  #define AT91_BASE_PIOB	AT91SAM9X5_BASE_PIOB
>  #define AT91_BASE_PIOC	AT91SAM9X5_BASE_PIOC
> diff --git a/arch/arm/mach-at91/include/mach/sam9_smc.h b/arch/arm/mach-at91/include/mach/sam9_smc.h
> deleted file mode 100644
> index bf72cfb..0000000
> --- a/arch/arm/mach-at91/include/mach/sam9_smc.h
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -/*
> - * linux/arch/arm/mach-at91/sam9_smc.
> - *
> - * Copyright (C) 2008 Andrew Victor
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License version 2 as
> - * published by the Free Software Foundation.
> - */
> -
> -struct sam9_smc_config {
> -	/* Setup register */
> -	u8 ncs_read_setup;
> -	u8 nrd_setup;
> -	u8 ncs_write_setup;
> -	u8 nwe_setup;
> -
> -	/* Pulse register */
> -	u8 ncs_read_pulse;
> -	u8 nrd_pulse;
> -	u8 ncs_write_pulse;
> -	u8 nwe_pulse;
> -
> -	/* Cycle register */
> -	u16 read_cycle;
> -	u16 write_cycle;
> -
> -	/* Mode register */
> -	u32 mode;
> -	u8 tdf_cycles:4;
> -};
> -
> -extern void __init sam9_smc_configure(int cs, struct sam9_smc_config* config);
> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> index c397fe4..b48275e 100644
> --- a/arch/arm/mach-at91/sam9_smc.c
> +++ b/arch/arm/mach-at91/sam9_smc.c
> @@ -9,40 +9,142 @@
>   */
>  
>  #include <common.h>
> +#include <init.h>
>  #include <io.h>
>  #include <mach/hardware.h>
>  #include <mach/io.h>
>  
>  #include <mach/at91sam9_smc.h>
> -#include <mach/sam9_smc.h>
>  
> -void sam9_smc_configure(int cs, struct sam9_smc_config* config)
> +#define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x10))
> +
> +static void __iomem *smc_base_addr[2];
> +
> +static void sam9_smc_cs_write_mode(void __iomem *base,
> +					struct sam9_smc_config *config)
> +{
> +	__raw_writel(config->mode
> +		   | AT91_SMC_TDF_(config->tdf_cycles),
> +		   base + AT91_SMC_MODE);
> +}
> +
> +void sam9_smc_write_mode(int id, int cs,
> +					struct sam9_smc_config *config)
> +{
> +	sam9_smc_cs_write_mode(AT91_SMC_CS(id, cs), config);
> +}
> +
> +static void sam9_smc_cs_configure(void __iomem *base,
> +					struct sam9_smc_config *config)
> +{
> +
> +	/* Setup register */
> +	__raw_writel(AT91_SMC_NWESETUP_(config->nwe_setup)
> +		   | AT91_SMC_NCS_WRSETUP_(config->ncs_write_setup)
> +		   | AT91_SMC_NRDSETUP_(config->nrd_setup)
> +		   | AT91_SMC_NCS_RDSETUP_(config->ncs_read_setup),
> +		   base + AT91_SMC_SETUP);
> +
> +	/* Pulse register */
> +	__raw_writel(AT91_SMC_NWEPULSE_(config->nwe_pulse)
> +		   | AT91_SMC_NCS_WRPULSE_(config->ncs_write_pulse)
> +		   | AT91_SMC_NRDPULSE_(config->nrd_pulse)
> +		   | AT91_SMC_NCS_RDPULSE_(config->ncs_read_pulse),
> +		   base + AT91_SMC_PULSE);
> +
> +	/* Cycle register */
> +	__raw_writel(AT91_SMC_NWECYCLE_(config->write_cycle)
> +		   | AT91_SMC_NRDCYCLE_(config->read_cycle),
> +		   base + AT91_SMC_CYCLE);
> +
> +	/* Mode register */
> +	sam9_smc_cs_write_mode(base, config);
> +}
> +
> +void sam9_smc_configure(int id, int cs,
> +					struct sam9_smc_config *config)
> +{
> +	sam9_smc_cs_configure(AT91_SMC_CS(id, cs), config);
> +}
> +
> +static void sam9_smc_cs_read_mode(void __iomem *base,
> +					struct sam9_smc_config *config)
> +{
> +	u32 val = __raw_readl(base + AT91_SMC_MODE);
> +
> +	config->mode = (val & ~AT91_SMC_NWECYCLE);
> +	config->tdf_cycles = (val & AT91_SMC_NWECYCLE) >> 16 ;
> +}
> +
> +void sam9_smc_read_mode(int id, int cs,
> +					struct sam9_smc_config *config)
> +{
> +	sam9_smc_cs_read_mode(AT91_SMC_CS(id, cs), config);
> +}
> +
> +static void sam9_smc_cs_read(void __iomem *base,
> +					struct sam9_smc_config *config)
>  {
> +	u32 val;
> +
>  	/* Setup register */
> -	at91_sys_write(AT91_SMC_SETUP(cs),
> -		  AT91_SMC_NWESETUP_(config->nwe_setup)
> -		| AT91_SMC_NCS_WRSETUP_(config->ncs_write_setup)
> -		| AT91_SMC_NRDSETUP_(config->nrd_setup)
> -		| AT91_SMC_NCS_RDSETUP_(config->ncs_read_setup)
> -	);
> +	val = __raw_readl(base + AT91_SMC_SETUP);
> +
> +	config->nwe_setup = val & AT91_SMC_NWESETUP;
> +	config->ncs_write_setup = (val & AT91_SMC_NCS_WRSETUP) >> 8;
> +	config->nrd_setup = (val & AT91_SMC_NRDSETUP) >> 16;
> +	config->ncs_read_setup = (val & AT91_SMC_NCS_RDSETUP) >> 24;
>  
>  	/* Pulse register */
> -	at91_sys_write(AT91_SMC_PULSE(cs),
> -		  AT91_SMC_NWEPULSE_(config->nwe_pulse)
> -		| AT91_SMC_NCS_WRPULSE_(config->ncs_write_pulse)
> -		| AT91_SMC_NRDPULSE_(config->nrd_pulse)
> -		| AT91_SMC_NCS_RDPULSE_(config->ncs_read_pulse)
> -	);
> +	val = __raw_readl(base + AT91_SMC_PULSE);
> +
> +	config->nwe_setup = val & AT91_SMC_NWEPULSE;
> +	config->ncs_write_pulse = (val & AT91_SMC_NCS_WRPULSE) >> 8;
> +	config->nrd_pulse = (val & AT91_SMC_NRDPULSE) >> 16;
> +	config->ncs_read_pulse = (val & AT91_SMC_NCS_RDPULSE) >> 24;
>  
>  	/* Cycle register */
> -	at91_sys_write(AT91_SMC_CYCLE(cs),
> -		  AT91_SMC_NWECYCLE_(config->write_cycle)
> -		| AT91_SMC_NRDCYCLE_(config->read_cycle)
> -	);
> +	val = __raw_readl(base + AT91_SMC_CYCLE);
> +
> +	config->write_cycle = val & AT91_SMC_NWECYCLE;
> +	config->read_cycle = (val & AT91_SMC_NRDCYCLE) >> 16;
>  
>  	/* Mode register */
> -	at91_sys_write(AT91_SMC_MODE(cs),
> -		  config->mode
> -		| AT91_SMC_TDF_(config->tdf_cycles)
> -	);
> +	sam9_smc_cs_read_mode(base, config);
> +}
> +
> +void sam9_smc_read(int id, int cs, struct sam9_smc_config *config)
> +{
> +	sam9_smc_cs_read(AT91_SMC_CS(id, cs), config);
> +}
> +
> +static int at91sam9_smc_probe(struct device_d *dev)
> +{
> +	int id;
> +
> +	if (dev->id < 0) {
> +		id = 0;
> +	} else if (dev->id > 1) {
> +		dev_warn(dev, ": id > 2\n");
> +		return -EIO;
> +	}
> +
> +	smc_base_addr[id] = dev_request_mem_region(dev, 0);
> +	if (!smc_base_addr[id]) {
> +		dev_err(dev, "Impossible to request smc.%d\n", id);
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct driver_d at91sam9_smc_driver = {
> +	.name = "at91sam9-smc",
> +	.probe = at91sam9_smc_probe,
> +};
> +
> +static int at91sam9_smc_init(void)
> +{
> +	return platform_driver_register(&at91sam9_smc_driver);
>  }
> +coredevice_initcall(at91sam9_smc_init);
> -- 
> 1.7.10.4
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
