Delivery-date: Fri, 29 Apr 2022 09:10:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKlW-001kdu-Vk
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 09:10:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKlT-0006Nt-Ad
	for lore@pengutronix.de; Fri, 29 Apr 2022 09:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+vcz+SlpS+KcbAfw+9w1amYxCICHfTvMyft+Hkvee3E=; b=FVCX0kqwoNDqDiYn7TLN0vTo6j
	HlGrOt6ft4k/4uVVpxdAarZ3WS3kEnOJvEAzOnp4rx1Jlv5Y0VlpSb96vAlyES/Z31eQu4dfeO9yz
	6b6+SqasfZjjE9xCSM+gf95Up9WfOHygoy4yBwW3rZGtrUhD2JpYLYyGIqfMjWWAloBQlc21erjuh
	4GpRpaTfIPsBYLpT7o3NP7eF9F7PztqYID6ZNcKvACiR/9xGJE1KR1xe/YkAmrtYR+0WkEXLweHVb
	9ARhYKtqJ2+kqwB4fcye0B/rWbxLWh8VKESkOPf2egPBYxT+3YxRCOZY8xao6Ita5jTMIc67L+Eij
	XZimwiQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkKjn-009vFh-SE; Fri, 29 Apr 2022 07:08:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkKjh-009vDv-RV
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 07:08:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKjc-0006EL-Ho; Fri, 29 Apr 2022 09:08:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKjb-0003ji-UR; Fri, 29 Apr 2022 09:08:11 +0200
Date: Fri, 29 Apr 2022 09:08:11 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220429070811.GM4012@pengutronix.de>
References: <20220426064604.422292-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426064604.422292-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:08:02 up 29 days, 19:37, 77 users,  load average: 0.07, 0.27, 0.28
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_000818_270229_2358FEAD 
X-CRM114-Status: GOOD (  41.55  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] spi: Port SiFive SPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 26, 2022 at 08:46:03AM +0200, Ahmad Fatoum wrote:
> Import the U-Boot v2022.04-rc2 driver to enable access to SPI flash and
> SD over SPI on the HiFive Unleashed. Tested with QEMU.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> v1 -> v2:
>   - remove unused wait_for_bit (Sascha)
>   - move prep and CS handling out of transfer_one into callers (Sascha)
>   - Use nbytes instead of bitlen as code is bytewise anyway (Sascha)
>   - remove superfluous pos variable (Sascha)
> ---
>  drivers/spi/Kconfig      |   6 +
>  drivers/spi/Makefile     |   1 +
>  drivers/spi/spi-sifive.c | 521 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 528 insertions(+)
>  create mode 100644 drivers/spi/spi-sifive.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 7df7561718c2..8935feb97b99 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -124,6 +124,12 @@ config SPI_NXP_FLEXSPI
>  	  This controller does not support generic SPI messages and only
>  	  supports the high-level SPI memory interface.
>  
> +config SPI_SIFIVE
> +	tristate "SiFive SPI controller"
> +	depends on SOC_SIFIVE || COMPILE_TEST
> +	help
> +	  This exposes the SPI controller IP from SiFive.
> +
>  endif
>  
>  endmenu
> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> index 64c8e2645a94..3455eea86988 100644
> --- a/drivers/spi/Makefile
> +++ b/drivers/spi/Makefile
> @@ -17,3 +17,4 @@ obj-$(CONFIG_DRIVER_SPI_DSPI) += dspi_spi.o
>  obj-$(CONFIG_SPI_ZYNQ_QSPI) += zynq_qspi.o
>  obj-$(CONFIG_SPI_NXP_FLEXSPI) += spi-nxp-fspi.o
>  obj-$(CONFIG_DRIVER_SPI_STM32) += stm32_spi.o
> +obj-$(CONFIG_SPI_SIFIVE) += spi-sifive.o
> diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
> new file mode 100644
> index 000000000000..713bcc0c3bd8
> --- /dev/null
> +++ b/drivers/spi/spi-sifive.c
> @@ -0,0 +1,521 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2018 SiFive, Inc.
> + * Copyright 2019 Bhargav Shah <bhargavshah1988@gmail.com>
> + *
> + * SiFive SPI controller driver (master mode only)
> + */
> +
> +#include <common.h>
> +#include <linux/clk.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <errno.h>
> +#include <linux/reset.h>
> +#include <spi/spi.h>
> +#include <linux/spi/spi-mem.h>
> +#include <linux/bitops.h>
> +#include <clock.h>
> +#include <gpio.h>
> +#include <of_gpio.h>
> +#include <linux/bitfield.h>
> +#include <linux/iopoll.h>
> +#include <linux/log2.h>
> +
> +#define SIFIVE_SPI_MAX_CS		32
> +
> +#define SIFIVE_SPI_DEFAULT_DEPTH	8
> +#define SIFIVE_SPI_DEFAULT_BITS		8
> +
> +/* register offsets */
> +#define SIFIVE_SPI_REG_SCKDIV            0x00 /* Serial clock divisor */
> +#define SIFIVE_SPI_REG_SCKMODE           0x04 /* Serial clock mode */
> +#define SIFIVE_SPI_REG_CSID              0x10 /* Chip select ID */
> +#define SIFIVE_SPI_REG_CSDEF             0x14 /* Chip select default */
> +#define SIFIVE_SPI_REG_CSMODE            0x18 /* Chip select mode */
> +#define SIFIVE_SPI_REG_DELAY0            0x28 /* Delay control 0 */
> +#define SIFIVE_SPI_REG_DELAY1            0x2c /* Delay control 1 */
> +#define SIFIVE_SPI_REG_FMT               0x40 /* Frame format */
> +#define SIFIVE_SPI_REG_TXDATA            0x48 /* Tx FIFO data */
> +#define SIFIVE_SPI_REG_RXDATA            0x4c /* Rx FIFO data */
> +#define SIFIVE_SPI_REG_TXMARK            0x50 /* Tx FIFO watermark */
> +#define SIFIVE_SPI_REG_RXMARK            0x54 /* Rx FIFO watermark */
> +#define SIFIVE_SPI_REG_FCTRL             0x60 /* SPI flash interface control */
> +#define SIFIVE_SPI_REG_FFMT              0x64 /* SPI flash instruction format */
> +#define SIFIVE_SPI_REG_IE                0x70 /* Interrupt Enable Register */
> +#define SIFIVE_SPI_REG_IP                0x74 /* Interrupt Pendings Register */
> +
> +/* sckdiv bits */
> +#define SIFIVE_SPI_SCKDIV_DIV_MASK       0xfffU
> +
> +/* sckmode bits */
> +#define SIFIVE_SPI_SCKMODE_PHA           BIT(0)
> +#define SIFIVE_SPI_SCKMODE_POL           BIT(1)
> +#define SIFIVE_SPI_SCKMODE_MODE_MASK     (SIFIVE_SPI_SCKMODE_PHA | \
> +					  SIFIVE_SPI_SCKMODE_POL)
> +
> +/* csmode bits */
> +#define SIFIVE_SPI_CSMODE_MODE_AUTO      0U
> +#define SIFIVE_SPI_CSMODE_MODE_HOLD      2U
> +#define SIFIVE_SPI_CSMODE_MODE_OFF       3U
> +
> +/* delay0 bits */
> +#define SIFIVE_SPI_DELAY0_CSSCK(x)       ((u32)(x))
> +#define SIFIVE_SPI_DELAY0_CSSCK_MASK     0xffU
> +#define SIFIVE_SPI_DELAY0_SCKCS(x)       ((u32)(x) << 16)
> +#define SIFIVE_SPI_DELAY0_SCKCS_MASK     (0xffU << 16)
> +
> +/* delay1 bits */
> +#define SIFIVE_SPI_DELAY1_INTERCS(x)     ((u32)(x))
> +#define SIFIVE_SPI_DELAY1_INTERCS_MASK   0xffU
> +#define SIFIVE_SPI_DELAY1_INTERXFR(x)    ((u32)(x) << 16)
> +#define SIFIVE_SPI_DELAY1_INTERXFR_MASK  (0xffU << 16)
> +
> +/* fmt bits */
> +#define SIFIVE_SPI_FMT_PROTO_SINGLE      0U
> +#define SIFIVE_SPI_FMT_PROTO_DUAL        1U
> +#define SIFIVE_SPI_FMT_PROTO_QUAD        2U
> +#define SIFIVE_SPI_FMT_PROTO_MASK        3U
> +#define SIFIVE_SPI_FMT_ENDIAN            BIT(2)
> +#define SIFIVE_SPI_FMT_DIR               BIT(3)
> +#define SIFIVE_SPI_FMT_LEN(x)            ((u32)(x) << 16)
> +#define SIFIVE_SPI_FMT_LEN_MASK          (0xfU << 16)
> +
> +/* txdata bits */
> +#define SIFIVE_SPI_TXDATA_DATA_MASK      0xffU
> +#define SIFIVE_SPI_TXDATA_FULL           BIT(31)
> +
> +/* rxdata bits */
> +#define SIFIVE_SPI_RXDATA_DATA_MASK      0xffU
> +#define SIFIVE_SPI_RXDATA_EMPTY          BIT(31)
> +
> +/* ie and ip bits */
> +#define SIFIVE_SPI_IP_TXWM               BIT(0)
> +#define SIFIVE_SPI_IP_RXWM               BIT(1)
> +
> +/* format protocol */
> +#define SIFIVE_SPI_PROTO_QUAD		4 /* 4 lines I/O protocol transfer */
> +#define SIFIVE_SPI_PROTO_DUAL		2 /* 2 lines I/O protocol transfer */
> +#define SIFIVE_SPI_PROTO_SINGLE		1 /* 1 line I/O protocol transfer */
> +
> +#define SPI_XFER_BEGIN  0x01                    /* Assert CS before transfer */
> +#define SPI_XFER_END    0x02                    /* Deassert CS after transfer */
> +
> +struct sifive_spi {
> +	struct spi_controller ctlr;
> +	void __iomem	*regs;		/* base address of the registers */
> +	u32		fifo_depth;
> +	u32		bits_per_word;
> +	u32		cs_inactive;	/* Level of the CS pins when inactive*/
> +	u32		freq;
> +	u8		fmt_proto;
> +};
> +
> +static inline struct sifive_spi *to_sifive_spi(struct spi_controller *ctlr)
> +{
> +	return container_of(ctlr, struct sifive_spi, ctlr);
> +}
> +
> +static void sifive_spi_prep_device(struct sifive_spi *spi,
> +				   struct spi_device *spi_dev)
> +{
> +	/* Update the chip select polarity */
> +	if (spi_dev->mode & SPI_CS_HIGH)
> +		spi->cs_inactive &= ~BIT(spi_dev->chip_select);
> +	else
> +		spi->cs_inactive |= BIT(spi_dev->chip_select);
> +	writel(spi->cs_inactive, spi->regs + SIFIVE_SPI_REG_CSDEF);
> +
> +	/* Select the correct device */
> +	writel(spi_dev->chip_select, spi->regs + SIFIVE_SPI_REG_CSID);
> +}
> +
> +static void sifive_spi_set_cs(struct sifive_spi *spi,
> +			     struct spi_device *spi_dev)
> +{
> +	u32 cs_mode = SIFIVE_SPI_CSMODE_MODE_HOLD;
> +
> +	if (spi_dev->mode & SPI_CS_HIGH)
> +		cs_mode = SIFIVE_SPI_CSMODE_MODE_AUTO;
> +
> +	writel(cs_mode, spi->regs + SIFIVE_SPI_REG_CSMODE);
> +}
> +
> +static void sifive_spi_clear_cs(struct sifive_spi *spi)
> +{
> +	writel(SIFIVE_SPI_CSMODE_MODE_AUTO, spi->regs + SIFIVE_SPI_REG_CSMODE);
> +}
> +
> +static void sifive_spi_prep_transfer(struct sifive_spi *spi,
> +				     struct spi_device *spi_dev,
> +				     u8 *rx_ptr)
> +{
> +	u32 cr;
> +
> +	/* Modify the SPI protocol mode */
> +	cr = readl(spi->regs + SIFIVE_SPI_REG_FMT);
> +
> +	/* Bits per word ? */
> +	cr &= ~SIFIVE_SPI_FMT_LEN_MASK;
> +	cr |= SIFIVE_SPI_FMT_LEN(spi->bits_per_word);
> +
> +	/* LSB first? */
> +	cr &= ~SIFIVE_SPI_FMT_ENDIAN;
> +	if (spi_dev->mode & SPI_LSB_FIRST)
> +		cr |= SIFIVE_SPI_FMT_ENDIAN;
> +
> +	/* Number of wires ? */
> +	cr &= ~SIFIVE_SPI_FMT_PROTO_MASK;
> +	switch (spi->fmt_proto) {
> +	case SIFIVE_SPI_PROTO_QUAD:
> +		cr |= SIFIVE_SPI_FMT_PROTO_QUAD;
> +		break;
> +	case SIFIVE_SPI_PROTO_DUAL:
> +		cr |= SIFIVE_SPI_FMT_PROTO_DUAL;
> +		break;
> +	default:
> +		cr |= SIFIVE_SPI_FMT_PROTO_SINGLE;
> +		break;
> +	}
> +
> +	/* SPI direction in/out ? */
> +	cr &= ~SIFIVE_SPI_FMT_DIR;
> +	if (!rx_ptr)
> +		cr |= SIFIVE_SPI_FMT_DIR;
> +
> +	writel(cr, spi->regs + SIFIVE_SPI_REG_FMT);
> +}
> +
> +static void sifive_spi_rx(struct sifive_spi *spi, u8 *rx_ptr)
> +{
> +	u32 data;
> +
> +	do {
> +		data = readl(spi->regs + SIFIVE_SPI_REG_RXDATA);
> +	} while (data & SIFIVE_SPI_RXDATA_EMPTY);
> +
> +	if (rx_ptr)
> +		*rx_ptr = data & SIFIVE_SPI_RXDATA_DATA_MASK;
> +}
> +
> +static void sifive_spi_tx(struct sifive_spi *spi, const u8 *tx_ptr)
> +{
> +	u32 data;
> +	u8 tx_data = (tx_ptr) ? *tx_ptr & SIFIVE_SPI_TXDATA_DATA_MASK :
> +				SIFIVE_SPI_TXDATA_DATA_MASK;
> +
> +	do {
> +		data = readl(spi->regs + SIFIVE_SPI_REG_TXDATA);
> +	} while (data & SIFIVE_SPI_TXDATA_FULL);
> +
> +	writel(tx_data, spi->regs + SIFIVE_SPI_REG_TXDATA);
> +}
> +
> +static int sifive_spi_wait(struct sifive_spi *spi, u32 mask)
> +{
> +	u32 val;
> +
> +	return readl_poll_timeout(spi->regs + SIFIVE_SPI_REG_IP, val,
> +				  (val & mask) == mask, 100 * USEC_PER_MSEC);
> +}
> +
> +static int sifive_spi_transfer_one(struct spi_device *spi_dev, unsigned int nbytes,
> +				   const void *dout, void *din)
> +{
> +	struct sifive_spi *spi = to_sifive_spi(spi_dev->controller);
> +	const u8 *tx_ptr = dout;
> +	u8 *rx_ptr = din;
> +	int ret;
> +
> +	sifive_spi_prep_transfer(spi, spi_dev, rx_ptr);
> +
> +	while (nbytes) {
> +		unsigned int n_words = min(nbytes, spi->fifo_depth);
> +		unsigned int tx_words, rx_words;
> +
> +		/* Enqueue n_words for transmission */
> +		for (tx_words = 0; tx_words < n_words; tx_words++) {
> +			if (!tx_ptr)
> +				sifive_spi_tx(spi, NULL);
> +			else
> +				sifive_spi_tx(spi, tx_ptr++);
> +		}
> +
> +		if (rx_ptr) {
> +			/* Wait for transmission + reception to complete */
> +			writel(n_words - 1, spi->regs + SIFIVE_SPI_REG_RXMARK);
> +			ret = sifive_spi_wait(spi, SIFIVE_SPI_IP_RXWM);
> +			if (ret)
> +				return ret;
> +
> +			/* Read out all the data from the RX FIFO */
> +			for (rx_words = 0; rx_words < n_words; rx_words++)
> +				sifive_spi_rx(spi, rx_ptr++);
> +		} else {
> +			/* Wait for transmission to complete */
> +			ret = sifive_spi_wait(spi, SIFIVE_SPI_IP_TXWM);
> +			if (ret)
> +				return ret;
> +		}
> +
> +		nbytes -= n_words;
> +	}
> +
> +	return 0;
> +}
> +
> +static int sifive_spi_transfer(struct spi_device *spi_dev, struct spi_message *msg)
> +{
> +	struct spi_controller *ctlr = spi_dev->controller;
> +	struct sifive_spi *spi = to_sifive_spi(ctlr);
> +	struct spi_transfer *t;
> +	int ret = 0;
> +
> +	if (list_empty(&msg->transfers))
> +		return 0;
> +
> +	msg->actual_length = 0;
> +
> +	sifive_spi_prep_device(spi, spi_dev);
> +	sifive_spi_set_cs(spi, spi_dev);
> +
> +	dev_dbg(ctlr->dev, "transfer start actual_length=%i\n", msg->actual_length);
> +	list_for_each_entry(t, &msg->transfers, transfer_list) {
> +		dev_dbg(ctlr->dev, "  xfer %p: len %u tx %p rx %p\n",
> +			t, t->len, t->tx_buf, t->rx_buf);
> +
> +		ret = sifive_spi_transfer_one(spi_dev, t->len,
> +					      t->tx_buf, t->rx_buf);
> +		if (ret < 0)
> +			goto out;
> +		msg->actual_length += t->len;
> +	}
> +	dev_dbg(ctlr->dev, "transfer done actual_length=%i\n", msg->actual_length);
> +
> +out:
> +	sifive_spi_clear_cs(spi);
> +	return ret;
> +}
> +
> +static int sifive_spi_exec_op(struct spi_mem *mem,
> +			      const struct spi_mem_op *op)
> +{
> +	struct spi_device *spi_dev = mem->spi;
> +	struct device_d *dev = &spi_dev->dev;
> +	struct sifive_spi *spi = spi_controller_get_devdata(spi_dev->controller);
> +	u8 opcode = op->cmd.opcode;
> +	int ret;
> +
> +	spi->fmt_proto = op->cmd.buswidth;
> +
> +	sifive_spi_prep_device(spi, spi_dev);
> +	sifive_spi_set_cs(spi, spi_dev);
> +
> +	/* send the opcode */
> +	ret = sifive_spi_transfer_one(spi_dev, 1, &opcode, NULL);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to xfer opcode\n");
> +		goto out;
> +	}
> +
> +	if (!op->addr.nbytes && !op->data.nbytes)
> +		goto out;
> +
> +	/* send the addr + dummy */
> +	if (op->addr.nbytes) {
> +		int i, op_len = op->addr.nbytes + op->dummy.nbytes;
> +		u8 *op_buf;
> +
> +		op_buf = malloc(op_len);
> +		if (!op_buf) {
> +			ret = -ENOMEM;
> +			goto out;
> +		}
> +
> +		/* fill address */
> +		for (i = 0; i < op->addr.nbytes; i++)
> +			op_buf[i] = op->addr.val >>
> +				(8 * (op->addr.nbytes - i - 1));
> +
> +		/* fill dummy */
> +		memset(op_buf + op->addr.nbytes, 0xff, op->dummy.nbytes);
> +
> +		spi->fmt_proto = op->addr.buswidth;
> +
> +		ret = sifive_spi_transfer_one(spi_dev, op_len, op_buf, NULL);
> +		free(op_buf);
> +		if (ret < 0) {
> +			dev_err(dev, "failed to xfer addr + dummy\n");
> +			goto out;
> +		}
> +	}
> +
> +	/* send/received the data */
> +	if (op->data.nbytes) {
> +		const void *tx_buf = NULL;
> +		void *rx_buf = NULL;
> +
> +		if (op->data.dir == SPI_MEM_DATA_IN)
> +			rx_buf = op->data.buf.in;
> +		else
> +			tx_buf = op->data.buf.out;
> +
> +		spi->fmt_proto = op->data.buswidth;
> +
> +		ret = sifive_spi_transfer_one(spi_dev, op->data.nbytes,
> +				      tx_buf, rx_buf);
> +		if (ret) {
> +			dev_err(dev, "failed to xfer data\n");
> +			goto out;
> +		}
> +	}
> +
> +out:
> +	sifive_spi_clear_cs(spi);
> +	return ret;
> +}
> +
> +static void sifive_spi_set_speed(struct sifive_spi *spi, uint speed)
> +{
> +	u32 scale;
> +
> +	if (speed > spi->freq)
> +		speed = spi->freq;
> +
> +	/* Cofigure max speed */
> +	scale = (DIV_ROUND_UP(spi->freq >> 1, speed) - 1)
> +					& SIFIVE_SPI_SCKDIV_DIV_MASK;
> +	writel(scale, spi->regs + SIFIVE_SPI_REG_SCKDIV);
> +}
> +
> +static void sifive_spi_set_mode(struct sifive_spi *spi, uint mode)
> +{
> +	u32 cr;
> +
> +	/* Switch clock mode bits */
> +	cr = readl(spi->regs + SIFIVE_SPI_REG_SCKMODE) &
> +				~SIFIVE_SPI_SCKMODE_MODE_MASK;
> +	if (mode & SPI_CPHA)
> +		cr |= SIFIVE_SPI_SCKMODE_PHA;
> +	if (mode & SPI_CPOL)
> +		cr |= SIFIVE_SPI_SCKMODE_POL;
> +
> +	writel(cr, spi->regs + SIFIVE_SPI_REG_SCKMODE);
> +}
> +
> +static int sifive_spi_setup(struct spi_device *spi_dev)
> +{
> +	struct sifive_spi *spi = to_sifive_spi(spi_dev->controller);
> +
> +	sifive_spi_set_mode(spi, spi_dev->mode);
> +	sifive_spi_set_speed(spi, spi_dev->max_speed_hz);
> +
> +	return 0;
> +}
> +
> +static void sifive_spi_init_hw(struct sifive_spi *spi)
> +{
> +	struct device_d *dev = spi->ctlr.dev;
> +	u32 cs_bits;
> +
> +	/* probe the number of CS lines */
> +	spi->cs_inactive = readl(spi->regs + SIFIVE_SPI_REG_CSDEF);
> +	writel(0xffffffffU, spi->regs + SIFIVE_SPI_REG_CSDEF);
> +	cs_bits = readl(spi->regs + SIFIVE_SPI_REG_CSDEF);
> +	writel(spi->cs_inactive, spi->regs + SIFIVE_SPI_REG_CSDEF);
> +	if (!cs_bits) {
> +		dev_warn(dev, "Could not auto probe CS lines\n");
> +		return;
> +	}
> +
> +	spi->ctlr.num_chipselect = ilog2(cs_bits) + 1;
> +	if (spi->ctlr.num_chipselect > SIFIVE_SPI_MAX_CS) {
> +		dev_warn(dev, "Invalid number of spi slaves\n");
> +		return;
> +	}
> +
> +	/* Watermark interrupts are disabled by default */
> +	writel(0, spi->regs + SIFIVE_SPI_REG_IE);
> +
> +	/* Default watermark FIFO threshold values */
> +	writel(1, spi->regs + SIFIVE_SPI_REG_TXMARK);
> +	writel(0, spi->regs + SIFIVE_SPI_REG_RXMARK);
> +
> +	/* Set CS/SCK Delays and Inactive Time to defaults */
> +	writel(SIFIVE_SPI_DELAY0_CSSCK(1) | SIFIVE_SPI_DELAY0_SCKCS(1),
> +	       spi->regs + SIFIVE_SPI_REG_DELAY0);
> +	writel(SIFIVE_SPI_DELAY1_INTERCS(1) | SIFIVE_SPI_DELAY1_INTERXFR(0),
> +	       spi->regs + SIFIVE_SPI_REG_DELAY1);
> +
> +	/* Exit specialized memory-mapped SPI flash mode */
> +	writel(0, spi->regs + SIFIVE_SPI_REG_FCTRL);
> +}
> +
> +static const struct spi_controller_mem_ops sifive_spi_mem_ops = {
> +	.exec_op	= sifive_spi_exec_op,
> +};
> +
> +static void sifive_spi_dt_probe(struct sifive_spi *spi)
> +{
> +	struct device_node *node = spi->ctlr.dev->device_node;
> +
> +	spi->fifo_depth = SIFIVE_SPI_DEFAULT_DEPTH;
> +	of_property_read_u32(node, "sifive,fifo-depth", &spi->fifo_depth);
> +
> +	spi->bits_per_word = SIFIVE_SPI_DEFAULT_BITS;
> +	of_property_read_u32(node, "sifive,max-bits-per-word", &spi->bits_per_word);
> +}
> +
> +static int sifive_spi_probe(struct device_d *dev)
> +{
> +	struct sifive_spi *spi;
> +	struct resource *iores;
> +	struct spi_controller *ctlr;
> +	struct clk *clkdev;
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +
> +	spi = xzalloc(sizeof(*spi));
> +
> +	spi->regs = IOMEM(iores->start);
> +	if (!spi->regs)
> +		return -ENODEV;
> +
> +	ctlr = &spi->ctlr;
> +	ctlr->dev = dev;
> +
> +	ctlr->setup = sifive_spi_setup;
> +	ctlr->transfer = sifive_spi_transfer;
> +	ctlr->mem_ops = &sifive_spi_mem_ops;
> +
> +	ctlr->bus_num = -1;
> +
> +	spi_controller_set_devdata(ctlr, spi);
> +
> +	sifive_spi_dt_probe(spi);
> +
> +	clkdev = clk_get(dev, NULL);
> +	if (IS_ERR(clkdev))
> +		return PTR_ERR(clkdev);
> +
> +	spi->freq = clk_get_rate(clkdev);
> +
> +	/* init the sifive spi hw */
> +	sifive_spi_init_hw(spi);
> +
> +	return spi_register_master(ctlr);
> +}
> +
> +static const struct of_device_id sifive_spi_ids[] = {
> +	{ .compatible = "sifive,spi0" },
> +	{ /* sentinel */ }
> +};
> +
> +static struct driver_d sifive_spi_driver = {
> +	.name  = "sifive_spi",
> +	.probe = sifive_spi_probe,
> +	.of_compatible = sifive_spi_ids,
> +};
> +coredevice_platform_driver(sifive_spi_driver);
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

