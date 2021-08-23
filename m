Delivery-date: Mon, 23 Aug 2021 14:00:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mI8dC-00056o-0k
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 14:00:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mI8d7-0002fs-Hv
	for lore@pengutronix.de; Mon, 23 Aug 2021 14:00:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VdxfRJIP4CR59JfOvrilno0NYtW5BglRv4H+TdwOotY=; b=xQdoZhVhEs6lWtc7xpbNXPYp6b
	QMChSyHAykAx9PPubWqlkGS5gQoZ3j9C2LpUkvABJc+OTmABniR6tyD1i2KzTfMhFLiC2Yodo32Sr
	MEm8ijIv2BsXnsP9sCImP77nkGC+TDj+7dtd1Eg0fQuNr0oOMyr99AyPHvp8JeFpbdCINFNzfwwUj
	ngIH+wM4dva8+WfDm+fTf9hFYdd09MrUVDNocXKuQ2i2Z/IO4CX44ren6nJDc9uKUdDrunwEZmITL
	aJJi7psKBl0MK5+XWoMay7jc5FE7eXmUj8LHJZXSloM10wjfhledSsACZEvmVXGWo/LCi73cBt+tE
	GNlQ5wBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI8be-00GeH9-2i; Mon, 23 Aug 2021 11:59:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI8bW-00GeFh-42
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 11:59:06 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mI8bS-00027E-Mt; Mon, 23 Aug 2021 13:58:58 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
 <20210817101104.114945-3-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <96981f4e-1345-94c7-a081-3aef68b5d97e@pengutronix.de>
Date: Mon, 23 Aug 2021 13:58:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817101104.114945-3-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_045902_217124_8C3F3519 
X-CRM114-Status: GOOD (  25.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND v4 2/8] serial: add litex UART driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.08.21 12:10, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/serial/Makefile       |  1 +
>  drivers/serial/serial_litex.c | 96 +++++++++++++++++++++++++++++++++++
>  2 files changed, 97 insertions(+)
> 
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 5120b17376..45055371ea 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -24,3 +24,4 @@ obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
>  obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
>  obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
>  obj-$(CONFIG_SERIAL_SIFIVE)			+= serial_sifive.o
> +obj-$(CONFIG_SOC_LITEX)				+= serial_litex.o
> diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
> new file mode 100644
> index 0000000000..8562a45ecc
> --- /dev/null
> +++ b/drivers/serial/serial_litex.c
> @@ -0,0 +1,96 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +
> +#define UART_RXTX	0x00
> +#define UART_TXFULL	0x04
> +#define UART_RXEMPTY	0x08
> +#define UART_EV_PENDING	0x10
> +#define  UART_EV_RX	(1 << 1)
> +
> +static inline uint32_t litex_serial_readb(struct console_device *cdev,
> +						uint32_t offset)
> +{
> +	void __iomem *base = cdev->dev->priv;
> +
> +	return readb(base + offset);
> +}
> +
> +static inline void litex_serial_writeb(struct console_device *cdev,
> +					uint32_t value, uint32_t offset)
> +{
> +	void __iomem *base = cdev->dev->priv;
> +
> +	writeb(value, base + offset);
> +}
> +
> +static void litex_serial_putc(struct console_device *cdev, char c)
> +{
> +	while (litex_serial_readb(cdev, UART_TXFULL))
> +		;
> +
> +	litex_serial_writeb(cdev, c, UART_RXTX);
> +}
> +
> +static int litex_serial_getc(struct console_device *cdev)
> +{
> +	int c;
> +
> +	while (litex_serial_readb(cdev, UART_RXEMPTY))
> +		;
> +
> +	c = litex_serial_readb(cdev, UART_RXTX);
> +
> +	/* refresh UART_RXEMPTY by writing UART_EV_RX to UART_EV_PENDING */
> +	litex_serial_writeb(cdev, UART_EV_RX, UART_EV_PENDING);
> +
> +	return c;
> +}
> +
> +static int litex_serial_tstc(struct console_device *cdev)
> +{
> +	return !litex_serial_readb(cdev, UART_RXEMPTY);
> +}
> +
> +static int litex_serial_probe(struct device_d *dev)
> +{
> +	struct resource *iores;
> +	struct console_device *cdev;
> +
> +	cdev = xzalloc(sizeof(struct console_device));
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +
> +	dev->priv = IOMEM(iores->start);
> +	cdev->dev = dev;
> +	cdev->tstc = &litex_serial_tstc;
> +	cdev->putc = &litex_serial_putc;
> +	cdev->getc = &litex_serial_getc;
> +	cdev->setbrg = NULL;
> +
> +	console_register(cdev);
> +
> +	return 0;
> +}
> +
> +static __maybe_unused struct of_device_id litex_serial_dt_ids[] = {
> +	{
> +		.compatible = "litex,uart",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d litex_serial_driver = {
> +	.name  = "litex-uart",
> +	.probe = litex_serial_probe,
> +	.of_compatible = DRV_OF_COMPAT(litex_serial_dt_ids),
> +};
> +console_platform_driver(litex_serial_driver);
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

