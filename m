Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPZSI-0003u2-Rh
 for barebox@lists.infradead.org; Sat, 20 Oct 2012 13:51:12 +0000
Date: Sat, 20 Oct 2012 17:50:58 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121020175058.7a9270e287ea94ed5df84925@mail.ru>
In-Reply-To: <20121016213956.GH27665@pengutronix.de>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
 <1350318405-20081-2-git-send-email-shc_work@mail.ru>
 <20121015175852.GC5803@game.jcrosoft.org>
 <20121015215839.GR27665@pengutronix.de>
 <20121016080801.GF5803@game.jcrosoft.org>
 <20121016213956.GH27665@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 2/3] ARM: clps711x: Add serial driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 16 Oct 2012 23:39:56 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

...
> > > We already had this. This SoC has a very strange register layout. The
> > > registers for the UARTs are spread around the SoC and the registers
> > > are not even exclusively used for the UARTs. They have bits which are
> > > also used for the timer and other stuff.
> > use the device id to select the register is wrong
> > 
> > we need to pass the register via resource (without request) or platform data
> > > 
> > > > > +static int clps711x_tstc(struct console_device *cdev)
> > > > > +{
> > > > > +	return !(readl(SYSFLG(cdev->dev->id)) & SYSFLG_URXFE);
> > > > factorise those pull status as
> > > > 
> > > > status int xxx(data, mask) {}
> > > 
> > > I don'r understand this. This is a single register read, there's not
> > > much to factorize and the code is easy to read.
> > he use the code at a least 2 place
> 
> Testing for a bit like above is done a thousand times all around the
> kernel and barebox. There is nothing to factorize. The way Alexander did
> it is perfectly fine.
Please look on new version below. If it looks OK, I will make complete v2 patch.
Thanks!

/*
 * Simple CLPS711X serial driver
 *
 * (C) Copyright 2012 Alexander Shiyan <shc_work@mail.ru>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 */

#include <common.h>
#include <malloc.h>
#include <init.h>
#include <io.h>
#include <linux/clk.h>

#include <mach/clps711x.h>

struct clps711x_uart {
	void __iomem		*UBRLCR;
	void __iomem		*SYSCON;
	void __iomem		*SYSFLG;
	void __iomem		*UARTDR;
	struct clk		*uart_clk;
	struct console_device	cdev;
};

static int clps711x_setbaudrate(struct console_device *cdev, int baudrate)
{
	struct clps711x_uart *s = cdev->dev->priv;
	int divisor;
	u32 tmp;

	divisor = (clk_get_rate(s->uart_clk) / 16) / baudrate;

	tmp = readl(s->UBRLCR) & ~UBRLCR_BAUD_MASK;
	tmp |= divisor - 1;
	writel(tmp, s->UBRLCR);

	return 0;
}

static void clps711x_init_port(struct console_device *cdev)
{
	struct clps711x_uart *s = cdev->dev->priv;
	u32 tmp;

	/* Disable the UART */
	writel(readl(s->SYSCON) & ~SYSCON_UARTEN, s->SYSCON);

	/* Setup Line Control Register */
	tmp = readl(s->UBRLCR) & UBRLCR_BAUD_MASK;
	tmp |= UBRLCR_FIFOEN | UBRLCR_WRDLEN8; /* FIFO on, 8N1 mode */
	writel(tmp, s->UBRLCR);

	/* Set default baudrate on initialization */
	clps711x_setbaudrate(cdev, CONFIG_BAUDRATE);

	/* Enable the UART */
	writel(readl(s->SYSCON) | SYSCON_UARTEN, s->SYSCON);
}

static void clps711x_putc(struct console_device *cdev, char c)
{
	struct clps711x_uart *s = cdev->dev->priv;

	/* Wait until there is space in the FIFO */
	while (readl(s->SYSFLG) & SYSFLG_UTXFF)
		barrier();

	/* Send the character */
	writew(c, s->UARTDR);
}

static int clps711x_getc(struct console_device *cdev)
{
	struct clps711x_uart *s = cdev->dev->priv;
	u16 data;

	/* Wait until there is data in the FIFO */
	while (readl(s->SYSFLG) & SYSFLG_URXFE)
		barrier();

	data = readw(s->UARTDR);

	/* Check for an error flag */
	if (data & (UARTDR_FRMERR | UARTDR_PARERR | UARTDR_OVERR))
		return -1;

	return (int)data;
}

static int clps711x_tstc(struct console_device *cdev)
{
	struct clps711x_uart *s = cdev->dev->priv;

	return !(readl(s->SYSFLG) & SYSFLG_URXFE);
}

static void clps711x_flush(struct console_device *cdev)
{
	struct clps711x_uart *s = cdev->dev->priv;

	while (readl(s->SYSFLG) & SYSFLG_UBUSY)
		barrier();
}

static int clps711x_probe(struct device_d *dev)
{
	struct clps711x_uart *s;

	BUG_ON(dev->num_resources != 4);

	s = xzalloc(sizeof(struct clps711x_uart));
	s->uart_clk = clk_get(dev, NULL);
	BUG_ON(!s->uart_clk);

	s->UBRLCR = dev_get_mem_region(dev, 0);
	s->SYSCON = dev_get_mem_region(dev, 1);
	s->SYSFLG = dev_get_mem_region(dev, 2);
	s->UARTDR = dev_get_mem_region(dev, 3);

	dev->priv	= s;
	s->cdev.dev	= dev;
	s->cdev.f_caps	= CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
	s->cdev.tstc	= clps711x_tstc;
	s->cdev.putc	= clps711x_putc;
	s->cdev.getc	= clps711x_getc;
	s->cdev.flush	= clps711x_flush;
	s->cdev.setbrg	= clps711x_setbaudrate;
	clps711x_init_port(&s->cdev);

	return console_register(&s->cdev);
}

static void clps711x_remove(struct device_d *dev)
{
	struct clps711x_uart *s = dev->priv;

	clps711x_flush(&s->cdev);
	console_unregister(&s->cdev);
	free(s);
}

static struct driver_d clps711x_driver = {
	.name	= "clps711x_serial",
	.probe	= clps711x_probe,
	.remove	= clps711x_remove,
};

static int clps711x_init(void)
{
	return platform_driver_register(&clps711x_driver);
}
console_initcall(clps711x_init);

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
