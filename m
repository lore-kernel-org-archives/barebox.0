Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0vk-0002Yn-59
 for barebox@lists.infradead.org; Mon, 29 Apr 2019 07:42:30 +0000
Date: Mon, 29 Apr 2019 09:42:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190429074226.ifnrbt5djxzolhpo@pengutronix.de>
References: <20190427183627.22549-1-l.stach@pengutronix.de>
 <20190427183627.22549-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190427183627.22549-2-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/4] mci: add driver for BCM283x sdhost core
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Apr 27, 2019 at 08:36:24PM +0200, Lucas Stach wrote:
> The sdhost is a simple MMC controller found on the Broadcom
> BCM283x line of SoCs. The driver code was ported from U-Boot
> and then simplified a bit, by dropping a lot of the state
> tracking.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/mci/Kconfig          |   4 +
>  drivers/mci/Makefile         |   1 +
>  drivers/mci/bcm2835-sdhost.c | 657 +++++++++++++++++++++++++++++++++++
>  3 files changed, 662 insertions(+)
>  create mode 100644 drivers/mci/bcm2835-sdhost.c
> 
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 911cc0cb1e..08c8c84e8c 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -66,6 +66,10 @@ config MCI_BCM283X
>  	bool "MCI support for BCM283X"
>  	depends on ARCH_BCM283X
>  
> +config MCI_BCM283X_SDHOST
> +	bool "BCM283X sdhost"
> +	depends on ARCH_BCM283X
> +
>  config MCI_DOVE
>  	bool "Marvell Dove SDHCI"
>  	depends on ARCH_DOVE
> diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
> index f6214c0cbb..25a1d073dc 100644
> --- a/drivers/mci/Makefile
> +++ b/drivers/mci/Makefile
> @@ -1,6 +1,7 @@
>  obj-$(CONFIG_MCI)		+= mci-core.o
>  obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o
>  obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
> +obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
>  obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
>  obj-$(CONFIG_MCI_IMX)		+= imx.o
>  obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o
> diff --git a/drivers/mci/bcm2835-sdhost.c b/drivers/mci/bcm2835-sdhost.c
> new file mode 100644
> index 0000000000..bad155e07d
> --- /dev/null
> +++ b/drivers/mci/bcm2835-sdhost.c
> @@ -0,0 +1,657 @@
> +#define to_bcm2835_host(mci) container_of(mci, struct bcm2835_host, mci)

A static inline function is nicer here. It makes the expected types
clear.

> +static int bcm2835_transfer_block_pio(struct bcm2835_host *host,
> +				      struct mci_data *data, bool is_read)
> +{
> +	size_t blksize = data->blocksize;
> +	int copy_words;
> +	u32 hsts = 0;
> +	u32 *buf;
> +
> +	if (blksize % sizeof(u32))
> +		return -EINVAL;
> +
> +	buf = is_read ? (u32 *)data->dest : (u32 *)data->src;

Use a const * for the write case?

> +
> +	if (is_read)
> +		data->dest += blksize;
> +	else
> +		data->src += blksize;

I think data->dest and data->src shouldn't be changed by a driver.

> +
> +	copy_words = blksize / sizeof(u32);
> +
> +	/*
> +	 * Copy all contents from/to the FIFO as far as it reaches,
> +	 * then wait for it to fill/empty again and rewind.
> +	 */
> +	while (copy_words) {
> +		int burst_words, words;
> +		u32 edm;
> +
> +		burst_words = min(SDDATA_FIFO_PIO_BURST, copy_words);
> +		edm = readl(host->regs + SDEDM);
> +		if (is_read)
> +			words = edm_fifo_fill(edm);
> +		else
> +			words = SDDATA_FIFO_WORDS - edm_fifo_fill(edm);
> +
> +		if (words < burst_words) {
> +			int fsm_state = (edm & SDEDM_FSM_MASK);
> +
> +			if ((is_read &&
> +			     (fsm_state != SDEDM_FSM_READDATA &&
> +			      fsm_state != SDEDM_FSM_READWAIT &&
> +			      fsm_state != SDEDM_FSM_READCRC)) ||
> +			    (!is_read &&
> +			     (fsm_state != SDEDM_FSM_WRITEDATA &&
> +			      fsm_state != SDEDM_FSM_WRITEWAIT1 &&
> +			      fsm_state != SDEDM_FSM_WRITEWAIT2 &&
> +			      fsm_state != SDEDM_FSM_WRITECRC &&
> +			      fsm_state != SDEDM_FSM_WRITESTART1 &&
> +			      fsm_state != SDEDM_FSM_WRITESTART2))) {
> +				hsts = readl(host->regs + SDHSTS);
> +				printf("fsm %x, hsts %08x\n", fsm_state, hsts);
> +				if (hsts & SDHSTS_ERROR_MASK)
> +					break;
> +			}
> +
> +			continue;
> +		} else if (words > copy_words) {
> +			words = copy_words;
> +		}

This code waits until the FIFO is filled to a certain amount and then
reads/writes this amount of data. This resembles what a DMA engine would
do, but as this is PIO wouldn't it be possible to just read once a word
is available and write once space for a word is available?

> +
> +		copy_words -= words;
> +
> +		/* Copy current chunk to/from the FIFO */
> +		while (words) {
> +			if (is_read)
> +				*(buf++) = readl(host->regs + SDDATA);
> +			else
> +				writel(*(buf++), host->regs + SDDATA);
> +			words--;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int bcm2835_transfer_pio(struct bcm2835_host *host,
> +				struct mci_data *data)
> +{
> +	u32 sdhsts;
> +	bool is_read = !!(data->flags & MMC_DATA_READ);
> +	int ret = 0;
> +
> +	ret = bcm2835_transfer_block_pio(host, data, is_read);
> +	if (ret)
> +		return ret;
> +
> +	sdhsts = readl(host->regs + SDHSTS);
> +	if (sdhsts & (SDHSTS_CRC16_ERROR |
> +		      SDHSTS_CRC7_ERROR |
> +		      SDHSTS_FIFO_ERROR)) {
> +		printf("%s transfer error - HSTS %08x\n",
> +		       is_read ? "read" : "write", sdhsts);

please use dev_* functions consistently.

> +		ret =  -EILSEQ;
> +	} else if ((sdhsts & (SDHSTS_CMD_TIME_OUT |
> +			      SDHSTS_REW_TIME_OUT))) {
> +		printf("%s timeout error - HSTS %08x\n",
> +		       is_read ? "read" : "write", sdhsts);
> +		ret = -ETIMEDOUT;
> +	}
> +
> +	return ret;
> +}
> +
> +static u32 bcm2835_read_wait_sdcmd(struct bcm2835_host *host)
> +{
> +	u32 value;
> +	int ret;
> +	int timeout_us = SDHST_TIMEOUT_MAX_USEC;
> +
> +	ret = readl_poll_timeout(host->regs + SDCMD, value,
> +				 !(value & SDCMD_NEW_FLAG), timeout_us);
> +	if (ret == -ETIMEDOUT)
> +		printf("%s: timeout (%d us)\n", __func__, timeout_us);
> +
> +	return value;
> +}
> +
> +static int bcm2835_send_command(struct bcm2835_host *host, struct mci_cmd *cmd,
> +				struct mci_data *data)
> +{
> +	u32 sdcmd, sdhsts;
> +
> +	if ((cmd->resp_type & MMC_RSP_136) && (cmd->resp_type & MMC_RSP_BUSY)) {
> +		printf("unsupported response type!\n");
> +		return -EINVAL;
> +	}
> +
> +	sdcmd = bcm2835_read_wait_sdcmd(host);
> +	if (sdcmd & SDCMD_NEW_FLAG) {
> +		printf("previous command never completed.\n");
> +		return -EBUSY;
> +	}
> +
> +	/* Clear any error flags */
> +	sdhsts = readl(host->regs + SDHSTS);
> +	if (sdhsts & SDHSTS_ERROR_MASK)
> +		writel(sdhsts, host->regs + SDHSTS);
> +
> +	if (data) {
> +		writel(data->blocksize, host->regs + SDHBCT);
> +		writel(data->blocks, host->regs + SDHBLC);
> +	}
> +
> +	writel(cmd->cmdarg, host->regs + SDARG);
> +
> +	sdcmd = cmd->cmdidx & SDCMD_CMD_MASK;
> +
> +	if (!(cmd->resp_type & MMC_RSP_PRESENT)) {
> +		sdcmd |= SDCMD_NO_RESPONSE;
> +	} else {
> +		if (cmd->resp_type & MMC_RSP_136)
> +			sdcmd |= SDCMD_LONG_RESPONSE;
> +		if (cmd->resp_type & MMC_RSP_BUSY) {
> +			sdcmd |= SDCMD_BUSYWAIT;
> +		}
> +	}
> +
> +	if (data) {
> +		if (data->flags & MMC_DATA_WRITE)
> +			sdcmd |= SDCMD_WRITE_CMD;
> +		if (data->flags & MMC_DATA_READ)
> +			sdcmd |= SDCMD_READ_CMD;
> +	}
> +
> +	writel(sdcmd | SDCMD_NEW_FLAG, host->regs + SDCMD);
> +
> +	return 0;
> +}
> +
> +static int bcm2835_finish_command(struct bcm2835_host *host,
> +				  struct mci_cmd *cmd)
> +{
> +	u32 sdcmd;
> +	int ret = 0;
> +
> +	sdcmd = bcm2835_read_wait_sdcmd(host);
> +
> +	/* Check for errors */
> +	if (sdcmd & SDCMD_NEW_FLAG) {
> +		printf("command never completed.\n");
> +		return -EIO;
> +	} else if (sdcmd & SDCMD_FAIL_FLAG) {

The 'else' is unnecessary here.

> +		u32 sdhsts = readl(host->regs + SDHSTS);
> +
> +		/* Clear the errors */
> +		writel(SDHSTS_ERROR_MASK, host->regs + SDHSTS);
> +
> +		if (!(sdhsts & SDHSTS_CRC7_ERROR) ||
> +		    (cmd->cmdidx != MMC_CMD_SEND_OP_COND)) {
> +			if (sdhsts & SDHSTS_CMD_TIME_OUT) {
> +				ret = -ETIMEDOUT;
> +			} else {
> +				printf("unexpected command %d error\n",
> +				       cmd->cmdidx);
> +				ret = -EILSEQ;
> +			}
> +
> +			return ret;
> +		}
> +	}
> +
> +	if (cmd->resp_type & MMC_RSP_PRESENT) {
> +		if (cmd->resp_type & MMC_RSP_136) {
> +			int i;
> +
> +			for (i = 0; i < 4; i++) {
> +				cmd->response[3 - i] =
> +					readl(host->regs + SDRSP0 + i * 4);
> +			}
> +		} else {
> +			cmd->response[0] = readl(host->regs + SDRSP0);
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int bcm2835_check_cmd_error(struct bcm2835_host *host, u32 intmask)
> +{
> +	int ret = -EINVAL;
> +
> +	if (!(intmask & SDHSTS_ERROR_MASK))
> +		return 0;
> +
> +	printf("sdhost_busy_irq: intmask %08x\n", intmask);
> +	if (intmask & SDHSTS_CRC7_ERROR) {
> +		ret = -EILSEQ;
> +	} else if (intmask & (SDHSTS_CRC16_ERROR |
> +			      SDHSTS_FIFO_ERROR)) {
> +		ret = -EILSEQ;
> +	} else if (intmask & (SDHSTS_REW_TIME_OUT | SDHSTS_CMD_TIME_OUT)) {
> +		ret = -ETIMEDOUT;
> +	}
> +
> +	return ret;
> +}
> +
> +static int bcm2835_check_data_error(struct bcm2835_host *host, u32 intmask)
> +{
> +	int ret = 0;
> +
> +	if (intmask & (SDHSTS_CRC16_ERROR | SDHSTS_FIFO_ERROR))
> +		ret = -EILSEQ;
> +	if (intmask & SDHSTS_REW_TIME_OUT)
> +		ret = -ETIMEDOUT;
> +
> +	if (ret)
> +		printf("%s:%d %d\n", __func__, __LINE__, ret);
> +
> +	return ret;
> +}
> +
> +static int bcm2835_transmit(struct bcm2835_host *host, struct mci_cmd *cmd,
> +			    struct mci_data *data)
> +{
> +	u32 intmask = readl(host->regs + SDHSTS);
> +	int ret;
> +
> +	/* Check for errors */
> +	if (data) {
> +		ret = bcm2835_check_data_error(host, intmask);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret = bcm2835_check_cmd_error(host, intmask);
> +	if (ret)
> +		return ret;
> +
> +	/* Handle wait for busy end */
> +	if ((cmd && (cmd->resp_type & MMC_RSP_BUSY)) &&
> +	    (intmask & SDHSTS_BUSY_IRPT)) {
> +		writel(SDHSTS_BUSY_IRPT, host->regs + SDHSTS);
> +		bcm2835_finish_command(host, cmd);
> +	}
> +
> +	/* Handle PIO data transfer */
> +	while (data && data->blocks) {
> +		ret = bcm2835_transfer_pio(host, data);
> +		if (ret)
> +			break;
> +		data->blocks--;
> +	}
> +
> +	/* Transfer successful: wait for command to complete for real */
> +	if (!ret)
> +		ret = bcm2835_wait_transfer_complete(host);
> +
> +	return ret;
> +}
> +
> +static void bcm2835_set_clock(struct bcm2835_host *host, unsigned int clock)
> +{
> +	int div;
> +
> +	/* The SDCDIV register has 11 bits, and holds (div - 2).  But
> +	 * in data mode the max is 50MHz wihout a minimum, and only

s/wihout/without/

> +	 * the bottom 3 bits are used. Since the switch over is
> +	 * automatic (unless we have marked the card as slow...),
> +	 * chosen values have to make sense in both modes.  Ident mode
> +	 * must be 100-400KHz, so can range check the requested
> +	 * clock. CMD15 must be used to return to data mode, so this
> +	 * can be monitored.
> +	 *
> +	 * clock 250MHz -> 0->125MHz, 1->83.3MHz, 2->62.5MHz, 3->50.0MHz
> +	 *                 4->41.7MHz, 5->35.7MHz, 6->31.3MHz, 7->27.8MHz
> +	 *
> +	 *		 623->400KHz/27.8MHz
> +	 *		 reset value (507)->491159/50MHz
> +	 *
> +	 * BUT, the 3-bit clock divisor in data mode is too small if
> +	 * the core clock is higher than 250MHz, so instead use the
> +	 * SLOW_CARD configuration bit to force the use of the ident
> +	 * clock divisor at all times.
> +	 */
> +
> +	if (clock < 100000) {
> +		/* Can't stop the clock, but make it as slow as possible
> +		 * to show willing
> +		 */
> +		writel(SDCDIV_MAX_CDIV, host->regs + SDCDIV);
> +		return;
> +	}
> +
> +	div = host->mci.f_max / clock;
> +	if (div < 2)
> +		div = 2;
> +	if ((host->mci.f_max / div) > clock)
> +		div++;
> +	div -= 2;
> +
> +	if (div > SDCDIV_MAX_CDIV)
> +		div = SDCDIV_MAX_CDIV;
> +
> +	clock = host->mci.f_max / (div + 2);
> +
> +	writel(div, host->regs + SDCDIV);
> +
> +	/* Set the timeout to 500ms */
> +	writel(clock / 2, host->regs + SDTOUT);
> +}
> +
> +static int bcm2835_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
> +			    struct mci_data *data)
> +{
> +	struct bcm2835_host *host = to_bcm2835_host(mci);
> +	u32 edm, fsm;
> +	int ret = 0;
> +
> +	if (data && !is_power_of_2(data->blocksize)) {
> +		printf("unsupported block size (%d bytes)\n", data->blocksize);
> +
> +		if (cmd)
> +			return -EINVAL;

cmd is never NULL here. Please drop all the tests.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
