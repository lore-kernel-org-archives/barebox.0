Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHybX-0007Te-6Z
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 15:37:36 +0000
Received: from mail415.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 204FFFFA07B
 for <barebox@lists.infradead.org>; Tue, 19 Mar 2013 16:44:08 +0100 (CET)
Date: Tue, 19 Mar 2013 16:22:53 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130319152253.GL1568@game.jcrosoft.org>
References: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
 <1363684920-3034-2-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363684920-3034-2-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 1/5] serial: Add driver for Cadence UART
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:21 Tue 19 Mar     , Steffen Trumtrar wrote:
> Support for Cadence UART core.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/serial/Kconfig          |   4 +
>  drivers/serial/Makefile         |   1 +
>  drivers/serial/serial_cadence.c | 307 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 312 insertions(+)
>  create mode 100644 drivers/serial/serial_cadence.c
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index f61d670..a51510e 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -113,4 +113,8 @@ config DRIVER_SERIAL_OMAP4_USBBOOT
>  	help
>  	  Enable this to get console support over the usb bus used to boot an OMAP4
>  
> +config DRIVER_SERIAL_CADENCE
> +	default n
no need it's already n
> +	bool "Cadence UART driver"
> +
>  endmenu
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 893e282..963a7df 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -21,3 +21,4 @@ obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
>  obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
>  obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
>  obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)	+= serial_omap4_usbboot.o
> +obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+= serial_cadence.o
> diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
> new file mode 100644
> index 0000000..c29c391
> --- /dev/null
> +++ b/drivers/serial/serial_cadence.c
> @@ -0,0 +1,307 @@
> +/*
> + * (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <notifier.h>
> +#include <io.h>
> +#include <linux/err.h>
> +#include <linux/clk.h>
> +
> +#define CADENCE_UART_CONTROL		0x00
> +#define CADENCE_UART_MODE		0x04
> +#define CADENCE_UART_BAUD_GEN		0x18
> +#define CADENCE_UART_CHANNEL_STS	0x2C
> +#define CADENCE_UART_RXTXFIFO		0x30
> +#define CADENCE_UART_BAUD_DIV		0x34
> +
> +#define CADENCE_CTRL_RXRES		(1 << 0)
> +#define CADENCE_CTRL_TXRES		(1 << 1)
> +#define CADENCE_CTRL_RXEN		(1 << 2)
> +#define CADENCE_CTRL_RXDIS		(1 << 3)
> +#define CADENCE_CTRL_TXEN		(1 << 4)
> +#define CADENCE_CTRL_TXDIS		(1 << 5)
> +#define CADENCE_CTRL_RSTTO		(1 << 6)
> +#define CADENCE_CTRL_STTBRK		(1 << 7)
> +#define CADENCE_CTRL_STPBRK		(1 << 8)
> +
> +#define CADENCE_MODE_CLK_REF		(0 << 0)
> +#define CADENCE_MODE_CLK_REF_DIV	(1 << 0)
> +#define CADENCE_MODE_CHRL_6		(3 << 1)
> +#define CADENCE_MODE_CHRL_7		(2 << 1)
> +#define CADENCE_MODE_CHRL_8		(0 << 1)
> +#define CADENCE_MODE_PAR_EVEN		(0 << 3)
> +#define CADENCE_MODE_PAR_ODD		(1 << 3)
> +#define CADENCE_MODE_PAR_SPACE		(2 << 3)
> +#define CADENCE_MODE_PAR_MARK		(3 << 3)
> +#define CADENCE_MODE_PAR_NONE		(4 << 3)
> +
> +#define CADENCE_STS_REMPTY		(1 << 1)
> +#define CADENCE_STS_RFUL		(1 << 2)
> +#define CADENCE_STS_TEMPTY		(1 << 3)
> +#define CADENCE_STS_TFUL		(1 << 4)
move this to an include as we will use them for debug_ll
> +
> +/*
> + * create default values for different platforms
> + */
> +struct cadence_serial_devtype_data {
> +	u32 ctrl;
> +	u32 mode;
> +};
> +
> +static struct cadence_serial_devtype_data cadence_r1p08_data = {
> +	.ctrl = CADENCE_CTRL_RXEN | CADENCE_CTRL_TXEN,
> +	.mode = CADENCE_MODE_CLK_REF | CADENCE_MODE_CHRL_8 | CADENCE_MODE_PAR_NONE,
> +};
> +
> +struct cadence_serial_priv {
> +	struct console_device cdev;
> +	int baudrate;
> +	struct notifier_block notify;
> +	void __iomem *regs;
> +	struct clk *clk;
> +	struct cadence_serial_devtype_data *devtype;
> +};
> +
> +static int cadence_serial_reset(struct console_device *cdev)
> +{
> +	struct cadence_serial_priv *priv = container_of(cdev,
> +					struct cadence_serial_priv, cdev);
> +
> +	/* Soft-Reset Tx/Rx paths */
> +	writel(CADENCE_CTRL_RXRES | CADENCE_CTRL_TXRES, priv->regs +
> +		CADENCE_UART_CONTROL);
> +
> +	while (readl(priv->regs + CADENCE_UART_CONTROL) &
> +		(CADENCE_CTRL_RXRES | CADENCE_CTRL_TXRES))
> +		;
> +
> +	return 0;
> +}
> +
> +static int cadence_serial_setbaudrate(struct console_device *cdev, int baudrate)
> +{
> +	struct cadence_serial_priv *priv = container_of(cdev,
> +					struct cadence_serial_priv, cdev);
> +	unsigned int gen, div;
> +	int calc_rate;
> +	unsigned long clk;
> +	int error;
> +	int val;
> +
> +	clk = clk_get_rate(priv->clk);
> +	priv->baudrate = baudrate;
> +
> +	/* disable transmitter and receiver */
> +	val = readl(priv->regs + CADENCE_UART_CONTROL);
> +	val &= ~CADENCE_CTRL_TXEN & ~CADENCE_CTRL_RXEN;
> +	writel(val, priv->regs + CADENCE_UART_CONTROL);
> +
> +	/*
> +	 *	      clk
> +	 * rate = -----------
> +	 *	  gen*(div+1)
> +	 */
> +
> +	for (div = 4; div < 256; div++) {
> +		gen = clk / (baudrate * (div + 1));
> +
> +		if (gen < 1 || gen > 65535)
> +			continue;
> +
> +		calc_rate = clk / (gen * (div + 1));
> +		error = baudrate - calc_rate;
> +		if (error < 0)
> +			error *= -1;
> +		if (((error * 100) / baudrate) < 3)
> +			break;
> +	}
> +
> +	writel(gen, priv->regs + CADENCE_UART_BAUD_GEN);
> +	writel(div, priv->regs + CADENCE_UART_BAUD_DIV);
> +
> +	/* Soft-Reset Tx/Rx paths */
> +	writel(CADENCE_CTRL_RXRES | CADENCE_CTRL_TXRES, priv->regs +
> +		CADENCE_UART_CONTROL);
> +
> +	while (readl(priv->regs + CADENCE_UART_CONTROL) &
> +		(CADENCE_CTRL_RXRES | CADENCE_CTRL_TXRES))
> +		;
> +
> +	/* Enable UART */
> +	writel(priv->devtype->ctrl, priv->regs + CADENCE_UART_CONTROL);
> +
> +	return 0;
> +}
> +
> +static int cadence_serial_init_port(struct console_device *cdev)
> +{
> +	struct cadence_serial_priv *priv = container_of(cdev,
> +					struct cadence_serial_priv, cdev);
> +
> +	cadence_serial_reset(cdev);
> +
> +	/* Enable UART */
> +	writel(priv->devtype->ctrl, priv->regs + CADENCE_UART_CONTROL);
> +	writel(priv->devtype->mode, priv->regs + CADENCE_UART_MODE);
> +
> +	return 0;
> +}
> +
> +static void cadence_serial_putc(struct console_device *cdev, char c)
> +{
> +	struct cadence_serial_priv *priv = container_of(cdev,
> +					struct cadence_serial_priv, cdev);
> +
> +	while ((readl(priv->regs + CADENCE_UART_CHANNEL_STS) &
> +		CADENCE_STS_TFUL) != 0)
> +		;
> +
> +	writel(c, priv->regs + CADENCE_UART_RXTXFIFO);
> +}
> +
> +static int cadence_serial_tstc(struct console_device *cdev)
> +{
> +	struct cadence_serial_priv *priv = container_of(cdev,
> +					struct cadence_serial_priv, cdev);
> +
> +	return ((readl(priv->regs + CADENCE_UART_CHANNEL_STS) &
> +		 CADENCE_STS_REMPTY) == 0);
> +}
> +
> +static int cadence_serial_getc(struct console_device *cdev)
> +{
> +	struct cadence_serial_priv *priv = container_of(cdev,
> +					struct cadence_serial_priv, cdev);
> +
> +	while (!cadence_serial_tstc(cdev))
> +		;
> +
> +	return readl(priv->regs + CADENCE_UART_RXTXFIFO);
> +}
> +
> +static void cadence_serial_flush(struct console_device *cdev)
> +{
> +	struct cadence_serial_priv *priv = container_of(cdev,
> +					struct cadence_serial_priv, cdev);
> +
> +	while ((readl(priv->regs + CADENCE_UART_CHANNEL_STS) &
> +		CADENCE_STS_TEMPTY) != 0)
> +		;
> +}
> +
> +static int cadence_clocksource_clock_change(struct notifier_block *nb,
> +			unsigned long event, void *data)
> +{
> +	struct cadence_serial_priv *priv = container_of(nb,
> +					struct cadence_serial_priv, notify);
> +
> +	cadence_serial_setbaudrate(&priv->cdev, priv->baudrate);
> +
> +	return 0;
> +}
> +
> +static int cadence_serial_probe(struct device_d *dev)
> +{
> +	struct console_device *cdev;
> +	struct cadence_serial_priv *priv;
> +	struct cadence_serial_devtype_data *devtype;
> +	int ret;
> +
> +	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
> +	if (ret)
> +		return ret;
> +
> +	priv = xzalloc(sizeof(*priv));
> +	priv->devtype = devtype;
> +	cdev = &priv->cdev;
> +	dev->priv = priv;
> +
> +	priv->clk = clk_get(dev, NULL);
> +	if (IS_ERR(priv->clk)) {
> +		ret = -ENODEV;
> +		goto err_free;
> +	}
> +
> +	if (devtype->mode & CADENCE_MODE_CLK_REF_DIV)
> +		clk_set_rate(priv->clk, clk_get_rate(priv->clk) / 8);
> +
> +	priv->regs = dev_request_mem_region(dev, 0);
> +	if (!priv->regs) {
> +		ret = -EBUSY;
> +		goto err_free;
> +	}
> +
> +	cdev->dev = dev;
> +	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> +	cdev->tstc = cadence_serial_tstc;
> +	cdev->putc = cadence_serial_putc;
> +	cdev->getc = cadence_serial_getc;
> +	cdev->flush = cadence_serial_flush;
> +	cdev->setbrg = cadence_serial_setbaudrate;
> +
> +	cadence_serial_init_port(cdev);
> +
> +	console_register(cdev);
> +	priv->notify.notifier_call = cadence_clocksource_clock_change;
> +	clock_register_client(&priv->notify);
> +
> +	return 0;
> +
> +err_free:
> +	free(priv);
> +	return ret;
> +}
> +
> +static void cadence_serial_remove(struct device_d *dev)
> +{
> +	struct cadence_serial_priv *priv = dev->priv;
> +
> +	console_unregister(&priv->cdev);
> +	free(priv);
> +}
> +
> +static __maybe_unused struct of_device_id cadence_serial_dt_ids[] = {
> +	{
> +		.compatible = "xlnx,xuartps",
> +		.data = (unsigned long)&cadence_r1p08_data,
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct platform_device_id cadence_serial_ids[] = {
> +	{
> +		.name = "cadence-uart",
> +		.driver_data = (unsigned long)&cadence_r1p08_data,
> +	}, {
> +		/* sentinel */
> +	},
> +};
> +
> +static struct driver_d cadence_serial_driver = {
> +	.name   = "cadence_serial",
> +	.probe  = cadence_serial_probe,
> +	.remove = cadence_serial_remove,
don't do so
otherwise no uncompress in the kernel
> +	.of_compatible = DRV_OF_COMPAT(cadence_serial_dt_ids),
> +	.id_table = cadence_serial_ids,
> +};
> +
> +static int cadence_serial_init(void)
> +{
> +	return platform_driver_register(&cadence_serial_driver);
> +}
> +console_initcall(cadence_serial_init);
> -- 
> 1.8.2.rc2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
