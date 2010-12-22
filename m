Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVD60-0004GU-8h
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 01:02:26 +0000
Date: Wed, 22 Dec 2010 01:57:22 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101222005722.GD19266@game.jcrosoft.org>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3oc8gcae3.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3oc8gcae3.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 10] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

> +
> +#define BAREBOX_START        0x00000
> +#define BAREBOX_LENGTH       0x34000
> +#define NPE_A_START          (BAREBOX_START + BAREBOX_LENGTH)
> +#define NPE_A_LENGTH         0x05000
> +#define NPE_B_START          (NPE_A_START + NPE_A_LENGTH)
> +#define NPE_B_LENGTH         0x03000
> +#define NPE_C_START          (NPE_B_START + NPE_B_LENGTH)
> +#define NPE_C_LENGTH         0x04000
> +#define NPE_ENV0_START       (NPE_C_START + NPE_C_LENGTH)
> +#define NPE_ENV0_LENGTH      0x20000
why not put the NPE firmware in the env?

btw you have a lots of whitespace please use tab for indent

Best Regards,
J.
> +
> +static struct clocksource cs = {
> +	.read = ixp4xx_clocksource_read,
> +	.mask = 0xffffffff,
please use CLOCKSOURCE_MASK
> +	.shift = 10,
> +};
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 290619f..0f25ceb 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
please do this in a seperate patch
> @@ -102,7 +102,11 @@ static void ns16550_serial_init_port(struct console_device *cdev)
>  	baud_divisor = ns16550_calc_divisor(cdev, CONFIG_BAUDRATE);
>  
>  	/* initializing the device for the first time */
> +#ifdef CONFIG_ARCH_IXP4XX
> +	plat->reg_write(IER_UUE, base, ier); /* Enable UART operation */
> +#else
>  	plat->reg_write(0x00, base, ier);
> +#endif
>  #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
>  	plat->reg_write(0x07, base, mdr1);	/* Disable */
>  #endif
> @@ -181,7 +185,11 @@ static int ns16550_setbaudrate(struct console_device *cdev, int baud_rate)
>  	    cdev->dev->platform_data;
>  	unsigned long base = cdev->dev->map_base;
>  	unsigned int baud_divisor = ns16550_calc_divisor(cdev, baud_rate);
> +#ifdef CONFIG_ARCH_IXP4XX
> +	plat->reg_write(IER_UUE, base, ier); /* Enable UART operation */
> +#else
>  	plat->reg_write(0x00, base, ier);
> +#endif
>  	plat->reg_write(LCR_BKSE, base, lcr);
>  	plat->reg_write(baud_divisor & 0xff, base, dll);
>  	plat->reg_write((baud_divisor >> 8) & 0xff, base, dlm);
> diff --git a/drivers/serial/serial_ns16550.h b/drivers/serial/serial_ns16550.h
> index eb2fd10..ba20a6f 100644
> --- a/drivers/serial/serial_ns16550.h
> +++ b/drivers/serial/serial_ns16550.h
> @@ -50,6 +50,8 @@
>  #define dll		rbr
>  #define dlm		ier
>  
> +#define IER_UUE		0x40	/* UART Unit Enable (XScale) */
> +
>  #define FCR_FIFO_EN     0x01	/* Fifo enable */
>  #define FCR_RXSR        0x02	/* Receiver soft reset */
>  #define FCR_TXSR        0x04	/* Transmitter soft reset */
> 
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
