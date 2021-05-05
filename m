Delivery-date: Wed, 05 May 2021 12:33:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEqB-0007gR-3K
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:33:15 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEqA-0001CJ-7x
	for lore@pengutronix.de; Wed, 05 May 2021 12:33:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qa06JCDjqbtMNxcT6KpJElXGyomB+YyTSRcphONH4kQ=; b=aLCuMDgg1zVNny33va4iZINj6
	t1d3gv6sAcNWsNy0qx40ArBU50lF1ZaI51r9NK9RoU+utqb8cxmS93G2HNM8mgguY8NqScQjycWLC
	h2WAd5LdfM6i02V2QAqnMKJigNOAel/v4qyL8JawjP8MCkPeIg7hHIzxfP9j5Ms1BHjgWrPtlR1t5
	ft0CR8WCdYxBL2m302F63AUZjWEYTTDt/gE3/Uba2+JnuZWDRjLVu727aUSayKISOZtNW1tjGJ9a6
	erhBAL4pI1yc2uqSzzzk+bUAmsLWd3kp9qSfznaBIukDHeYYlIEU5XeCIuIw+rOe3y97AnZdSCT3l
	ERbUjQTvA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leEpD-000yD7-Pz; Wed, 05 May 2021 10:32:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEp8-000yCg-5M
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=304vy0O/WBfm+Ts7HiHqilYbl5Zf3GJhkdR0Kj1QX20=; b=WlDEtmYBDKs0kQmiZz/Bs5Yop6
 IYa99TtX0OAguVib5izY2fu7FcYRZk8Mn3VA5Xdwv2++a3gu9hC8EnBhMEXpAHKk9dowXkSezbt10
 oBw+QmH5MYHYBqskEoiOtN5mFr0De1h51+OsSGM+x5CdGHjoE/pIXLcLm2c2KyUxXbJnBuh0mBBtI
 TTw8kRGbdgthUW95xWQ64MjYdkHALCBl3uHksJgcT1SUmi+4thwaT+lxfqbSzWNvKVo1krRBXd00+
 SGVMHBJW/9OMnqP6cKDTRET+XCKKeWD/T5p9ZbQu5ZLXEbDh4CTwwgFPtFT21R2/zh8s1FLY3pFcg
 RE8oG2LQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEp5-004g17-CK
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:32:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leEp3-000193-7v; Wed, 05 May 2021 12:32:05 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-4-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f5602ba7-64cb-7135-7c76-eb2afa6c3d52@pengutronix.de>
Date: Wed, 5 May 2021 12:32:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210505100900.88141-4-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_033207_450699_78305B1E 
X-CRM114-Status: GOOD (  24.67  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/9] serial: add litex UART driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 05.05.21 12:08, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/serial/Makefile       |  1 +
>  drivers/serial/serial_litex.c | 96 +++++++++++++++++++++++++++++++++++
>  2 files changed, 97 insertions(+)
> 
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 7ff41cd5c7..95c3387d3e 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -23,3 +23,4 @@ obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
>  obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
>  obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
>  obj-$(CONFIG_VIRTIO_CONSOLE)			+= virtio_console.o
> +obj-$(CONFIG_MACH_LITEX)			+= serial_litex.o
> diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
> new file mode 100644
> index 0000000000..dec3d99fd0
> --- /dev/null
> +++ b/drivers/serial/serial_litex.c
> @@ -0,0 +1,96 @@
> +// SPDX-License-Identifier: GPL-2.
> +/*
> + * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <malloc.h>

That header is unused, isn't it?

> +#include <io.h>
> +
> +#include <mach/debug_ll.h>

This seems unused as well.

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
> +	if (litex_serial_readb(cdev, UART_RXEMPTY)) {
> +		return 0;
> +	}
> +
> +	return 1;

return directly?

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

blank line.

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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

