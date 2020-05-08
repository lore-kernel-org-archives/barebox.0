Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3Pu-0000TC-Pe
 for barebox@lists.infradead.org; Fri, 08 May 2020 13:51:56 +0000
References: <20200508062530.23241-1-a.fatoum@pengutronix.de>
 <20200508062530.23241-4-a.fatoum@pengutronix.de>
 <20200508123431.GM5877@pengutronix.de> <20200508125059.GN5877@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b84fcda2-c5f0-d3c9-4595-93c807427b9d@pengutronix.de>
Date: Fri, 8 May 2020 15:51:51 +0200
MIME-Version: 1.0
In-Reply-To: <20200508125059.GN5877@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 4/5] drivers: add COMPILE_TEST prompts to some
 on-by-default drivers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 5/8/20 2:50 PM, Sascha Hauer wrote:
> On Fri, May 08, 2020 at 02:34:31PM +0200, Sascha Hauer wrote:
>> On Fri, May 08, 2020 at 08:25:29AM +0200, Ahmad Fatoum wrote:
>>> Many clock source and GPIO controller drivers don't have a prompt, but
>>> are instead default y if their respective platform is enabled. Maintain
>>> this behavior, but add a prompt for when COMPILE_TEST is enabled, so
>>> they can be included in test builds.
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  drivers/clocksource/Kconfig | 16 +++++++++-------
>>>  drivers/gpio/Kconfig        | 12 ++++++++----
>>>  drivers/pinctrl/Kconfig     |  8 ++++----
>>>  3 files changed, 21 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
>>> index 8805cda39e02..bc2aae7ad723 100644
>>> --- a/drivers/clocksource/Kconfig
>>> +++ b/drivers/clocksource/Kconfig
>>> @@ -75,16 +75,18 @@ config CLOCKSOURCE_ATMEL_PIT
>>>         bool
>>>  
>>>  config CLOCKSOURCE_ARM_ARCHITECTED_TIMER
>>> -	bool
>>> -	default y
>>> -	depends on ARM && (CPU_64v8 || CPU_V7)
>>> +	bool "ARM architected timer clock source" if COMPILE_TEST
>>> +	default y if ARM && (CPU_64v8 || CPU_V7)
>>> +	depends on (ARM && (CPU_64v8 || CPU_V7)) || COMPILE_TEST
>>
>> This driver compiles only on ARM. It uses get_cntpct() which is a
>> contains inline assembly.
> 
> Skipped this hunk while applying and added the following patch to
> actually make the Atmel MCI driver compilable when COMPILE_TEST is
> selected.

Great. Thanks!

> 
> Sascha
> 
> ------------------------------8<-------------------------
> From f4abcd9f1f7ddb5a032d8c07a6adcb95b31cb7c0 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Fri, 8 May 2020 14:45:00 +0200
> Subject: [PATCH] ARM: at91: Move mci platform data to include/
> 
> To be able to add the Atmel mci driver to COMPILE_TEST move the
> definition of struct atmel_mci_platform_data to include/ where it
> can be reached from foreign SoCs as well.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-at91/include/mach/board.h | 11 +----------
>  drivers/mci/atmel_mci.c                 |  2 +-
>  include/platform_data/atmel-mci.h       | 15 +++++++++++++++
>  3 files changed, 17 insertions(+), 11 deletions(-)
>  create mode 100644 include/platform_data/atmel-mci.h
> 
> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> index 4c4b51180c..033341e270 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -147,16 +147,7 @@ static inline struct device_d * at91_register_uart(unsigned id, unsigned pins)
>  }
>  #endif
>  
> -/* Multimedia Card Interface */
> -struct atmel_mci_platform_data {
> -	unsigned slot_b;
> -	unsigned bus_width;
> -	int detect_pin;
> -	int wp_pin;
> -	char *devname;
> -};
> -
> -void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data);
> +#include <platform_data/atmel-mci.h>
>  
>  /* SPI Master platform data */
>  struct at91_spi_platform_data {
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index 0d3b245ced..b4c4e7769e 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -21,9 +21,9 @@
>  #include <clock.h>
>  #include <gpio.h>
>  #include <io.h>
> -#include <mach/board.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> +#include <platform_data/atmel-mci.h>
>  #include <of_gpio.h>
>  
>  #include "atmel-mci-regs.h"
> diff --git a/include/platform_data/atmel-mci.h b/include/platform_data/atmel-mci.h
> new file mode 100644
> index 0000000000..d99ee3d138
> --- /dev/null
> +++ b/include/platform_data/atmel-mci.h
> @@ -0,0 +1,15 @@
> +#ifndef PLATFORM_DATA_ATMEL_MCI_H
> +#define PLATFORM_DATA_ATMEL_MCI_H
> +
> +/* Multimedia Card Interface */
> +struct atmel_mci_platform_data {
> +	unsigned slot_b;
> +	unsigned bus_width;
> +	int detect_pin;
> +	int wp_pin;
> +	char *devname;
> +};
> +
> +void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data);
> +
> +#endif /* PLATFORM_DATA_ATMEL_MCI_H */
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
