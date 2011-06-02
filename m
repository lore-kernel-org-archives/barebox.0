Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QSAZf-0000cO-UY
	for barebox@lists.infradead.org; Thu, 02 Jun 2011 16:16:45 +0000
Date: Thu, 2 Jun 2011 18:04:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110602160400.GG32751@game.jcrosoft.org>
References: <20110601054500.GA32751@game.jcrosoft.org>
	<1306928926-11086-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1306928926-11086-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH v2] mci: add Atmel AT91 MCI driver
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On 13:48 Wed 01 Jun     , Hubert Feurstein wrote:
> The driver supports push and pull transfers.
> Tested on at91sam9m10 SoC.
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
> Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
> ---
>  Changes against v1:
>  - Code cleanup according to checkpatch.pl.
>  - Add support for devices: 9260, 9261 and 9263 (but not tested!)
>  - Use dev_* function instead of pr_*
>
I've test it on at91sam9263ek and work fine

please fix the following comments
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> index 1ab05ad..89c1746 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -63,4 +63,14 @@ void at91_add_device_sdram(u32 size);
>  #define ATMEL_UART_RI	0x20
>  
>  void at91_register_uart(unsigned id, unsigned pins);
> +
> +/* Multimedia Card Interface */
> +struct atmel_mci_platform_data {
> +	unsigned bus_width;
> +	unsigned host_caps; /* MCI_MODE_* from mci.h */
> +	unsigned detect_pin;
> +	unsigned wp_pin;
> +};
we can have 2 slot but you allow only one
> +
> +void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data);
>  #endif
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 5d8adbd..7b71b99 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -73,4 +73,11 @@ config MCI_OMAP_HSMMC
>  	  Enable this entry to add support to read and write SD cards on a
>  	  OMAP4 based system.
>  
> +config MCI_ATMEL
> +	bool "ATMEL (AT91)"
> +	depends on ARCH_AT91
> +	help
> +	  Enable this entry to add support to read and write SD cards on a
> +	  Atmel AT91.
> +
>  endif

> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + */
> +
> +/* #define DEBUG */
no need please remove
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mci.h>
> +#include <errno.h>
> +#include <clock.h>
> +#include <gpio.h>
> +#include <asm/io.h>
> +#include <mach/board.h>
> +#include <linux/clk.h>
> +
> +#include "at91_mci.h"
> +
> +/*
> + * Structure for struct SoC access.
> + * Names starting with '_' are fillers.
> + */
> +struct atmel_mci_regs {
> +	/*	reg	Offset */
> +	u32	cr;	/* 0x00 */
> +	u32	mr;	/* 0x04 */
> +	u32	dtor;	/* 0x08 */
> +	u32	sdcr;	/* 0x0c */
> +	u32	argr;	/* 0x10 */
> +	u32	cmdr;	/* 0x14 */
> +	u32	blkr;	/* 0x18 */
> +	u32	_1c;	/* 0x1c */
> +	u32	rspr;	/* 0x20 */
> +	u32	rspr1;	/* 0x24 */
> +	u32	rspr2;	/* 0x28 */
> +	u32	rspr3;	/* 0x2c */
> +	u32	rdr;	/* 0x30 */
> +	u32	tdr;	/* 0x34 */
> +	u32	_38;	/* 0x38 */
> +	u32	_3c;	/* 0x3c */
> +	u32	sr;	/* 0x40 */
> +	u32	ier;	/* 0x44 */
> +	u32	idr;	/* 0x48 */
> +	u32	imr;	/* 0x4c */
> +};
please use the same as the kernel here
offset not a struct
> +
> +struct atmel_mci_host {
> +	struct mci_host mci;
> +	struct atmel_mci_regs volatile __iomem *base;
> +	struct device_d *hw_dev;
> +	struct clk *clk;
> +
> +	u32 datasize;
> +	struct mci_cmd *cmd;
> +	struct mci_data *data;
> +};
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
please use __iowrite32 to speedup the copy
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
> +/** change host interface settings */
> +static void mci_set_ios(struct mci_host *mci, struct device_d *mci_dev,
> +			unsigned bus_width, unsigned clock)
> +{
> +	struct atmel_mci_host *host = to_mci_host(mci);
> +
> +	dev_dbg(host->hw_dev, "atmel_mci_set_ios: bus_width=%d clk=%d\n",
> +		bus_width, clock);
> +
> +	if (bus_width == 8)
> +		writel(AT91_MCI_SDCBUS_8BIT, &host->base->sdcr);
> +	if (bus_width == 4)
> +		writel(AT91_MCI_SDCBUS_4BIT, &host->base->sdcr);
> +	else
> +		writel(AT91_MCI_SDCBUS_1BIT, &host->base->sdcr);
switch here
> +
> +	if (clock) {
> +		atmel_set_clk_rate(host, clock);
> +		writel(AT91_MCI_MCIEN, &host->base->cr);
> +	} else {
> +		writel(AT91_MCI_MCIDIS, &host->base->cr);
> +	}
> +
> +	return;
> +}
> +
> +/** handle a command */
> +static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
> +{
> +	struct atmel_mci_host *host = to_mci_host(mci);
> +	u32 stat, cmdat = 0;
> +	int ret;
> +
> +	if (cmd->resp_type != MMC_RSP_NONE)
> +		cmdat |= AT91_MCI_MAXLAT;
> +
> +	if (data) {
> +		atmel_setup_data(host, data);
> +
> +		cmdat |= AT91_MCI_TRCMD_START | AT91_MCI_TRTYP_MULTIPLE;
> +
> +		if (data->flags & MMC_DATA_READ)
> +			cmdat |= AT91_MCI_TRDIR_RX;
> +	}
> +
> +	ret = atmel_start_cmd(host, cmd, cmdat);
> +	if (ret) {
> +		atmel_finish_request(host);
> +		return ret;
> +	}
> +
> +	stat = atmel_poll_status(host, AT91_MCI_CMDRDY);
> +	return atmel_cmd_done(host, stat);
> +}
> +
> +#ifdef CONFIG_MCI_INFO
> +static void mci_info(struct device_d *mci_dev)
> +{
> +	struct atmel_mci_host *host = mci_dev->priv;
> +	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
> +
> +	printf("  Bus data width: %d bit\n", host->mci.bus_width);
> +
> +	printf("  Bus frequency: %u Hz\n", host->mci.clock);
> +	printf("  Frequency limits: ");
> +	if (host->mci.f_min == 0)
> +		printf("no lower limit ");
> +	else
> +		printf("%u Hz lower limit ", host->mci.f_min);
> +	if (host->mci.f_max == 0)
> +		printf("- no upper limit");
> +	else
> +		printf("- %u Hz upper limit", host->mci.f_max);
> +
> +	printf("\n  Card detection support: %s\n",
> +		pd->detect_pin != 0 ? "yes" : "no");
> +
> +}
> +#endif /* CONFIG_MCI_INFO */
> +
> +static int mci_probe(struct device_d *hw_dev)
> +{
> +	unsigned long clk_rate;
> +	struct atmel_mci_host *host;
> +	struct atmel_mci_platform_data *pd = hw_dev->platform_data;
> +
> +	if (pd == NULL) {
if (!pd)
> +		dev_err(hw_dev, "missing platform data\n");
> +		return -EINVAL;
> +	}
> +
> +	host = xzalloc(sizeof(*host));
> +	host->mci.send_cmd = mci_request;
> +	host->mci.set_ios = mci_set_ios;
> +	host->mci.init = mci_reset;
> +

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
