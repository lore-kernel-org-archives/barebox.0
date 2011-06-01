Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.26.mail-out.ovh.net ([46.105.56.220] helo=26.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QReR1-0008P5-Tb
	for barebox@lists.infradead.org; Wed, 01 Jun 2011 05:57:41 +0000
Date: Wed, 1 Jun 2011 07:45:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110601054500.GA32751@game.jcrosoft.org>
References: <1306854170-24064-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1306854170-24064-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] mci: add Atmel AT91 MCI driver
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On 17:02 Tue 31 May     , Hubert Feurstein wrote:
> The driver supports push and pull transfers.
> Tested on at91sam9m10 SoC.
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
> ---
>  arch/arm/mach-at91/at91sam9g45_devices.c   |   92 +++++
I was working on similar patch too
please add other chips too

I'll test it this week
please check the patch with checkpatch
I see some whitespace issue
>  arch/arm/mach-at91/include/mach/at91_mci.h |  121 +++++++
>  arch/arm/mach-at91/include/mach/board.h    |   10 +
>  drivers/mci/Kconfig                        |    7 +
>  drivers/mci/Makefile                       |    1 +
>  drivers/mci/atmel_mci.c                    |  519 ++++++++++++++++++++++++++++
>  6 files changed, 750 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/mach-at91/include/mach/at91_mci.h
>  create mode 100644 drivers/mci/atmel_mci.c
> 
> diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
> index ddb005a..950d083 100644
> --- a/arch/arm/mach-at91/at91sam9g45_devices.c
> +++ b/arch/arm/mach-at91/at91sam9g45_devices.c
> @@ -10,6 +10,7 @@
>   *
>   */
>  #include <common.h>
> +#include <sizes.h>
>  #include <asm/armlinux.h>
>  #include <asm/hardware.h>
>  #include <mach/at91_pmc.h>
> @@ -240,3 +241,94 @@ void at91_register_uart(unsigned id, unsigned pins)
>  	}
>  
>  }
> +
> +#if defined(CONFIG_MCI_ATMEL)
> +static struct device_d mci0_device = {
> +	.id	  = 0,
please use tab for indent
> +	.name     = "atmel_mci",
> +	.map_base = AT91SAM9G45_BASE_MCI0,
> +	.size     = SZ_16K,
> +};
> +
> +static struct device_d mci1_device = {
> +	.id	  = 1,
> +	.name     = "atmel_mci",
> +	.map_base = AT91SAM9G45_BASE_MCI1,
> +	.size     = SZ_16K,
> +};
> +
....
> +
> diff --git a/arch/arm/mach-at91/include/mach/at91_mci.h b/arch/arm/mach-at91/include/mach/at91_mci.h
> new file mode 100644
> index 0000000..6aa50aa
> --- /dev/null
> +++ b/arch/arm/mach-at91/include/mach/at91_mci.h
> @@ -0,0 +1,121 @@
> +/*
> + * [origin: Linux kernel arch/arm/mach-at91/include/mach/at91_mci.h]
please move this with the driver I'm going to the same in the kernel
> + *
> + * Copyright (C) 2005 Ivan Kokshaysky
> + * Copyright (C) SAN People
> + *
> + * MultiMedia Card Interface (MCI) registers.
> + * Based on AT91RM9200 datasheet revision F.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#ifndef AT91_MCI_H
> +#define AT91_MCI_H
> +
...
> +
> +	pr_debug("atmel_set_clk_rate: clkIn=%d clkIos=%d divider=%d\n",
> +		clk_in, clk_ios, divider);
dev_dbg here?
> +
> +	writel(((AT91_MCI_CLKDIV & divider)
> +		| AT91_MCI_RDPROOF
> +		| AT91_MCI_WRPROOF), &host->base->mr);
> +}
> +
> +static int atmel_poll_status(struct atmel_mci_host *host, u32 mask)
> +{
> +	u32 stat;
> +	uint64_t start = get_time_ns();
> +
> +	do {
> +		stat = readl(&host->base->sr);
> +		if (stat & STATUS_ERROR_MASK)
> +			return stat;
> +		if (is_timeout(start, SECOND))
> +			return AT91_MCI_RTOE | stat;
> +		if (stat & mask)
> +			return 0;
> +	} while (1);
> +}
> +
> +static int atmel_pull(struct atmel_mci_host *host, void *_buf, int bytes)
> +{
> +	unsigned int stat;
> +	u32 *buf = _buf;
> +
> +	while (bytes > 3) {
> +		stat = atmel_poll_status(host, AT91_MCI_RXRDY);
> +		if (stat)
> +			return stat;
> +		
> +		*buf++ = readl(&host->base->rdr);
> +		bytes -= 4;
> +	}
> +
> +	if (bytes) {
> +		u8 *b = (u8 *)buf;
> +		u32 tmp;
> +
> +		stat = atmel_poll_status(host, AT91_MCI_RXRDY);
> +		if (stat)
> +			return stat;
> +		
> +		tmp = readl(&host->base->rdr);
> +		memcpy(b, &tmp, bytes);
we could use  __iowrite32 here to speed up the copy
I'll send a patch to add it to barebox
> +	}
> +
> +	return 0;
> +}
> +
> +#ifdef CONFIG_MCI_WRITE
> +static int atmel_push(struct atmel_mci_host *host, const void *_buf, int bytes)
> +{
> +	unsigned int stat;
> +	const u32 *buf = _buf;
> +
> +	while (bytes > 3) {
> +		stat = atmel_poll_status(host, AT91_MCI_TXRDY);
> +		if (stat)
> +			return stat;
> +		
> +		writel(*buf++, &host->base->tdr);
> +		bytes -= 4;
> +	}
> +
> +	if (bytes) {
> +		const u8 *b = (u8 *)buf;
> +		u32 tmp;
> +
> +		stat = atmel_poll_status(host, AT91_MCI_TXRDY);
> +		if (stat)
> +			return stat;
> +
> +		memcpy(&tmp, b, bytes);
ditto
> +		writel(tmp, &host->base->tdr);
> +	}
> +
> +	stat = atmel_poll_status(host, AT91_MCI_TXRDY);
> +	if (stat)
> +		return stat;
> +
> +	return 0;
> +}
> +#endif /* CONFIG_MCI_WRITE */
> +
> +static int atmel_transfer_data(struct atmel_mci_host *host)
> +{
> +	struct mci_data *data = host->data;
> +	int stat;
> +	unsigned long length;
> +
> +	length = data->blocks * data->blocksize;
> +	host->datasize = 0;
> +
> +	if (data->flags & MMC_DATA_READ) {
> +		stat = atmel_pull(host, data->dest, length);
> +		if (stat)
> +			return stat;
> +
> +		stat = atmel_poll_status(host, AT91_MCI_NOTBUSY);
> +		if (stat)
> +			return stat;
> +
> +		host->datasize += length;
> +	} else {
> +	BUG_ON(data->blocksize & 3);
> +	BUG_ON(nob == 0);
> +	
> +	host->data = data;
> +
> +	pr_debug("atmel_setup_data: nob=%d blksz=%d\n", nob, blksz);
deb_dbg?
> +	
> +	writel(AT91_MCI_BLKR_BCNT(nob)
> +		| AT91_MCI_BLKR_BLKLEN(blksz), &host->base->blkr);
> +
> +	host->datasize = datasize;
> +}
> +
otherwise look good

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
