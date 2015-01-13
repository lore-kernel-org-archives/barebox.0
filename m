Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAwL4-0006lZ-Ut
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 07:56:35 +0000
Received: by mail-la0-f43.google.com with SMTP id s18so1244743lam.2
 for <barebox@lists.infradead.org>; Mon, 12 Jan 2015 23:56:12 -0800 (PST)
Date: Tue, 13 Jan 2015 11:58:40 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150113115840.3309f5fa5a331549eac9d028@gmail.com>
In-Reply-To: <1421130376-32428-2-git-send-email-plagnioj@jcrosoft.com>
References: <20150113062416.GB30554@ns203013.ovh.net>
 <1421130376-32428-1-git-send-email-plagnioj@jcrosoft.com>
 <1421130376-32428-2-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/6] raspberry-pi: add leds support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, 13 Jan 2015 07:26:12 +0100
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

I have planned to switch raspberry pi to device tree support as Linux does.

IMHO POWER LED is not GPIO controlable, please see these schematics

   http://www.raspberrypi.org/wp-content/uploads/2012/04/Raspberry-Pi-Schem=
atics-R1.0.pdf
   http://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics=
/Raspberry-Pi-B-Plus-V1.2-Schematics.pdf


> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/raspberry-pi/rpi.c | 55 ++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 55 insertions(+)
> =

> diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspber=
ry-pi/rpi.c
> index ae1e92a..7d866cc 100644
> --- a/arch/arm/boards/raspberry-pi/rpi.c
> +++ b/arch/arm/boards/raspberry-pi/rpi.c
> @@ -21,6 +21,8 @@
>  #include <linux/clkdev.h>
>  #include <envfs.h>
>  #include <malloc.h>
> +#include <gpio.h>
> +#include <led.h>
>  #include <asm/armlinux.h>
>  #include <generated/mach-types.h>
>  =

> @@ -87,6 +89,49 @@ static int rpi_register_clkdev(u32 clock_id, const cha=
r *name)
>  }
>  =

>  =

> +static struct gpio_led leds[] =3D {
> +	{
> +		.gpio	=3D -EINVAL,
> +		.led	=3D {
> +			.name =3D "ACT",
> +		},
> +	}, {
> +		.gpio	=3D -EINVAL,
> +		.led	=3D {
> +			.name =3D "PWR",
> +		},
> +	},
> +};
> +
> +static void rpi_add_led(void)
> +{
> +	int i;
> +	struct gpio_led *l;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(leds); i++) {
> +		l =3D &leds[i];
> +
> +		if (gpio_is_valid(l->gpio))
> +			led_gpio_register(l);
> +	}
> +
> +	l =3D &leds[0];
> +	if (gpio_is_valid(l->gpio))
> +		led_set_trigger(LED_TRIGGER_HEARTBEAT, &l->led);
> +}
> +
> +static void rpi_b_plus_init(void)
> +{
> +	leds[0].gpio =3D 47;
> +	leds[1].gpio =3D 35;
> +}
> +
> +static void rpi_b_init(void)
> +{
> +	leds[0].gpio =3D 16;
> +	leds[0].active_low =3D 1;
> +}
> +
>  #define RPI_MODEL(_id, _name, _init)	\
>  	[_id] =3D {				\
>  		.name			=3D _name,\
> @@ -160,6 +205,15 @@ unknown_rev:
>  	barebox_set_model("RaspberryPi (BCM2835/ARM1176JZF-S)");
>  }
>  =

> +static void rpi_model_init(void)
> +{
> +	rpi_set_usbethaddr();
> +	if (models[rpi_board_rev].init) {
> +		models[rpi_board_rev].init();
> +		rpi_add_led();
> +	}
> +}
> +
>  static int rpi_mem_init(void)
>  {
>  	u32 size =3D 0;
> @@ -220,6 +274,7 @@ static int rpi_env_init(void)
>  =

>  static int rpi_devices_init(void)
>  {
> +	rpi_model_init();
>  	bcm2835_register_mci();
>  	bcm2835_register_fb();
>  	armlinux_set_architecture(MACH_TYPE_BCM2708);
> -- =

> 2.1.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
