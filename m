Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZa0B-0000b5-Le
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 11:27:01 +0000
References: <cover.61efbc8cc3e2f39adccce96b40af1bb32a30bc66.1545130027.git-series.r.czerwinski@pengutronix.de>
 <ff5a5e32f29b3c3a035196fd350d9e520837b2c5.1545130027.git-series.r.czerwinski@pengutronix.de>
From: Rouven Czerwinski <rouven@czerwinskis.de>
In-reply-to: <ff5a5e32f29b3c3a035196fd350d9e520837b2c5.1545130027.git-series.r.czerwinski@pengutronix.de>
Date: Wed, 19 Dec 2018 12:26:44 +0100
Message-ID: <8736qtdaff.fsf@czerwinskis.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v5 6/9] ARM: rpi: add NS16550 support
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org


Rouven Czerwinski <r.czerwinski@pengutronix.de> writes:

> Since the 16550 driver now supports the RPI3 miniuart, enable it in the default
> config.
>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/configs/rpi_defconfig  | 1 +
>  drivers/serial/serial_ns16550.c | 6 +++++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
> index 2bb6158..dc5ab1f 100644
> --- a/arch/arm/configs/rpi_defconfig
> +++ b/arch/arm/configs/rpi_defconfig
> @@ -63,6 +63,7 @@ CONFIG_CMD_OF_PROPERTY=y
>  CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_TIME=y
>  CONFIG_SERIAL_AMBA_PL011=y
> +CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_MCI=y
>  CONFIG_MCI_BCM283X=y
>  CONFIG_LED=y
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 256063a..5e5b671 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -253,11 +253,15 @@ static void ns16550_jz_init_port(struct console_device *cdev)
>  	ns16550_serial_init_port(cdev);
>  }
>  
> +#define BCM2836_AUX_CLOCK_ENB 0x3f215004 /* BCM2835 AUX Clock enable register */
> +#define BCM2836_AUX_CLOCK_EN_UART BIT(0) /* Bit 0 enables the Miniuart */
> +
>  static void rpi_init_port(struct console_device *cdev)
>  {
> +	uint8_t val;
                ^ This leftover should be removed
>  	struct ns16550_priv *priv = to_ns16550_priv(cdev);
>  
> -	writeb(0x01, 0x3f215004);
> +	writeb(BCM2835_AUX_CLOCK_EN_UART, BCM2835_AUX_CLOCK_ENB);
                     ^ this is broken, the Define uses 6 not 5 (since
                     for rpi2 and 3 the address is different)

I'll resend the series with these changes squashed into the previous
commit which touches this file.
>  	priv->plat.shift = 2;
>  	/*
>  	 * We double the clock rate since the 16550 will divide by 16


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
