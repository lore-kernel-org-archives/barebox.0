Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjLqN-0000YI-Va
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 08:12:14 +0000
Date: Thu, 2 Mar 2017 09:11:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170302081150.ysa7nnkbl4arfr5v@pengutronix.de>
References: <20170301143137.11570-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170301143137.11570-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/9] ARM: rpi: move model initialisation to rpi-common
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 01, 2017 at 03:31:29PM +0100, Lucas Stach wrote:
> From: Enrico Joerns <ejo@pengutronix.de>
> 
> The Raspberry PIs use different versions schemes for the older and newer
> variants. The decoding arrays for these schemes were split up in rpi.c
> and rpi2.c. This is not required, as the appropriate versioning scheme
> can be determined programmatically.
> 
> Signed-off-by: Enrico Joerns <ejo@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> lst: remove SoC string
> ---
>  arch/arm/boards/raspberry-pi/Makefile     |  2 --
>  arch/arm/boards/raspberry-pi/rpi-common.c | 57 ++++++++++++++++++++++++++-----
>  arch/arm/boards/raspberry-pi/rpi.c        | 44 ------------------------
>  arch/arm/boards/raspberry-pi/rpi.h        |  3 --
>  arch/arm/boards/raspberry-pi/rpi2.c       | 21 ------------
>  5 files changed, 48 insertions(+), 79 deletions(-)
>  delete mode 100644 arch/arm/boards/raspberry-pi/rpi.c
>  delete mode 100644 arch/arm/boards/raspberry-pi/rpi2.c

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
> index 7a3d7de241f0..a3e93eb73a32 100644
> --- a/arch/arm/boards/raspberry-pi/Makefile
> +++ b/arch/arm/boards/raspberry-pi/Makefile
> @@ -1,4 +1,2 @@
>  obj-$(CONFIG_MACH_RPI_COMMON) += rpi-common.o
> -obj-$(CONFIG_MACH_RPI) += rpi.o
> -obj-$(CONFIG_MACH_RPI2) += rpi2.o
>  lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 147fce9952ab..7441c06437dd 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -146,6 +146,13 @@ void rpi_add_led(void)
>  		led_set_trigger(LED_TRIGGER_HEARTBEAT, &l->led);
>  }
>  
> +void rpi_b_init(void)
> +{
> +	rpi_leds[0].gpio = 16;
> +	rpi_leds[0].active_low = 1;
> +	rpi_set_usbethaddr();
> +}
> +
>  void rpi_b_plus_init(void)
>  {
>  	rpi_leds[0].gpio = 47;
> @@ -153,12 +160,39 @@ void rpi_b_plus_init(void)
>  	rpi_set_usbethaddr();
>  }
>  
> +/* See comments in mbox.h for data source */
> +const struct rpi_model rpi_models_old_scheme[] = {
> +	RPI_MODEL(0, "Unknown model", NULL),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", rpi_b_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", rpi_b_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_4, "Model B", rpi_b_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_5, "Model B", rpi_b_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_6, "Model B", rpi_b_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_A_7, "Model A", NULL),
> +	RPI_MODEL(BCM2835_BOARD_REV_A_8, "Model A", NULL),
> +	RPI_MODEL(BCM2835_BOARD_REV_A_9, "Model A", NULL),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", rpi_b_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", rpi_b_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", rpi_b_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", rpi_b_plus_init),
> +	RPI_MODEL(BCM2835_BOARD_REV_CM, "Compute Module", NULL),
> +	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, "Model A+", NULL),
> +};
> +
> +const struct rpi_model rpi_models_new_scheme[] = {
> +	RPI_MODEL(0, "Unknown model", NULL),
> +	RPI_MODEL(BCM2836_BOARD_REV_2_B, "2 Model B", rpi_b_plus_init),
> +};
> +
>  static int rpi_board_rev = 0;
> +const struct rpi_model *model;
>  
>  static void rpi_get_board_rev(void)
>  {
>  	int ret;
>  	char *name;
> +	const struct rpi_model *rpi_models;
> +	size_t rpi_models_size;
>  
>  	BCM2835_MBOX_STACK_ALIGN(struct msg_get_board_rev, msg);
>  	BCM2835_MBOX_INIT_HDR(msg);
> @@ -183,10 +217,17 @@ static void rpi_get_board_rev(void)
>  	 * http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
>  	 */
>  	rpi_board_rev = msg->get_board_rev.body.resp.rev;
> -	if (rpi_board_rev & 0x800000)
> +	if (rpi_board_rev & 0x800000) {
>  		rpi_board_rev = (rpi_board_rev >> 4) & 0xff;
> -	else
> +		rpi_models = rpi_models_new_scheme;
> +		rpi_models_size = ARRAY_SIZE(rpi_models_new_scheme);
> +
> +	} else {
>  		rpi_board_rev &= 0xff;
> +		rpi_models = rpi_models_old_scheme;
> +		rpi_models_size = ARRAY_SIZE(rpi_models_old_scheme);
> +	}
> +
>  	if (rpi_board_rev >= rpi_models_size) {
>  		printf("RPI: Board rev %u outside known range\n",
>  		       rpi_board_rev);
> @@ -201,8 +242,8 @@ static void rpi_get_board_rev(void)
>  	if (!rpi_board_rev)
>  		goto unknown_rev;
>  
> -	name = basprintf("RaspberryPi %s %s",
> -			   rpi_models[rpi_board_rev].name, rpi_model_string);
> +	model = &rpi_models[rpi_board_rev];
> +	name = basprintf("RaspberryPi %s", model->name);
>  	barebox_set_model(name);
>  	free(name);
>  
> @@ -210,17 +251,15 @@ static void rpi_get_board_rev(void)
>  
>  unknown_rev:
>  	rpi_board_rev = 0;
> -	name = basprintf("RaspberryPi %s", rpi_model_string);
> -	barebox_set_model(name);
> -	free(name);
> +	barebox_set_model("RaspberryPi (unknown rev)");
>  }
>  
>  static void rpi_model_init(void)
>  {
> -	if (!rpi_models[rpi_board_rev].init)
> +	if (!model->init)
>  		return;
>  
> -	rpi_models[rpi_board_rev].init();
> +	model->init();
>  	rpi_add_led();
>  }
>  
> diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
> deleted file mode 100644
> index dd2ad7f5a519..000000000000
> --- a/arch/arm/boards/raspberry-pi/rpi.c
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -/*
> - * Copyright (C) 2009 Carlo Caione <carlo@carlocaione.org>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -
> -#include "rpi.h"
> -
> -static void rpi_b_init(void)
> -{
> -	rpi_leds[0].gpio = 16;
> -	rpi_leds[0].active_low = 1;
> -	rpi_set_usbethaddr();
> -}
> -
> -/* See comments in mbox.h for data source */
> -const struct rpi_model rpi_models[] = {
> -	RPI_MODEL(0, "Unknown model", NULL),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", rpi_b_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", rpi_b_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_4, "Model B", rpi_b_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_5, "Model B", rpi_b_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_6, "Model B", rpi_b_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_A_7, "Model A", NULL),
> -	RPI_MODEL(BCM2835_BOARD_REV_A_8, "Model A", NULL),
> -	RPI_MODEL(BCM2835_BOARD_REV_A_9, "Model A", NULL),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", rpi_b_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", rpi_b_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", rpi_b_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", rpi_b_plus_init),
> -	RPI_MODEL(BCM2835_BOARD_REV_CM, "Compute Module", NULL),
> -	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, "Model A+", NULL),
> -};
> -const size_t rpi_models_size = ARRAY_SIZE(rpi_models);
> -const char *rpi_model_string = "(BCM2835/ARM1176JZF-S)";
> diff --git a/arch/arm/boards/raspberry-pi/rpi.h b/arch/arm/boards/raspberry-pi/rpi.h
> index 739cdee1b3ae..dd32fee80950 100644
> --- a/arch/arm/boards/raspberry-pi/rpi.h
> +++ b/arch/arm/boards/raspberry-pi/rpi.h
> @@ -17,9 +17,6 @@ struct rpi_model {
>  	void (*init)(void);
>  };
>  
> -extern const struct rpi_model rpi_models[];
> -extern const size_t rpi_models_size;
> -extern const char *rpi_model_string;
>  extern struct gpio_led rpi_leds[];
>  
>  void rpi_b_plus_init(void);
> diff --git a/arch/arm/boards/raspberry-pi/rpi2.c b/arch/arm/boards/raspberry-pi/rpi2.c
> deleted file mode 100644
> index 2cfc06f8a6a9..000000000000
> --- a/arch/arm/boards/raspberry-pi/rpi2.c
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -/*
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
> - */
> -
> -#include "rpi.h"
> -
> -const struct rpi_model rpi_models[] = {
> -	RPI_MODEL(0, "Unknown model", NULL),
> -	RPI_MODEL(BCM2836_BOARD_REV_2_B, "2 Model B", rpi_b_plus_init),
> -};
> -const size_t rpi_models_size = ARRAY_SIZE(rpi_models);
> -const char *rpi_model_string = "(BCM2836/CORTEX-A7)";
> -- 
> 2.11.0
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
