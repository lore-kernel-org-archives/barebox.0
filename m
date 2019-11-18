Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWd6Q-0003PV-RH
 for barebox@lists.infradead.org; Mon, 18 Nov 2019 09:13:49 +0000
Date: Mon, 18 Nov 2019 10:13:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191118091343.u5jhzvr36e6qymin@pengutronix.de>
References: <20191116144534.145961-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191116144534.145961-1-dev@lynxeye.de>
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
Subject: Re: [PATCH] mci: add Arasan SDHCI controller driver
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sat, Nov 16, 2019 at 03:45:34PM +0100, Lucas Stach wrote:
> From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> 
> This adds support for the Arasan SDHCI controller, which is found on
> the Xilinx Zynq 7000 and ZynqMP SoCs. This just adds very basic
> PIO read/write support.
> 
> +static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
> +{
> +	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
> +	u16 val;
> +
> +	/* stop clock */
> +	arasan_sdhci_writew(host, SDHCI_CLOCK_CONTROL, 0);
> +
> +	if (ios->clock) {
> +		u64 start;
> +
> +		/* set & start clock */
> +		val = arasan_sdhci_get_clock_divider(host, ios->clock);
> +		/* Bit 6 & 7 are upperbits of 10bit divider */
> +		val = SDHCI_FREQ_SEL(val) | SDHCI_FREQ_SEL_10_BIT(val);
> +		val |= SDHCI_INTCLOCK_EN;
> +		arasan_sdhci_writew(host, SDHCI_CLOCK_CONTROL, val);
> +
> +		start = get_time_ns();
> +		while (!(arasan_sdhci_readw(host, SDHCI_CLOCK_CONTROL) &
> +			SDHCI_INTCLOCK_STABLE)) {
> +			if (is_timeout(start, 20 * MSECOND)) {
> +				dev_err(host->mci.hw_dev,
> +						"SDHCI clock stable timeout\n");
> +				return;
> +			}
> +		}
> +		/* enable bus clock */
> +		arasan_sdhci_writew(host, SDHCI_CLOCK_CONTROL,
> +				    val | SDHCI_SDCLOCK_EN);
> +	}
> +
> +	val = arasan_sdhci_readb(host, SDHCI_HOST_CONTROL) &
> +			~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
> +
> +	switch (ios->bus_width) {
> +	case MMC_BUS_WIDTH_8:
> +		val |= SDHCI_DATA_WIDTH_8BIT;
> +		break;
> +	case MMC_BUS_WIDTH_4:
> +		val |= SDHCI_DATA_WIDTH_4BIT;
> +		break;
> +	}
> +
> +	if (ios->clock > 26000000)
> +		val |= SDHCI_HIGHSPEED_EN;
> +	else
> +		val &= ~SDHCI_HIGHSPEED_EN;
> +
> +	arasan_sdhci_writeb(host, SDHCI_HOST_CONTROL, val);
> +}
> +
> +static int arasan_sdhci_wait_for_done(struct arasan_sdhci_host *host, u32 mask)
> +{
> +	u64 start = get_time_ns();
> +	u16 stat;
> +
> +	do {
> +		stat = arasan_sdhci_readw(host, SDHCI_INT_NORMAL_STATUS);
> +		if (stat & SDHCI_INT_ERROR) {
> +			dev_err(host->mci.hw_dev, "SDHCI_INT_ERROR: 0x%08x\n",
> +				arasan_sdhci_readw(host, SDHCI_INT_ERROR_STATUS));
> +			return -EPERM;
> +		}
> +
> +		if (is_timeout(start, 1000 * MSECOND)) {
> +			dev_err(host->mci.hw_dev,
> +					"SDHCI timeout while waiting for done\n");
> +			return -ETIMEDOUT;
> +		}
> +	} while ((stat & mask) != mask);
> +
> +	return 0;
> +}
> +
> +static void print_error(struct arasan_sdhci_host *host, int cmdidx)
> +{
> +	dev_err(host->mci.hw_dev,
> +		"error while transfering data for command %d\n", cmdidx);
> +	dev_err(host->mci.hw_dev, "state = 0x%08x , interrupt = 0x%08x\n",
> +		arasan_sdhci_readl(host, SDHCI_PRESENT_STATE),
> +		arasan_sdhci_readl(host, SDHCI_INT_NORMAL_STATUS));
> +}
> +
> +static void arasan_sdhci_cmd_done(struct arasan_sdhci_host *host,
> +				  struct mci_cmd *cmd)
> +{
> +	if (cmd->resp_type & MMC_RSP_136) {
> +		int i;
> +
> +		for (i = 0; i < 4; i++) {
> +			cmd->response[i] = arasan_sdhci_readl(host,
> +			SDHCI_RESPONSE_0 + 4 * (3 - i)) << 8;
> +			if (i != 3)
> +				cmd->response[i] |= arasan_sdhci_readb(host,
> +				SDHCI_RESPONSE_0 + 4 * (3 - i) - 1);
> +		}
> +	} else {
> +		cmd->response[0] = arasan_sdhci_readl(host, SDHCI_RESPONSE_0);
> +	}
> +
> +}

We have this function many times now, it's probably time to create a
shared function for this. The i.MX variant with unrolled loop looks imo
better:

	if (cmd->resp_type & MMC_RSP_136) {
		u32 cmdrsp3, cmdrsp2, cmdrsp1, cmdrsp0;

		cmdrsp3 = esdhc_read32(host, SDHCI_RESPONSE_3);
		cmdrsp2 = esdhc_read32(host, SDHCI_RESPONSE_2);
		cmdrsp1 = esdhc_read32(host, SDHCI_RESPONSE_1);
		cmdrsp0 = esdhc_read32(host, SDHCI_RESPONSE_0);
		cmd->response[0] = (cmdrsp3 << 8) | (cmdrsp2 >> 24);
		cmd->response[1] = (cmdrsp2 << 8) | (cmdrsp1 >> 24);
		cmd->response[2] = (cmdrsp1 << 8) | (cmdrsp0 >> 24);
		cmd->response[3] = (cmdrsp0 << 8);
	} else
		cmd->response[0] = esdhc_read32(host, SDHCI_RESPONSE_0);


> +
> +static void set_tranfer_mode(struct arasan_sdhci_host *host,
> +			     struct mci_data *data)

s/tranfer/tansfer/

> +{
> +	u16 transfer_mode = 0;
> +
> +	if(!data)
> +		goto out;
> +
> +	transfer_mode = SDHCI_BLOCK_COUNT_EN;
> +
> +	if (data->flags & MMC_DATA_READ)
> +		transfer_mode |= SDHCI_DATA_TO_HOST;
> +	if (data->blocks > 1)
> +		transfer_mode |= SDHCI_MULTIPLE_BLOCKS;
> +
> +	arasan_sdhci_writew(host, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
> +			    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
> +	arasan_sdhci_writew(host, SDHCI_BLOCK_COUNT, data->blocks);
> +
> +out:
> +	arasan_sdhci_writew(host, SDHCI_TRANSFER_MODE, transfer_mode);
> +}
> +
> +static void arasan_sdhci_transfer_pio(struct arasan_sdhci_host *host,
> +				      struct mci_data *data, unsigned int block,
> +				      bool is_read)
> +{
> +	u32 *buf = is_read ? (u32 *)data->dest : (u32 *)data->src;
> +	int i;
> +
> +	buf += (block * data->blocksize / sizeof(u32));
> +
> +	for (i = 0; i < data->blocksize; i += 4, buf++) {
> +		if (is_read)
> +			*buf = arasan_sdhci_readl(host, SDHCI_BUFFER);
> +		else
> +			arasan_sdhci_writel(host, SDHCI_BUFFER, *buf);
> +	}
> +}

Better split in two functions. This also prevents you from casting away the
'const' from data->src.

Given that buf is a u32* I think the following is better readable:

	for (i = 0; i < data->blocksize / sizeof(u32); i++)
		buf[i] = arasan_sdhci_readl(host, SDHCI_BUFFER);

> +
> +static int arasan_sdhci_tranfer_data(struct arasan_sdhci_host *host,
> +				     struct mci_data *data)
> +{
> +	unsigned int transfer_done = 0, block = 0, timeout = 1000000;
> +	u16 stat;
> +
> +	do {
> +		stat = arasan_sdhci_readl(host, SDHCI_INT_STATUS);
> +		if (stat & SDHCI_INT_ERROR)
> +			return -EIO;
> +
> +		if (!transfer_done && (stat & (BIT(4) | BIT(5)))) {

These bits match the SDHC spec for BUFFER_READ_READY and
BUFFER_WRITE_READY. Please add the defines to sdhci.h and use them.

> +			if (!(arasan_sdhci_readl(host, SDHCI_PRESENT_STATE) &
> +			     (BIT(10) | BIT(11))))
> +				continue;

We already have defines for these (PRSSTAT_BWEN and PRSSTAT_BREN).
Please use them.

> +			arasan_sdhci_writel(host, SDHCI_INT_STATUS, BIT(4) | BIT(5));
> +			arasan_sdhci_transfer_pio(host, data, block,
> +					!!(data->flags & MMC_DATA_READ));
> +
> +			if (++block >= data->blocks) {
> +				/* Keep looping until the SDHCI_INT_DATA_END is

s/SDHCI_INT_DATA_END/SDHCI_INT_XFER_COMPLETE/

> +				 * cleared, even if we finished sending all the
> +				 * blocks.
> +				 */
> +				transfer_done = 1;
> +				continue;

This continue is not necessary here. All it does is to bypass the
timeout check for this iteration of the loop.

> +			}
> +		}
> +
> +		if (timeout-- > 0)
> +			udelay(10);
> +		else
> +			return -ETIMEDOUT;

		if (is_timeout(start, 10 * SECOND))
			return -ETIMEDOUT
> +
> +	} while (!(stat & SDHCI_INT_XFER_COMPLETE));
> +
> +	return 0;
> +}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
