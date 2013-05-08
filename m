Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZyk7-0002ho-Ic
 for barebox@lists.infradead.org; Wed, 08 May 2013 07:24:57 +0000
Date: Wed, 8 May 2013 09:24:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508072429.GY32299@pengutronix.de>
References: <1366956540-10868-1-git-send-email-wilhelm.lundgren@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366956540-10868-1-git-send-email-wilhelm.lundgren@gmail.com>
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
Subject: Re: [PATCH] Added sd driver for bcm2835 (Raspberry PI)
To: wilhelm <wilhelm.lundgren@gmail.com>
Cc: barebox@lists.infradead.org

Hi Wilhelm,

I just pushed the mentioned register definitions to the -next branch.
I would take this patch if you update it to use this register
definitions. (in drivers/mci/sdhci.h)

Sascha


On Fri, Apr 26, 2013 at 08:09:00AM +0200, wilhelm wrote:
> ---
>  arch/arm/mach-bcm2835/core.c |   1 +
>  drivers/mci/Kconfig          |   4 +
>  drivers/mci/Makefile         |   1 +
>  drivers/mci/mci-bcm2835.c    | 567 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/mci/mci-bcm2835.h    | 126 ++++++++++
>  5 files changed, 699 insertions(+)
>  create mode 100644 drivers/mci/mci-bcm2835.c
>  create mode 100644 drivers/mci/mci-bcm2835.h
> 
> diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
> index f44ecd5..906e434 100644
> --- a/arch/arm/mach-bcm2835/core.c
> +++ b/arch/arm/mach-bcm2835/core.c
> @@ -70,6 +70,7 @@ static int bcm2835_dev_init(void)
>  {
>  	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
>  	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
> +	add_generic_device("bcm2835_mci", 0, NULL, BCM2835_EMMC_BASE, 0xFC, IORESOURCE_MEM, NULL);
>  	return 0;
>  }
>  coredevice_initcall(bcm2835_dev_init);
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 9558f28..52cb303 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -45,6 +45,10 @@ config MCI_S3C
>  	  Enable this entry to add support to read and write SD cards on a
>  	  Samsung S3C24xx based system.
>  
> +config MCI_BCM2835
> +	bool "MCI support for BCM2835"
> +	depends on ARCH_BCM2835
> +
>  config MCI_IMX
>  	bool "i.MX"
>  	depends on ARCH_IMX27 || ARCH_IMX31
> diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
> index d46d5f5..263f23a 100644
> --- a/drivers/mci/Makefile
> +++ b/drivers/mci/Makefile
> @@ -8,3 +8,4 @@ obj-$(CONFIG_MFD_TWL6030) += twl6030.o
>  obj-$(CONFIG_MCI_PXA) += pxamci.o
>  obj-$(CONFIG_MCI_ATMEL) += atmel_mci.o
>  obj-$(CONFIG_MCI_SPI) += mci_spi.o
> +obj-$(CONFIG_MCI_BCM2835)	+= mci-bcm2835.o
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> new file mode 100644
> index 0000000..1b6b98b
> --- /dev/null
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -0,0 +1,567 @@
> +/*
> + * Raspberry PI MCI driver
> + *
> + * Portions (e.g. read/write macros, concepts for back-to-back register write
> + * timing workarounds) obviously extracted from the Linux kernel at:
> + * https://github.com/raspberrypi/linux.git rpi-3.6.y
> + *
> + * The Linux kernel code has the following (c) and license, which is hence
> + * propagated to here:
> + *
> + * Support for SDHCI device on 2835
> + * Based on sdhci-bcm2708.c (c) 2010 Broadcom
> + * Inspired by bcm2835_sdhci.c from git://github.com/gonzoua/u-boot-pi.git
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
> + *
> + * Author: Wilhelm Lundgren <wilhelm.lundgren@cybercom.com>
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mci.h>
> +#include <io.h>
> +#include <malloc.h>
> +#include <clock.h>
> +#include "mci-bcm2835.h"
> +
> +#define to_bcm2835_host(h)	container_of(h, struct bcm2835_mci_host, mci)
> +static int twoticks_delay;
> +struct bcm2835_mci_host {
> +	struct mci_host mci;
> +	void __iomem *regs;
> +	struct device_d *hw_dev;
> +	int bus_width;
> +	u32 clock;
> +	u32 max_clock;
> +	u32 version;
> +	uint64_t last_write;
> +};
> +
> +void bcm2835_mci_write(struct bcm2835_mci_host *host, u32 reg, u32 val)
> +{
> +	/*
> +	 * The Arasan has a bugette whereby it may lose the content of
> +	 * successive writes to registers that are within two SD-card clock
> +	 * cycles of each other (a clock domain crossing problem).
> +	 * It seems, however, that the data register does not have this problem.
> +	 * (Which is just as well - otherwise we'd have to nobble the DMA engine
> +	 * too)
> +	 */
> +
> +	if (host->last_write != 0)
> +		while ((get_time_ns() - host->last_write) < twoticks_delay)
> +			;
> +	host->last_write = get_time_ns();
> +	writel(val, host->regs + reg);
> +}
> +
> +u32 bcm2835_mci_read(struct bcm2835_mci_host *host, u32 reg)
> +{
> +	return readl(host->regs + reg);
> +}
> +
> +/* Create special write data function since the data
> + * register is not affected by the twoticks_delay bug
> + * and we can thus get better speed here
> + */
> +void bcm2835_mci_write_data(struct bcm2835_mci_host *host, u32 *p)
> +{
> +	writel(*p, host->regs + BCM2835_MCI_DATA);
> +}
> +
> +/* Make a read data functions as well just to keep structure */
> +void bcm2835_mci_read_data(struct bcm2835_mci_host *host, u32 *p)
> +{
> +	*p = readl(host->regs + BCM2835_MCI_DATA);
> +}
> +
> +static int bcm2835_mci_transfer_data(struct bcm2835_mci_host *host,
> +		struct mci_cmd *cmd, struct mci_data *data) {
> +	u32 *p;
> +	u32 data_size, status, intr_status = 0;
> +	u32 data_ready_intr_mask;
> +	u32 data_ready_status_mask;
> +	int i = 0;
> +	void (*read_write_func)(struct bcm2835_mci_host*, u32*);
> +
> +	data_size = data->blocksize * data->blocks;
> +
> +	if (data->flags & MMC_DATA_READ) {
> +		p = (u32 *) data->dest;
> +		data_ready_intr_mask = INT_DATA_READ_RDY;
> +		data_ready_status_mask = STATUS_READ_OK;
> +		read_write_func = &bcm2835_mci_read_data;
> +	} else {
> +		p = (u32 *) data->src;
> +		data_ready_intr_mask = INT_DATA_WRITE_RDY;
> +		data_ready_status_mask = STATUS_WRITE_OK;
> +		read_write_func = &bcm2835_mci_write_data;
> +	}
> +	do {
> +		intr_status = bcm2835_mci_read(host, BCM2835_MCI_INTERRUPT);
> +		if (intr_status & INT_ERROR_OCCURED) {
> +			dev_err(host->hw_dev,
> +					"Error occured while transferring data: 0x%X\n",
> +					intr_status);
> +			return -EPERM;
> +		}
> +		if (intr_status & data_ready_intr_mask) {
> +			status = bcm2835_mci_read(host, BCM2835_MCI_STATUS);
> +			if ((status & data_ready_status_mask) == 0)
> +				continue;
> +			/*Clear latest int and transfer one block size of data*/
> +			bcm2835_mci_write(host, BCM2835_MCI_INTERRUPT,
> +					data_ready_intr_mask);
> +			for (i = 0; i < data->blocksize; i += 4) {
> +				read_write_func(host, p);
> +				p++;
> +				data_size -= 4;
> +			}
> +		}
> +	} while ((intr_status & INT_DATA_DONE) == 0);
> +
> +	if (data_size != 0) {
> +		if (data->flags & MMC_DATA_READ)
> +			dev_err(host->hw_dev, "Error while reading:\n");
> +		else
> +			dev_err(host->hw_dev, "Error while writing:\n");
> +
> +		dev_err(host->hw_dev, "Transferred %d bytes of data, wanted %d\n",
> +				(data->blocksize * data->blocks) - data_size,
> +				data->blocksize * data->blocks);
> +
> +		dev_err(host->hw_dev, "Status: 0x%X, Interrupt: 0x%X\n",
> +				bcm2835_mci_read(host, BCM2835_MCI_STATUS),
> +				bcm2835_mci_read(host, BCM2835_MCI_INTERRUPT));
> +
> +		return -EPERM;
> +	}
> +	return 0;
> +}
> +
> +static u32 bcm2835_mci_wait_command_done(struct bcm2835_mci_host *host)
> +{
> +	u32 interrupt = 0;
> +
> +	while (true) {
> +		interrupt = bcm2835_mci_read(
> +				host, BCM2835_MCI_INTERRUPT);
> +		if (interrupt & INT_ERROR_OCCURED)
> +			return -EPERM;
> +		if (interrupt & INT_CMD_DONE)
> +			break;
> +	}
> +	return 0;
> +}
> +
> +static void bcm2835_mci_reset_emmc(struct bcm2835_mci_host *host, u32 reset,
> +		u32 wait_for)
> +{
> +	u32 ret;
> +	u32 current = bcm2835_mci_read(host, BCM2835_MCI_CONTROL1);
> +
> +	bcm2835_mci_write(host, BCM2835_MCI_CONTROL1, current | reset);
> +
> +	while (true) {
> +		ret = bcm2835_mci_read(host, BCM2835_MCI_CONTROL1);
> +		if (ret & wait_for)
> +			continue;
> +		break;
> +	}
> +}
> +
> +/**
> + * Process one command to the MCI card
> + * @param host MCI host
> + * @param cmd The command to process
> + * @param data The data to handle in the command (can be NULL)
> + * @return 0 on success, negative value else
> + */
> +static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
> +		struct mci_data *data) {
> +	u32 command, block_data = 0, ret = 0;
> +	u32 wait_inhibit_mask = STATUS_CMD_INHIBIT | STATUS_DAT_INHIBIT;
> +	struct bcm2835_mci_host *host = to_bcm2835_host(mci);
> +
> +	command = (cmd->cmdidx << CMD_SHIFT);
> +
> +	if (cmd->resp_type != 0) {
> +		if (cmd->resp_type & MMC_RSP_136)
> +			command |= CMD_RESP_LEN_136;
> +		else if (cmd->resp_type & MMC_RSP_BUSY)
> +			command |= CMD_RESP_LEN_48_BSY;
> +		else
> +			command |= CMD_RESP_LEN_48;
> +		if (cmd->resp_type & MMC_RSP_CRC)
> +			command |= CMD_RESP_CRC_CHK;
> +	}
> +	if (data != NULL) {
> +		command |= CMD_IS_DATA | CMD_ENA_BLK_CNT;
> +
> +		if (data->blocks > 1)
> +			command |= CMD_MULTI_BLK;
> +
> +		if (data->flags & MMC_DATA_READ)
> +			command |= CMD_CARD_TO_HOST;
> +
> +		block_data = (data->blocks << BLOCK_SHIFT);
> +		block_data |= data->blocksize;
> +	}
> +
> +	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
> +		wait_inhibit_mask = STATUS_CMD_INHIBIT;
> +
> +	/*Wait for old command*/
> +	while (bcm2835_mci_read(host, BCM2835_MCI_STATUS)
> +			& wait_inhibit_mask)
> +		;
> +
> +	bcm2835_mci_write(host, BCM2835_MCI_IRPT_MASK, 0xFFFFFFFF);
> +	bcm2835_mci_write(host, BCM2835_MCI_INTERRUPT, 0xFFFFFFFF);
> +
> +	bcm2835_mci_write(host, BCM2835_MCI_BLKSIZECNT, block_data);
> +	bcm2835_mci_write(host, BCM2835_MCI_ARG1, cmd->cmdarg);
> +	bcm2835_mci_write(host, BCM2835_MCI_CMDTM, command);
> +
> +	ret = bcm2835_mci_wait_command_done(host);
> +	if (ret) {
> +		dev_err(host->hw_dev, "Error while executing command %d\n",
> +				cmd->cmdidx);
> +		dev_err(host->hw_dev, "Status: 0x%X, Interrupt: 0x%X\n",
> +				bcm2835_mci_read(host, BCM2835_MCI_STATUS),
> +				bcm2835_mci_read(host, BCM2835_MCI_INTERRUPT));
> +	}
> +	if (cmd->resp_type != 0 && ret != -1) {
> +		int i = 0;
> +
> +		/* CRC is stripped so we need to do some shifting. */
> +		if (cmd->resp_type & MMC_RSP_136) {
> +			for (i = 0; i < 4; i++) {
> +				cmd->response[i] = bcm2835_mci_read(
> +					host,
> +					BCM2835_MCI_RESP0 + (3 - i) * 4) << 8;
> +				if (i != 3)
> +					cmd->response[i] |=
> +						readb((u32) (host->regs) +
> +						BCM2835_MCI_RESP0 +
> +						(3 - i) * 4 - 1);
> +			}
> +		} else {
> +			cmd->response[0] = bcm2835_mci_read(
> +					host, BCM2835_MCI_RESP0);
> +		}
> +		bcm2835_mci_write(host, BCM2835_MCI_INTERRUPT,
> +				INT_CMD_DONE);
> +	}
> +
> +	if (!ret && data)
> +		ret = bcm2835_mci_transfer_data(host, cmd, data);
> +
> +	bcm2835_mci_write(host, BCM2835_MCI_INTERRUPT, 0xFFFFFFFF);
> +	if (ret) {
> +		bcm2835_mci_reset_emmc(host, CONTROL1_CMDRST,
> +				CONTROL1_CMDRST);
> +		bcm2835_mci_reset_emmc(host, CONTROL1_DATARST,
> +				CONTROL1_DATARST);
> +	}
> +
> +	return ret;
> +}
> +
> +static u32 bcm2835_mci_get_clock_divider(struct bcm2835_mci_host *host,
> +		u32 desired_hz)
> +{
> +	u32 div;
> +	u32 clk_hz;
> +
> +	if (host->version >= SDHCI_SPEC_300) {
> +		/* Version 3.00 divisors must be a multiple of 2. */
> +		if (host->max_clock <= desired_hz)
> +			div = 1;
> +		else {
> +			for (div = 2; div < MAX_CLK_DIVIDER_V3; div += 2) {
> +				clk_hz = host->max_clock / div;
> +				if (clk_hz <= desired_hz)
> +					break;
> +			}
> +		}
> +	} else {
> +		/* Version 2.00 divisors must be a power of 2. */
> +		for (div = 1; div < MAX_CLK_DIVIDER_V2; div *= 2) {
> +			clk_hz = host->max_clock / div;
> +			if (clk_hz <= desired_hz)
> +				break;
> +		}
> +
> +	}
> +
> +	/*Since setting lowest bit means divide by two, shift down*/
> +	dev_dbg(host->hw_dev,
> +			"Wanted %d hz, returning divider %d (%d) which yields %d hz\n",
> +			desired_hz, div >> 1, div, host->max_clock / div);
> +	twoticks_delay = ((2 * 1000000000) / (host->max_clock / div)) + 1;
> +
> +	div = div >> 1;
> +	host->clock = desired_hz;
> +	return div;
> +}
> +
> +/**
> + * Setup the bus width and IO speed
> + * @param host MCI host
> + * @param bus_width New bus width value (1, 4 or 8)
> + * @param clock New clock in Hz (can be '0' to disable the clock)
> + */
> +static void bcm2835_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
> +{
> +	u32 divider;
> +	u32 divider_msb, divider_lsb;
> +	u32 enable;
> +
> +	struct bcm2835_mci_host *host = to_bcm2835_host(mci);
> +
> +	switch (ios->bus_width) {
> +	case MMC_BUS_WIDTH_4:
> +		bcm2835_mci_write(host, BCM2835_MCI_CONTROL0,
> +				bcm2835_mci_read(host,
> +						BCM2835_MCI_CONTROL0) |
> +						CONTROL0_4DATA);
> +		host->bus_width = 1;
> +		dev_dbg(host->hw_dev, "Changing bus width to 4\n");
> +		break;
> +	case MMC_BUS_WIDTH_1:
> +		bcm2835_mci_write(host, BCM2835_MCI_CONTROL0,
> +				bcm2835_mci_read(host,
> +						BCM2835_MCI_CONTROL0) &
> +						~CONTROL0_4DATA);
> +		host->bus_width = 0;
> +		dev_dbg(host->hw_dev, "Changing bus width to 1\n");
> +		break;
> +	default:
> +		dev_warn(host->hw_dev, "Unsupported width received: %d\n",
> +				ios->bus_width);
> +		return;
> +	}
> +	if (ios->clock != host->clock && ios->clock != 0) {
> +		bcm2835_mci_write(host, BCM2835_MCI_CONTROL1, 0x00);
> +
> +		if (ios->clock > 26000000) {
> +			enable = bcm2835_mci_read(
> +					host, BCM2835_MCI_CONTROL0);
> +			enable |= CONTROL0_HISPEED;
> +			bcm2835_mci_write(host, BCM2835_MCI_CONTROL1,
> +					enable);
> +		}
> +
> +		divider = bcm2835_mci_get_clock_divider(host, ios->clock);
> +		divider_msb = divider & 0x300;
> +		divider_msb >>= CONTROL1_CLKLSB;
> +		divider_lsb = divider & 0xFF;
> +		enable = (divider_lsb << CONTROL1_CLKLSB);
> +		enable |= (divider_msb << CONTROL1_CLKMSB);
> +		enable |= CONTROL1_INTCLKENA | CONTROL1_TIMEOUT;
> +
> +		bcm2835_mci_write(host, BCM2835_MCI_CONTROL1, enable);
> +		while (true) {
> +			u32 ret = bcm2835_mci_read(
> +					host, BCM2835_MCI_CONTROL1);
> +			if (ret & CONTROL1_CLK_STABLE)
> +				break;
> +		}
> +
> +		enable |= CONTROL1_CLKENA;
> +		bcm2835_mci_write(host, BCM2835_MCI_CONTROL1, enable);
> +
> +		mdelay(100);
> +
> +		bcm2835_mci_reset_emmc(host, CONTROL1_CMDRST,
> +				CONTROL1_CMDRST);
> +		bcm2835_mci_reset_emmc(host, CONTROL1_DATARST,
> +				CONTROL1_DATARST);
> +
> +		host->clock = ios->clock;
> +	}
> +	dev_dbg(host->hw_dev, "IO settings: bus width=%d, frequency=%u Hz\n",
> +			host->bus_width, host->clock);
> +}
> +
> +int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
> +{
> +	struct bcm2835_mci_host *host;
> +	u32 ret = 0;
> +	u32 reset = CONTROL1_HOSTRST | CONTROL1_CMDRST | CONTROL1_DATARST;
> +	u32 enable = 0;
> +	u32 divider;
> +	u32 divider_msb, divider_lsb;
> +
> +	host = to_bcm2835_host(mci);
> +	divider = bcm2835_mci_get_clock_divider(host, MIN_FREQ);
> +	divider_msb = divider & 0x300;
> +	divider_msb = divider_msb >> CONTROL1_CLKLSB;
> +	divider_lsb = divider & 0xFF;
> +
> +	enable = (divider_lsb << CONTROL1_CLKLSB);
> +	enable |= (divider_msb << CONTROL1_CLKMSB);
> +	enable |= CONTROL1_INTCLKENA | CONTROL1_TIMEOUT;
> +
> +	bcm2835_mci_reset_emmc(host, enable | reset, CONTROL1_HOSTRST);
> +
> +	bcm2835_mci_write(host, BCM2835_MCI_CONTROL0, 0x00);
> +	bcm2835_mci_write(host, BCM2835_MCI_CONTROL2, 0x00);
> +	bcm2835_mci_write(host, BCM2835_MCI_CONTROL1, enable);
> +	while (true) {
> +		ret = bcm2835_mci_read(host, BCM2835_MCI_CONTROL1);
> +		if (ret & CONTROL1_CLK_STABLE)
> +			break;
> +	}
> +
> +	enable |= CONTROL1_CLKENA;
> +	bcm2835_mci_write(host, BCM2835_MCI_CONTROL1, enable);
> +
> +	/*Delay atelast 74 clk cycles for card init*/
> +	mdelay(100);
> +
> +	bcm2835_mci_write(host, BCM2835_MCI_IRPT_MASK,
> +			0xFFFFFFFF);
> +	bcm2835_mci_write(host, BCM2835_MCI_INTERRUPT,
> +			0xFFFFFFFF);
> +
> +	/*Now write command 0 and see if we get response*/
> +	bcm2835_mci_write(host, BCM2835_MCI_ARG1, 0x0);
> +	bcm2835_mci_write(host, BCM2835_MCI_CMDTM, 0x0);
> +	return bcm2835_mci_wait_command_done(host);
> +}
> +
> +static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
> +{
> +	u32 val;
> +	struct bcm2835_mbox_regs *regs =
> +			(struct bcm2835_mbox_regs *) BCM2835_MBOX_PHYSADDR;
> +
> +	/*Read out old msg*/
> +	while (true) {
> +		val = readl(&regs->status);
> +		if (val & BCM2835_MBOX_STATUS_RD_EMPTY)
> +			break;
> +		val = readl(&regs->read);
> +	}
> +
> +	/*Check for ok to write*/
> +	while (true) {
> +		val = readl(&regs->status);
> +		if (!(val & BCM2835_MBOX_STATUS_WR_FULL))
> +			break;
> +	}
> +	val = BCM2835_MBOX_PROP_CHAN + ((u32) &clk_data->hdr);
> +	writel(val, &regs->write);
> +
> +	while (true) {
> +		/* Wait for the response */
> +		while (true) {
> +			val = readl(&regs->status);
> +			if (!(val & BCM2835_MBOX_STATUS_RD_EMPTY))
> +				break;
> +		}
> +
> +		/* Read the response */
> +		val = readl(&regs->read);
> +		if ((val & 0x0F) == BCM2835_MBOX_PROP_CHAN)
> +			break;
> +	}
> +	if ((val & ~0x0F) == ((u32) &clk_data->hdr))
> +		if (clk_data->get_clock_rate.tag_hdr.val_len
> +				& BCM2835_MBOX_TAG_VAL_LEN_RESPONSE)
> +			return 1;
> +	return 0;
> +}
> +
> +static int bcm2835_mci_probe(struct device_d *hw_dev)
> +{
> +	struct bcm2835_mci_host *host;
> +	struct msg_get_clock_rate *clk_data;
> +
> +	host = xzalloc(sizeof(*host));
> +	host->mci.send_cmd = bcm2835_mci_request;
> +	host->mci.set_ios = bcm2835_mci_set_ios;
> +	host->mci.init = bcm2835_mci_reset;
> +	host->mci.hw_dev = hw_dev;
> +	host->hw_dev = hw_dev;
> +
> +	/* Allocate a buffer thats 16 bytes aligned in memory
> +	 * Of the 32 bits address passed into the mbox 28 bits
> +	 * are the address of the buffer, lower 4 bits is channel
> +	 */
> +	clk_data = memalign(16, sizeof(struct msg_get_clock_rate));
> +	memset(clk_data, 0, sizeof(struct msg_get_clock_rate));
> +	clk_data->hdr.buf_size = sizeof(struct msg_get_clock_rate);
> +	clk_data->get_clock_rate.tag_hdr.tag = BCM2835_MBOX_TAG_GET_CLOCK_RATE;
> +	clk_data->get_clock_rate.tag_hdr.val_buf_size =
> +			sizeof(clk_data->get_clock_rate.body);
> +	clk_data->get_clock_rate.tag_hdr.val_len =
> +			sizeof(clk_data->get_clock_rate.body.req);
> +	clk_data->get_clock_rate.body.req.clock_id = BCM2835_MBOX_CLOCK_ID_EMMC;
> +
> +	if (!bcm2835_mci_get_emmc_clock(clk_data)) {
> +		dev_warn(host->hw_dev,
> +				"Failed getting emmc clock, lets go anyway with 50MHz\n");
> +		host->max_clock = 50000000;
> +	} else {
> +		host->max_clock = clk_data->get_clock_rate.body.resp.rate_hz;
> +		dev_info(host->hw_dev, "Got emmc clock at %d Hz\n",
> +				host->max_clock);
> +	}
> +
> +	host->regs = dev_request_mem_region(hw_dev, 0);
> +	if (host->regs == NULL) {
> +		dev_err(host->hw_dev, "Failed request mem region, aborting...\n");
> +		return -EBUSY;
> +	}
> +
> +	host->mci.host_caps |= MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz;
> +
> +	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
> +
> +	host->mci.f_min = MIN_FREQ;
> +	host->mci.f_max = host->max_clock;
> +
> +	/*
> +	 * The Arasan has a bugette whereby it may lose the content of
> +	 * successive writes to registers that are within two SD-card clock
> +	 * cycles of each other (a clock domain crossing problem).
> +	 *
> +	 * 1/MIN_FREQ is (max) time per tick of eMMC clock.
> +	 * 2/MIN_FREQ is time for two ticks.
> +	 * Multiply by 1000000000 to get nS per two ticks.
> +	 * +1 for hack rounding.
> +	 */
> +
> +	twoticks_delay = ((2 * 1000000000) / MIN_FREQ) + 1;
> +
> +	host->version = bcm2835_mci_read(
> +			host, BCM2835_MCI_SLOTISR_VER);
> +	host->version = (host->version >> 16) & 0xFF;
> +	return mci_register(&host->mci);
> +}
> +
> +static struct driver_d bcm2835_mci_driver = {
> +	.name = "bcm2835_mci",
> +	.probe = bcm2835_mci_probe,
> +};
> +
> +static int bcm2835_mci_add(void)
> +{
> +	return platform_driver_register(&bcm2835_mci_driver);
> +}
> +coredevice_initcall(bcm2835_mci_add);
> diff --git a/drivers/mci/mci-bcm2835.h b/drivers/mci/mci-bcm2835.h
> new file mode 100644
> index 0000000..bd1709d
> --- /dev/null
> +++ b/drivers/mci/mci-bcm2835.h
> @@ -0,0 +1,126 @@
> +#define BCM2835_MCI_ARG2				0x0
> +#define BCM2835_MCI_BLKSIZECNT			0x4
> +#define BCM2835_MCI_ARG1				0x8
> +#define BCM2835_MCI_CMDTM				0xc
> +#define BCM2835_MCI_RESP0				0x10
> +#define BCM2835_MCI_RESP1				0x14
> +#define BCM2835_MCI_RESP2				0x18
> +#define BCM2835_MCI_RESP3				0x1c
> +#define BCM2835_MCI_DATA				0x20
> +#define BCM2835_MCI_STATUS				0x24
> +#define BCM2835_MCI_CONTROL0			0x28
> +#define BCM2835_MCI_CONTROL1			0x2c
> +#define BCM2835_MCI_INTERRUPT			0x30
> +#define BCM2835_MCI_IRPT_MASK			0x34
> +#define BCM2835_MCI_IRPT_EN				0x38
> +#define BCM2835_MCI_CONTROL2			0x3c
> +#define BCM2835_MCI_FORCE_IRPT			0x50
> +#define BCM2835_MCI_BOOT_TIMEOUT		0x70
> +#define BCM2835_MCI_DBG_SEL				0x74
> +#define BCM2835_MCI_EXRDFIFO_CFG		0x80
> +#define BCM2835_MCI_EXRDFIFO_EN			0x84
> +#define BCM2835_MCI_TUNE_STEP			0x88
> +#define BCM2835_MCI_TUNE_STEPS_STD		0x8c
> +#define BCM2835_MCI_TUNE_STEPS_DDR		0x90
> +#define BCM2835_MCI_SPI_INT_SPT			0xf0
> +#define BCM2835_MCI_SLOTISR_VER			0xfc
> +
> +#define MIN_FREQ 400000
> +
> +#define SDHCI_SPEC_100	0
> +#define SDHCI_SPEC_200	1
> +#define SDHCI_SPEC_300	2
> +
> +
> +#define CONTROL0_SPIMODE	(1 << 20)
> +#define CONTROL0_HISPEED	(1 << 2)
> +#define CONTROL0_4DATA		(1 << 1)
> +
> +#define CONTROL1_DATARST	(1 << 26)
> +#define CONTROL1_CMDRST		(1 << 25)
> +#define CONTROL1_HOSTRST	(1 << 24)
> +#define CONTROL1_CLKSELPROG	(1 << 5)
> +#define CONTROL1_CLKENA		(1 << 2)
> +#define CONTROL1_CLK_STABLE	(1 << 1)
> +#define CONTROL1_INTCLKENA	(1 << 0)
> +#define CONTROL1_CLKMSB		6
> +#define CONTROL1_CLKLSB		8
> +#define CONTROL1_TIMEOUT	(0x0E << 16)
> +
> +#define MAX_CLK_DIVIDER_V3	2046
> +#define MAX_CLK_DIVIDER_V2	256
> +
> +#define INT_DATA_READ_RDY	(1 << 5)
> +#define INT_DATA_WRITE_RDY	(1 << 4)
> +#define INT_DATA_DONE		(1 << 1)
> +#define INT_CMD_DONE		(1 << 0)
> +#define INT_ERROR_OCCURED	(1 << 15)
> +#define INT_BLOCK_GAP		(1 << 2)
> +
> +
> +#define BLOCK_SHIFT			16
> +
> +#define CMD_SHIFT			24
> +#define CMD_IS_DATA			(1 << 21)
> +#define CMD_CHECK_CRC		(1 << 19)
> +#define CMD_CARD_TO_HOST	(1 << 4)
> +#define CMD_ENA_BLK_CNT		(1 << 1)
> +#define CMD_MULTI_BLK		(1 << 5)
> +#define CMD_RESP_LEN_136	(1 << 16)
> +#define CMD_RESP_LEN_48		(1 << 17)
> +#define CMD_RESP_LEN_48_BSY (0x03 << 16)
> +#define CMD_RESP_CRC_CHK	(1 << 19)
> +
> +#define STATUS_READ_OK		(1 << 11)
> +#define STATUS_WRITE_OK		(1 << 10)
> +#define STATUS_CMD_INHIBIT	(1 << 0)
> +#define STATUS_DAT_INHIBIT	(1 << 1)
> +
> +
> +/*this is only for mbox comms*/
> +#define BCM2835_MBOX_PHYSADDR				0x2000b880
> +#define BCM2835_MBOX_TAG_GET_CLOCK_RATE		0x00030002
> +#define BCM2835_MBOX_CLOCK_ID_EMMC			1
> +#define BCM2835_MBOX_STATUS_WR_FULL			0x80000000
> +#define BCM2835_MBOX_STATUS_RD_EMPTY		0x40000000
> +#define BCM2835_MBOX_PROP_CHAN				8
> +#define BCM2835_MBOX_TAG_VAL_LEN_RESPONSE	0x80000000
> +
> +struct bcm2835_mbox_regs {
> +	u32 read;
> +	u32 rsvd0[5];
> +	u32 status;
> +	u32 config;
> +	u32 write;
> +};
> +
> +
> +struct bcm2835_mbox_hdr {
> +	u32 buf_size;
> +	u32 code;
> +};
> +
> +struct bcm2835_mbox_tag_hdr {
> +	u32 tag;
> +	u32 val_buf_size;
> +	u32 val_len;
> +};
> +
> +struct bcm2835_mbox_tag_get_clock_rate {
> +	struct bcm2835_mbox_tag_hdr tag_hdr;
> +	union {
> +		struct {
> +			u32 clock_id;
> +		} req;
> +		struct {
> +			u32 clock_id;
> +			u32 rate_hz;
> +		} resp;
> +	} body;
> +};
> +
> +struct msg_get_clock_rate {
> +	struct bcm2835_mbox_hdr hdr;
> +	struct bcm2835_mbox_tag_get_clock_rate get_clock_rate;
> +	u32 end_tag;
> +};
> -- 
> 1.8.2.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
