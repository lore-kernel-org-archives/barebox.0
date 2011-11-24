Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTVRW-00025G-Sp
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 09:18:10 +0000
Date: Thu, 24 Nov 2011 10:17:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111124091758.GX27267@pengutronix.de>
References: <1322082748-17409-1-git-send-email-franck.jullien@gmail.com>
 <1322082748-17409-3-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322082748-17409-3-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 2/4] mci: Add MCI over SPI support
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

Hi Franck,

Nice to see this driver. Some comments inline.


On Wed, Nov 23, 2011 at 10:12:26PM +0100, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> This patch adds MMC over SPI support to mci-core.c and
> mci_spi.c driver.
> 
> This driver is useful when SOC doesn't have built-in MCI
> component. Tested with nios, 2Go SD-CARD and FAT file system.
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  drivers/mci/Kconfig    |   17 ++
>  drivers/mci/Makefile   |    1 +
>  drivers/mci/mci-core.c |   67 ++++++--
>  drivers/mci/mci_spi.c  |  431 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/mci.h          |   14 ++
>  5 files changed, 514 insertions(+), 16 deletions(-)
>  create mode 100644 drivers/mci/mci_spi.c
> 
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 0d5a0e0..ed88abb 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -80,4 +80,21 @@ config MCI_ATMEL
>  	  Enable this entry to add support to read and write SD cards on a
>  	  Atmel AT91.
>  
> +config MCI_SPI
> +	bool "MMC/SD over SPI"
> +	help
> +	  Some systems access MMC/SD/SDIO cards using a SPI controller
> +	  instead of using a "native" MMC/SD/SDIO controller.  This has a
> +	  disadvantage of being relatively high overhead, but a compensating
> +	  advantage of working on many systems without dedicated MMC/SD/SDIO
> +	  controllers.
> +
> +config MMC_SPI_CRC_ON
> +	bool "Enable CRC protection for transferts"

s/transferts/transfers/

> +	select CRC7
> +	select CRC16
> +	depends on MCI_SPI
> +	help
> +	  EEnable CRC protection for transferts

s/EEnable/Enable/

> +
>  endif
> diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
> index 4fc0046..d7482dc 100644
> --- a/drivers/mci/Makefile
> +++ b/drivers/mci/Makefile
> @@ -5,3 +5,4 @@ obj-$(CONFIG_MCI_IMX) += imx.o
>  obj-$(CONFIG_MCI_IMX_ESDHC) += imx-esdhc.o
>  obj-$(CONFIG_MCI_OMAP_HSMMC) += omap_hsmmc.o
>  obj-$(CONFIG_MCI_ATMEL) += atmel_mci.o
> +obj-$(CONFIG_MCI_SPI) += mci_spi.o
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index 09f7e29..849c088 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -218,6 +218,7 @@ static int sd_send_op_cond(struct device_d *mci_dev)
>  	int timeout = 1000;
>  	int err;
>  	unsigned voltages;
> +	unsigned busy;
>  
>  	/*
>  	 * Most cards do not answer if some reserved bits
> @@ -237,7 +238,7 @@ static int sd_send_op_cond(struct device_d *mci_dev)
>  		}
>  
>  		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND,
> -			voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0),
> +			mmc_host_is_spi(host) ? 0 : (voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0)),
>  			MMC_RSP_R3);
>  		err = mci_send_cmd(mci_dev, &cmd, NULL);
>  		if (err) {
> @@ -245,7 +246,13 @@ static int sd_send_op_cond(struct device_d *mci_dev)
>  			return err;
>  		}
>  		udelay(1000);
> -	} while ((!(cmd.response[0] & OCR_BUSY)) && timeout--);
> +
> +		if (mmc_host_is_spi(host))
> +			busy = cmd.response[0] & R1_SPI_IDLE;
> +		else
> +			busy = !(cmd.response[0] & OCR_BUSY);
> +
> +	} while (busy && timeout--);
>  
>  	if (timeout <= 0) {
>  		pr_debug("SD operation condition set timed out\n");
> @@ -255,6 +262,13 @@ static int sd_send_op_cond(struct device_d *mci_dev)
>  	if (mci->version != SD_VERSION_2)
>  		mci->version = SD_VERSION_1_0;
>  
> +	if (mmc_host_is_spi(host)) { /* read OCR for spi */
> +		mci_setup_cmd(&cmd, MMC_CMD_SPI_READ_OCR, 0, MMC_RSP_R3);
> +		err = mci_send_cmd(mci_dev, &cmd, NULL);
> +		if (err)
> +			return err;
> +	}
> +
>  	mci->ocr = cmd.response[0];
>  
>  	mci->high_capacity = ((mci->ocr & OCR_HCS) == OCR_HCS);
> @@ -451,6 +465,7 @@ static int sd_switch(struct device_d *mci_dev, unsigned mode, unsigned group,
>  static int sd_change_freq(struct device_d *mci_dev)
>  {
>  	struct mci *mci = GET_MCI_DATA(mci_dev);
> +	struct mci_host *host = GET_MCI_PDATA(mci_dev);
>  	struct mci_cmd cmd;
>  	struct mci_data data;
>  	uint32_t *switch_status = sector_buf;
> @@ -458,6 +473,9 @@ static int sd_change_freq(struct device_d *mci_dev)
>  	int timeout;
>  	int err;
>  
> +	if (mmc_host_is_spi(host))
> +		return 0;
> +
>  	pr_debug("Changing transfer frequency\n");
>  	mci->card_caps = 0;
>  
> @@ -748,10 +766,23 @@ static int mci_startup(struct device_d *mci_dev)
>  	struct mci_cmd cmd;
>  	int err;
>  
> +#ifdef CONFIG_MMC_SPI_CRC_ON
> +	if (mmc_host_is_spi(host)) { /* enable CRC check for spi */
> +
> +		mci_setup_cmd(&cmd, MMC_CMD_SPI_CRC_ON_OFF, 1, MMC_RSP_R1);
> +		err = mci_send_cmd(mci_dev, &cmd, NULL);
> +
> +		if (err) {
> +			pr_debug("Can't enable CRC check : %d\n", err);
> +			return err;
> +		}
> +	}
> +#endif
> +
>  	pr_debug("Put the Card in Identify Mode\n");
>  
>  	/* Put the Card in Identify Mode */
> -	mci_setup_cmd(&cmd, MMC_CMD_ALL_SEND_CID, 0, MMC_RSP_R2);
> +	mci_setup_cmd(&cmd, mmc_host_is_spi(host) ? MMC_CMD_SEND_CID : MMC_CMD_ALL_SEND_CID, 0, MMC_RSP_R2);
>  	err = mci_send_cmd(mci_dev, &cmd, NULL);
>  	if (err) {
>  		pr_debug("Can't bring card into identify mode: %d\n", err);
> @@ -768,12 +799,14 @@ static int mci_startup(struct device_d *mci_dev)
>  	 * For SD cards, get the Relatvie Address.
>  	 * This also puts the cards into Standby State
>  	 */
> -	pr_debug("Get/Set relative address\n");
> -	mci_setup_cmd(&cmd, SD_CMD_SEND_RELATIVE_ADDR, mci->rca << 16, MMC_RSP_R6);
> -	err = mci_send_cmd(mci_dev, &cmd, NULL);
> -	if (err) {
> -		pr_debug("Get/Set relative address failed: %d\n", err);
> -		return err;
> +	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
> +		pr_debug("Get/Set relative address\n");
> +		mci_setup_cmd(&cmd, SD_CMD_SEND_RELATIVE_ADDR, mci->rca << 16, MMC_RSP_R6);
> +		err = mci_send_cmd(mci_dev, &cmd, NULL);
> +		if (err) {
> +			pr_debug("Get/Set relative address failed: %d\n", err);
> +			return err;
> +		}
>  	}
>  
>  	if (IS_SD(mci))
> @@ -814,13 +847,15 @@ static int mci_startup(struct device_d *mci_dev)
>  	pr_debug("Read block length: %u, Write block length: %u\n",
>  		mci->read_bl_len, mci->write_bl_len);
>  
> -	pr_debug("Select the card, and put it into Transfer Mode\n");
> -	/* Select the card, and put it into Transfer Mode */
> -	mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, mci->rca << 16, MMC_RSP_R1b);
> -	err = mci_send_cmd(mci_dev, &cmd, NULL);
> -	if (err) {
> -		pr_debug("Putting in transfer mode failed: %d\n", err);
> -		return err;
> +	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
> +		pr_debug("Select the card, and put it into Transfer Mode\n");
> +		/* Select the card, and put it into Transfer Mode */
> +		mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, mci->rca << 16, MMC_RSP_R1b);
> +		err = mci_send_cmd(mci_dev, &cmd, NULL);
> +		if (err) {
> +			pr_debug("Putting in transfer mode failed: %d\n", err);
> +			return err;
> +		}
>  	}
>  
>  	if (IS_SD(mci))
> diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
> new file mode 100644
> index 0000000..663db89
> --- /dev/null
> +++ b/drivers/mci/mci_spi.c
> @@ -0,0 +1,431 @@
> +/*
> + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * This code was inspired from u-boot mmc_spi.c:
> + * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
> + *
> + * and linux mmc_spi.c:
> + * (C) Copyright 2005, Intec Automation,
> + *              Mike Lavender (mike@steroidmicros)
> + * (C) Copyright 2006-2007, David Brownell
> + * (C) Copyright 2007, Axis Communications,
> + *              Hans-Peter Nilsson (hp@axis.com)
> + * (C) Copyright 2007, ATRON electronic GmbH,
> + *              Jan Nikitenko <jan.nikitenko@gmail.com>
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <errno.h>
> +#include <clock.h>
> +#include <asm/io.h>
> +#include <driver.h>
> +#include <spi/spi.h>
> +#include <mci.h>
> +#include <crc.h>
> +#ifdef CONFIG_MMC_SPI_CRC_ON
> +#include <crc7.h>
> +#endif

Please do not ifdef includes.

> +
> +#define to_spi_host(mci) container_of(mci, struct mmc_spi_host, mci)
> +#define spi_setup(spi) spi->master->setup(spi)
> +
> +/* Response tokens used to ack each block written: */
> +#define SPI_MMC_RESPONSE_CODE(x)	((x) & 0x1f)
> +#define SPI_RESPONSE_ACCEPTED		((2 << 1)|1)
> +
> +/* Read and write blocks start with these tokens and end with crc;
> + * on error, read tokens act like a subset of R2_SPI_* values.
> + */
> +#define SPI_TOKEN_SINGLE	0xFE	/* single block r/w, multiblock read */
> +#define SPI_TOKEN_MULTI_WRITE	0xFC	/* multiblock write */
> +#define SPI_TOKEN_STOP_TRAN	0xFD	/* terminate multiblock write */
> +
> +/* MMC SPI commands start with a start bit "0" and a transmit bit "1" */
> +#define MMC_SPI_CMD(x) (0x40 | (x & 0x3F))
> +
> +#define MMC_SPI_BLOCKSIZE       512
> +
> +/* timeout value */
> +#define CTOUT 8
> +#define RTOUT 3000000 /* 1 sec */
> +#define WTOUT 3000000 /* 1 sec */
> +
> +#ifndef CONFIG_MMC_SPI_CRC_ON
> +/* Note that while the CRC, in general, is ignored in SPI mode, the very first
> +command must be followed by a valid CRC, since the card is not yet in SPI mode.
> +The CRC byte for a CMD0 command with a zero argument is a constant 0x95. For
> +simplicity, this CRC byte is always sent with every command. */
> +
> +static inline u8 crc7(u8 crc, const u8 *buffer, size_t len)
> +{
> +	return 0x4A;
> +}
> +#endif

Is it 0x4a or 0x95? While it's good to have a comment for this the
difference in the values is a bit confusing.

/*
 * Multi line comments
 * like this please
 */

> +
> +struct mmc_spi_host {
> +	struct mci_host	mci;
> +	struct spi_device	*spi;
> +	struct device_d	*dev;
> +
> +	/* for bulk data transfers */
> +	struct spi_transfer	t_tx;
> +	struct spi_message	m_tx;
> +
> +	/* for status readback */
> +	struct spi_transfer	t_rx;
> +	struct spi_message	m_rx;
> +
> +	void			*ones;
> +};
> +
> +static char *maptype(struct mci_cmd *cmd)
> +{
> +	switch (cmd->resp_type) {
> +	case MMC_RSP_NONE:	return "NONE";
> +	case MMC_RSP_R1:	return "R1";
> +	case MMC_RSP_R1b:	return "R1B";
> +	case MMC_RSP_R2:	return "R2/R5";
> +	case MMC_RSP_R3:	return "R3/R4/R7";
> +	default:		return "?";
> +	}
> +}
> +
> +static inline int mmc_cs_off(struct mmc_spi_host *host)
> +{
> +	/* chipselect will always be inactive after setup() */
> +	return spi_setup(host->spi);
> +}
> +
> +static int
> +mmc_spi_readbytes(struct mmc_spi_host *host, unsigned len, void *data)
> +{
> +	int status;
> +
> +	host->t_rx.len = len;
> +	host->t_rx.rx_buf = data;
> +
> +	status = spi_sync(host->spi, &host->m_rx);
> +
> +	return status;
> +}
> +
> +static int
> +mmc_spi_writebytes(struct mmc_spi_host *host, unsigned len, void *data)
> +{
> +	int status;
> +
> +	host->t_tx.len = len;
> +	host->t_tx.tx_buf = data;
> +
> +	status = spi_sync(host->spi, &host->m_tx);
> +
> +	return status;
> +}
> +
> +static int mmc_spi_command_send(struct mmc_spi_host *host, struct mci_cmd *cmd)
> +{
> +	uint8_t r1;
> +	uint8_t command[7];
> +	int i;
> +
> +	command[0] = 0xff;
> +	command[1] = MMC_SPI_CMD(cmd->cmdidx);
> +	command[2] = cmd->cmdarg >> 24;
> +	command[3] = cmd->cmdarg >> 16;
> +	command[4] = cmd->cmdarg >> 8;
> +	command[5] = cmd->cmdarg;
> +	command[6] = (crc7(0, &command[1], 5) << 1) | 0x01;
> +
> +	mmc_spi_writebytes(host, 7, command);
> +
> +	for (i = 0; i < CTOUT; i++) {
> +		mmc_spi_readbytes(host, 1, &r1);
> +		if (i && ((r1 & 0x80) == 0)) {  /* r1 response */
> +			dev_dbg(host->dev, "%s: CMD%d, TRY %d, RESP %x\n", __func__, cmd->cmdidx, i, r1);
> +			break;
> +		}
> +	}
> +
> +	return r1;
> +}
> +
> +static uint mmc_spi_readdata(struct mmc_spi_host *host, void *xbuf,
> +				uint32_t bcnt, uint32_t bsize)
> +{
> +	uint8_t *buf = xbuf;
> +	uint8_t r1;
> +	uint16_t crc;
> +	int i;
> +
> +	while (bcnt--) {
> +		for (i = 0; i < RTOUT; i++) {
> +			mmc_spi_readbytes(host, 1, &r1);
> +			if (r1 != 0xff) /* data token */
> +				break;
> +		}
> +		if (r1 == SPI_TOKEN_SINGLE) {
> +			mmc_spi_readbytes(host, bsize, buf);
> +			mmc_spi_readbytes(host, 2, &crc);
> +#ifdef CONFIG_MMC_SPI_CRC_ON
> +			if (swab16(cyg_crc16(buf, bsize)) != crc) {
> +				dev_dbg(host->dev, "%s: CRC error\n", __func__);
> +				r1 = R1_SPI_COM_CRC;
> +				break;
> +			}
> +#endif
> +			r1 = 0;
> +		} else {
> +			r1 = R1_SPI_ERROR;
> +			break;
> +		}
> +		buf += bsize;
> +	}
> +
> +	return r1;
> +}
> +
> +static uint mmc_spi_writedata(struct mmc_spi_host *host, const void *xbuf,
> +			      uint32_t bcnt, uint32_t bsize, int multi)
> +{
> +	const uint8_t *buf = xbuf;
> +	uint8_t r1;
> +	uint16_t crc;
> +	uint8_t tok[2];
> +	int i;
> +
> +	tok[0] = 0xff;
> +	tok[1] = multi ? SPI_TOKEN_MULTI_WRITE : SPI_TOKEN_SINGLE;
> +
> +	while (bcnt--) {
> +#ifdef CONFIG_MMC_SPI_CRC_ON
> +		crc = swab16(cyg_crc16((u8 *)buf, bsize));
> +#endif
> +		mmc_spi_writebytes(host, 2, tok);
> +		mmc_spi_writebytes(host, bsize, (void *)buf);
> +		mmc_spi_writebytes(host, 2, &crc);

Without CONFIG_MMC_SPI_CRC_ON you write an unitialized variable out to
the device. It's probably ignored anyway then, but it's nicer to
initialize it.

> +
> +		for (i = 0; i < CTOUT; i++) {
> +			mmc_spi_readbytes(host, 1, &r1);
> +			if ((r1 & 0x11) == 0x01) /* response token */
> +				break;
> +		}
> +
> +		dev_dbg(host->dev,"%s   : TOKEN%d RESP 0x%X\n", __func__, i, r1);
> +		if (SPI_MMC_RESPONSE_CODE(r1) == SPI_RESPONSE_ACCEPTED) {
> +			for (i = 0; i < WTOUT; i++) { /* wait busy */
> +				mmc_spi_readbytes(host, 1, &r1);
> +				if (i && r1 == 0xff) {
> +					r1 = 0;
> +					break;
> +				}
> +			}
> +			if (i == WTOUT) {
> +				dev_dbg(host->dev, "%s: wtout %x\n", __func__, r1);
> +				r1 = R1_SPI_ERROR;
> +				break;
> +			}
> +		} else {
> +			dev_dbg(host->dev, "%s: err %x\n", __func__, r1);
> +			r1 = R1_SPI_COM_CRC;
> +			break;
> +		}
> +		buf += bsize;
> +	}
> +
> +	if (multi && bcnt == -1) { /* stop multi write */
> +		tok[1] = SPI_TOKEN_STOP_TRAN;
> +		mmc_spi_writebytes(host, 2, tok);
> +		for (i = 0; i < WTOUT; i++) { /* wait busy */
> +			mmc_spi_readbytes(host, 1, &r1);
> +			if (i && r1 == 0xff) {
> +				r1 = 0;
> +				break;
> +			}
> +		}
> +		if (i == WTOUT) {
> +			dev_dbg(host->dev, "%s: wstop %x\n", __func__, r1);
> +			r1 = R1_SPI_ERROR;
> +		}
> +	}
> +return r1;

missing \t

> +}
> +
> +static int mmc_spi_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
> +{
> +	struct mmc_spi_host	*host = to_spi_host(mci);
> +	uint8_t r1;
> +	int i;
> +	int ret = 0;
> +
> +	dev_dbg(host->dev, "%s     : CMD%02d, RESP %s, ARG 0x%X\n", __func__,
> +	      cmd->cmdidx, maptype(cmd), cmd->cmdarg);
> +
> +	r1 = mmc_spi_command_send(host, cmd);
> +
> +	cmd->response[0] = r1;
> +
> +	if (r1 == 0xff) { /* no response */
> +		ret = -ETIME;
> +		goto done;
> +	} else if (r1 & R1_SPI_COM_CRC) {
> +		ret = -ECOMM;
> +		goto done;
> +	} else if (r1 & ~R1_SPI_IDLE) { /* other errors */
> +		ret = -ETIME;
> +		goto done;
> +	} else if (cmd->resp_type == MMC_RSP_R2) {
> +		r1 = mmc_spi_readdata(host, cmd->response, 1, 16);
> +		for (i = 0; i < 4; i++)
> +			cmd->response[i] = swab32(cmd->response[i]);
> +		dev_dbg(host->dev, "MMC_RSP_R2 -> %x %x %x %x\n", cmd->response[0], cmd->response[1],
> +		      cmd->response[2], cmd->response[3]);
> +	} else if (!data) {
> +		switch (cmd->cmdidx) {
> +		case SD_CMD_SEND_IF_COND:
> +		case MMC_CMD_SPI_READ_OCR:
> +			mmc_spi_readbytes(host, 4, cmd->response);
> +			cmd->response[0] = swab32(cmd->response[0]);
> +			break;
> +		}
> +	} else {
> +		if (data->flags == MMC_DATA_READ) {
> +			dev_dbg(host->dev, "%s     : DATA READ, %x blocks, bsize = 0x%X\n", __func__,
> +			      data->blocks, data->blocksize);
> +			r1 = mmc_spi_readdata(host, data->dest,
> +				data->blocks, data->blocksize);
> +		} else if  (data->flags == MMC_DATA_WRITE) {
> +			dev_dbg(host->dev, "%s     : DATA WRITE, %x blocks, bsize = 0x%X\n", __func__,
> +			      data->blocks, data->blocksize);
> +			r1 = mmc_spi_writedata(host, data->src,
> +				data->blocks, data->blocksize,
> +				(cmd->cmdidx == MMC_CMD_WRITE_MULTIPLE_BLOCK));
> +		}
> +		if (r1 & R1_SPI_COM_CRC)
> +			ret = -ECOMM;
> +		else if (r1) 
> +			ret = -ETIME;
> +	}
> +
> +done:
> +	mmc_cs_off(host);
> +	return ret;
> +
> +return  0;
> +
> +}
> +
> +static void mmc_spi_set_ios(struct mci_host *mci, struct device_d *mci_dev,
> +			unsigned bus_width, unsigned clock)
> +{
> +	struct mmc_spi_host	*host = to_spi_host(mci);
> +
> +	spi_setup(host->spi);
> +}
> +
> +static int mmc_spi_init(struct mci_host *mci, struct device_d *mci_dev)
> +{
> +	struct mmc_spi_host	*host = to_spi_host(mci);
> +	mmc_spi_readbytes(host, 10, NULL);
> +
> +	/*
> +	 * Do a burst with chipselect active-high.  We need to do this to
> +	 * meet the requirement of 74 clock cycles with both chipselect
> +	 * and CMD (MOSI) high before CMD0 ... after the card has been
> +	 * powered up to Vdd(min), and so is ready to take commands.
> +	 *
> +	 * Some cards are particularly needy of this (e.g. Viking "SD256")
> +	 * while most others don't seem to care.
> +	 *
> +	 * Note that this is one of the places MMC/SD plays games with the
> +	 * SPI protocol.  Another is that when chipselect is released while
> +	 * the card returns BUSY status, the clock must issue several cycles
> +	 * with chipselect high before the card will stop driving its output.
> +	 */
> +
> +	host->spi->mode |= SPI_CS_HIGH;
> +	if (spi_setup(host->spi) != 0) {
> +		/* Just warn; most cards work without it. */
> +		dev_warn(&host->spi->dev,
> +				"can't change chip-select polarity\n");
> +		host->spi->mode &= ~SPI_CS_HIGH;
> +	} else {
> +		mmc_spi_readbytes(host, 18, NULL);
> +
> +		host->spi->mode &= ~SPI_CS_HIGH;
> +		if (spi_setup(host->spi) != 0) {
> +			/* Wot, we can't get the same setup we had before? */
> +			dev_err(&host->spi->dev,
> +					"can't restore chip-select polarity\n");
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int spi_mci_probe(struct device_d *dev)
> +{
> +	struct spi_device	*spi = (struct spi_device *)dev->type_data;
> +	struct mmc_spi_host	*host;
> +	void			*ones;
> +
> +	host = xzalloc(sizeof(*host));
> +	host->mci.send_cmd = mmc_spi_request;
> +	host->mci.set_ios = mmc_spi_set_ios;
> +	host->mci.init = mmc_spi_init;
> +
> +	host->dev = dev;
> +	host->spi = spi;
> +	dev->priv = host;
> +
> +	ones = xmalloc(MMC_SPI_BLOCKSIZE);
> +	memset(ones, 0xff, MMC_SPI_BLOCKSIZE);
> +
> +	host->ones = ones;
> +
> +	spi_message_init(&host->m_tx);
> +	spi_message_init(&host->m_rx);
> +
> +	spi_message_add_tail(&host->t_tx, &host->m_tx);
> +	spi_message_add_tail(&host->t_rx, &host->m_rx);
> +
> +	host->t_rx.tx_buf = host->ones;
> +	host->t_rx.cs_change = 1;
> +
> +	host->t_tx.cs_change = 1;
> +
> +	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
> +	host->mci.host_caps = MMC_CAP_SPI;
> +
> +	mci_register(&host->mci);
> +
> +	return 0;
> +}
> +
> +static struct driver_d spi_mci_driver = {
> +	.name	= "spi_mci",
> +	.probe	= spi_mci_probe,
> +};
> +
> +static int spi_mci_init_driver(void)
> +{
> +	register_driver(&spi_mci_driver);
> +	return 0;
> +}
> +
> +device_initcall(spi_mci_init_driver);
> diff --git a/include/mci.h b/include/mci.h
> index 69cffe8..ed54e14 100644
> --- a/include/mci.h
> +++ b/include/mci.h
> @@ -49,6 +49,7 @@
>  
>  #define MMC_MODE_HS		0x001
>  #define MMC_MODE_HS_52MHz	0x010
> +#define MMC_CAP_SPI		0x020
>  #define MMC_MODE_4BIT		0x100
>  #define MMC_MODE_8BIT		0x200
>  
> @@ -56,6 +57,8 @@
>  
>  #define IS_SD(x) (x->version & SD_VERSION_SD)
>  
> +#define mmc_host_is_spi(host)	((host)->host_caps & MMC_CAP_SPI)

You could lower the impact of spimmc on non spimmc enabled builds
a bit by doing:

#ifdef CONFIG_MCI_SPI
#define mmc_host_is_spi(host)		((host)->host_caps & MMC_CAP_SPI)
#else
#define mmc_host_is_spi(host)		0
#endif

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
