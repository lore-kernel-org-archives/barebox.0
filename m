Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxnc-0002s8-C0
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 10:42:02 +0000
Date: Mon, 14 Oct 2019 12:41:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014104158.ylpj6ux6j4ovhppx@pengutronix.de>
References: <20191009110023.15352-1-o.rempel@pengutronix.de>
 <20191009110023.15352-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009110023.15352-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 2/2] mci: add support for stm32mp sd/mmc controller
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 09, 2019 at 01:00:23PM +0200, Oleksij Rempel wrote:
> This driver was ported from u-boot v2019.10.
> Instead of devicetree compatible it is using ARM AMBA id. So, there is
> no need to patch devicetree with different compatible as it was
> implemented in u-boot.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/mci/Kconfig        |   8 +
>  drivers/mci/Makefile       |   1 +
>  drivers/mci/stm32_sdmmc2.c | 680 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 689 insertions(+)
>  create mode 100644 drivers/mci/stm32_sdmmc2.c
> 
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 08c8c84e8c..5b56031013 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -153,4 +153,12 @@ config MMC_SPI_CRC_ON
>  	help
>  	  Enable CRC protection for transfers
>  
> +config MCI_STM32_SDMMC2
> +	bool "STMicroelectronics STM32H7 SD/MMC Host Controller support"
> +	depends on ARM_AMBA
> +	help
> +	  This selects support for the SD/MMC controller on STM32H7 SoCs.
> +	  If you have a board based on such a SoC and with a SD/MMC slot,
> +	  say Y or M here.
> +
>  endif
> diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
> index 25a1d073dc..04c1287fee 100644
> --- a/drivers/mci/Makefile
> +++ b/drivers/mci/Makefile
> @@ -14,3 +14,4 @@ obj-$(CONFIG_MCI_TEGRA)		+= tegra-sdmmc.o
>  obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
>  obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
>  obj-$(CONFIG_MCI_MMCI)		+= mmci.o
> +obj-$(CONFIG_MCI_STM32_SDMMC2)	+= stm32_sdmmc2.o
> diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> new file mode 100644
> index 0000000000..4fb3cbc6a5
> --- /dev/null
> +++ b/drivers/mci/stm32_sdmmc2.c
> @@ -0,0 +1,680 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2017, STMicroelectronics - All Rights Reserved
> + * Author(s): Patrice Chotard, <patrice.chotard@st.com> for STMicroelectronics.
> + */
> +
> +#include <common.h>
> +#include <dma.h>
> +#include <init.h>
> +#include <linux/amba/bus.h>
> +#include <linux/iopoll.h>
> +#include <linux/log2.h>
> +#include <linux/reset.h>
> +#include <mci.h>
> +
> +#define DRIVER_NAME "stm32_sdmmc"
> +
> +/* SDMMC REGISTERS OFFSET */
> +#define SDMMC_POWER		0x00	/* SDMMC power control             */
> +#define SDMMC_CLKCR		0x04	/* SDMMC clock control             */
> +#define SDMMC_ARG		0x08	/* SDMMC argument                  */
> +#define SDMMC_CMD		0x0C	/* SDMMC command                   */
> +#define SDMMC_RESP1		0x14	/* SDMMC response 1                */
> +#define SDMMC_RESP2		0x18	/* SDMMC response 2                */
> +#define SDMMC_RESP3		0x1C	/* SDMMC response 3                */
> +#define SDMMC_RESP4		0x20	/* SDMMC response 4                */
> +#define SDMMC_DTIMER		0x24	/* SDMMC data timer                */
> +#define SDMMC_DLEN		0x28	/* SDMMC data length               */
> +#define SDMMC_DCTRL		0x2C	/* SDMMC data control              */
> +#define SDMMC_DCOUNT		0x30	/* SDMMC data counter              */
> +#define SDMMC_STA		0x34	/* SDMMC status                    */
> +#define SDMMC_ICR		0x38	/* SDMMC interrupt clear           */
> +#define SDMMC_MASK		0x3C	/* SDMMC mask                      */
> +#define SDMMC_IDMACTRL		0x50	/* SDMMC DMA control               */
> +#define SDMMC_IDMABASE0		0x58	/* SDMMC DMA buffer 0 base address */
> +
> +/* SDMMC_POWER register */
> +#define SDMMC_POWER_PWRCTRL_MASK	GENMASK(1, 0)
> +#define SDMMC_POWER_PWRCTRL_OFF		0
> +#define SDMMC_POWER_PWRCTRL_CYCLE	2
> +#define SDMMC_POWER_PWRCTRL_ON		3
> +#define SDMMC_POWER_VSWITCH		BIT(2)
> +#define SDMMC_POWER_VSWITCHEN		BIT(3)
> +#define SDMMC_POWER_DIRPOL		BIT(4)
> +
> +/* SDMMC_CLKCR register */
> +#define SDMMC_CLKCR_CLKDIV		GENMASK(9, 0)
> +#define SDMMC_CLKCR_CLKDIV_MAX		SDMMC_CLKCR_CLKDIV
> +#define SDMMC_CLKCR_PWRSAV		BIT(12)
> +#define SDMMC_CLKCR_WIDBUS_4		BIT(14)
> +#define SDMMC_CLKCR_WIDBUS_8		BIT(15)
> +#define SDMMC_CLKCR_NEGEDGE		BIT(16)
> +#define SDMMC_CLKCR_HWFC_EN		BIT(17)
> +#define SDMMC_CLKCR_DDR			BIT(18)
> +#define SDMMC_CLKCR_BUSSPEED		BIT(19)
> +#define SDMMC_CLKCR_SELCLKRX_MASK	GENMASK(21, 20)
> +#define SDMMC_CLKCR_SELCLKRX_CK		0
> +#define SDMMC_CLKCR_SELCLKRX_CKIN	BIT(20)
> +#define SDMMC_CLKCR_SELCLKRX_FBCK	BIT(21)
> +
> +/* SDMMC_CMD register */
> +#define SDMMC_CMD_CMDINDEX		GENMASK(5, 0)
> +#define SDMMC_CMD_CMDTRANS		BIT(6)
> +#define SDMMC_CMD_CMDSTOP		BIT(7)
> +#define SDMMC_CMD_WAITRESP		GENMASK(9, 8)
> +#define SDMMC_CMD_WAITRESP_0		BIT(8)
> +#define SDMMC_CMD_WAITRESP_1		BIT(9)
> +#define SDMMC_CMD_WAITINT		BIT(10)
> +#define SDMMC_CMD_WAITPEND		BIT(11)
> +#define SDMMC_CMD_CPSMEN		BIT(12)
> +#define SDMMC_CMD_DTHOLD		BIT(13)
> +#define SDMMC_CMD_BOOTMODE		BIT(14)
> +#define SDMMC_CMD_BOOTEN		BIT(15)
> +#define SDMMC_CMD_CMDSUSPEND		BIT(16)
> +
> +/* SDMMC_DCTRL register */
> +#define SDMMC_DCTRL_DTEN		BIT(0)
> +#define SDMMC_DCTRL_DTDIR		BIT(1)
> +#define SDMMC_DCTRL_DTMODE		GENMASK(3, 2)
> +#define SDMMC_DCTRL_DBLOCKSIZE		GENMASK(7, 4)
> +#define SDMMC_DCTRL_DBLOCKSIZE_SHIFT	4
> +#define SDMMC_DCTRL_RWSTART		BIT(8)
> +#define SDMMC_DCTRL_RWSTOP		BIT(9)
> +#define SDMMC_DCTRL_RWMOD		BIT(10)
> +#define SDMMC_DCTRL_SDMMCEN		BIT(11)
> +#define SDMMC_DCTRL_BOOTACKEN		BIT(12)
> +#define SDMMC_DCTRL_FIFORST		BIT(13)
> +
> +/* SDMMC_STA register */
> +#define SDMMC_STA_CCRCFAIL		BIT(0)
> +#define SDMMC_STA_DCRCFAIL		BIT(1)
> +#define SDMMC_STA_CTIMEOUT		BIT(2)
> +#define SDMMC_STA_DTIMEOUT		BIT(3)
> +#define SDMMC_STA_TXUNDERR		BIT(4)
> +#define SDMMC_STA_RXOVERR		BIT(5)
> +#define SDMMC_STA_CMDREND		BIT(6)
> +#define SDMMC_STA_CMDSENT		BIT(7)
> +#define SDMMC_STA_DATAEND		BIT(8)
> +#define SDMMC_STA_DHOLD			BIT(9)
> +#define SDMMC_STA_DBCKEND		BIT(10)
> +#define SDMMC_STA_DABORT		BIT(11)
> +#define SDMMC_STA_DPSMACT		BIT(12)
> +#define SDMMC_STA_CPSMACT		BIT(13)
> +#define SDMMC_STA_TXFIFOHE		BIT(14)
> +#define SDMMC_STA_RXFIFOHF		BIT(15)
> +#define SDMMC_STA_TXFIFOF		BIT(16)
> +#define SDMMC_STA_RXFIFOF		BIT(17)
> +#define SDMMC_STA_TXFIFOE		BIT(18)
> +#define SDMMC_STA_RXFIFOE		BIT(19)
> +#define SDMMC_STA_BUSYD0		BIT(20)
> +#define SDMMC_STA_BUSYD0END		BIT(21)
> +#define SDMMC_STA_SDMMCIT		BIT(22)
> +#define SDMMC_STA_ACKFAIL		BIT(23)
> +#define SDMMC_STA_ACKTIMEOUT		BIT(24)
> +#define SDMMC_STA_VSWEND		BIT(25)
> +#define SDMMC_STA_CKSTOP		BIT(26)
> +#define SDMMC_STA_IDMATE		BIT(27)
> +#define SDMMC_STA_IDMABTC		BIT(28)
> +
> +/* SDMMC_ICR register */
> +#define SDMMC_ICR_CCRCFAILC		BIT(0)
> +#define SDMMC_ICR_DCRCFAILC		BIT(1)
> +#define SDMMC_ICR_CTIMEOUTC		BIT(2)
> +#define SDMMC_ICR_DTIMEOUTC		BIT(3)
> +#define SDMMC_ICR_TXUNDERRC		BIT(4)
> +#define SDMMC_ICR_RXOVERRC		BIT(5)
> +#define SDMMC_ICR_CMDRENDC		BIT(6)
> +#define SDMMC_ICR_CMDSENTC		BIT(7)
> +#define SDMMC_ICR_DATAENDC		BIT(8)
> +#define SDMMC_ICR_DHOLDC		BIT(9)
> +#define SDMMC_ICR_DBCKENDC		BIT(10)
> +#define SDMMC_ICR_DABORTC		BIT(11)
> +#define SDMMC_ICR_BUSYD0ENDC		BIT(21)
> +#define SDMMC_ICR_SDMMCITC		BIT(22)
> +#define SDMMC_ICR_ACKFAILC		BIT(23)
> +#define SDMMC_ICR_ACKTIMEOUTC		BIT(24)
> +#define SDMMC_ICR_VSWENDC		BIT(25)
> +#define SDMMC_ICR_CKSTOPC		BIT(26)
> +#define SDMMC_ICR_IDMATEC		BIT(27)
> +#define SDMMC_ICR_IDMABTCC		BIT(28)
> +#define SDMMC_ICR_STATIC_FLAGS		((GENMASK(28, 21)) | (GENMASK(11, 0)))
> +
> +/* SDMMC_MASK register */
> +#define SDMMC_MASK_CCRCFAILIE		BIT(0)
> +#define SDMMC_MASK_DCRCFAILIE		BIT(1)
> +#define SDMMC_MASK_CTIMEOUTIE		BIT(2)
> +#define SDMMC_MASK_DTIMEOUTIE		BIT(3)
> +#define SDMMC_MASK_TXUNDERRIE		BIT(4)
> +#define SDMMC_MASK_RXOVERRIE		BIT(5)
> +#define SDMMC_MASK_CMDRENDIE		BIT(6)
> +#define SDMMC_MASK_CMDSENTIE		BIT(7)
> +#define SDMMC_MASK_DATAENDIE		BIT(8)
> +#define SDMMC_MASK_DHOLDIE		BIT(9)
> +#define SDMMC_MASK_DBCKENDIE		BIT(10)
> +#define SDMMC_MASK_DABORTIE		BIT(11)
> +#define SDMMC_MASK_TXFIFOHEIE		BIT(14)
> +#define SDMMC_MASK_RXFIFOHFIE		BIT(15)
> +#define SDMMC_MASK_RXFIFOFIE		BIT(17)
> +#define SDMMC_MASK_TXFIFOEIE		BIT(18)
> +#define SDMMC_MASK_BUSYD0ENDIE		BIT(21)
> +#define SDMMC_MASK_SDMMCITIE		BIT(22)
> +#define SDMMC_MASK_ACKFAILIE		BIT(23)
> +#define SDMMC_MASK_ACKTIMEOUTIE		BIT(24)
> +#define SDMMC_MASK_VSWENDIE		BIT(25)
> +#define SDMMC_MASK_CKSTOPIE		BIT(26)
> +#define SDMMC_MASK_IDMABTCIE		BIT(28)
> +
> +/* SDMMC_IDMACTRL register */
> +#define SDMMC_IDMACTRL_IDMAEN		BIT(0)
> +
> +#define SDMMC_CMD_TIMEOUT		0xFFFFFFFF
> +#define SDMMC_BUSYD0END_TIMEOUT_US	2000000
> +
> +#define IS_RISING_EDGE(reg) ((reg) & SDMMC_CLKCR_NEGEDGE ? 0 : 1)
> +
> +struct stm32_sdmmc2_priv {
> +	void __iomem *base;
> +	struct mci_host mci;
> +	struct device_d	*dev;
> +	struct clk *clk;
> +	struct reset_control *reset_ctl;
> +	u32 clk_reg_msk;
> +	u32 pwr_reg_msk;
> +};
> +
> +struct stm32_sdmmc2_ctx {
> +	u32 cache_start;
> +	u32 cache_end;
> +	u32 data_length;
> +	bool dpsm_abort;
> +};
> +
> +#define to_mci_host(mci)	container_of(mci, struct stm32_sdmmc2_priv, mci)
> +
> +static void stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
> +				    struct mci_data *data,
> +				    struct stm32_sdmmc2_ctx *ctx)
> +{
> +	unsigned int num_bytes = data->blocks * data->blocksize;
> +	u32 data_ctrl, idmabase0;
> +
> +	/* Configure the SDMMC DPSM (Data Path State Machine) */
> +	data_ctrl = (__ilog2_u32(data->blocksize) <<
> +		     SDMMC_DCTRL_DBLOCKSIZE_SHIFT) &
> +		    SDMMC_DCTRL_DBLOCKSIZE;
> +
> +	if (data->flags & MMC_DATA_READ) {
> +		data_ctrl |= SDMMC_DCTRL_DTDIR;
> +		idmabase0 = (u32)data->dest;
> +	} else {
> +		idmabase0 = (u32)data->src;
> +	}
> +
> +	/* Set the SDMMC DataLength value */
> +	writel(ctx->data_length, priv->base + SDMMC_DLEN);
> +
> +	/* Write to SDMMC DCTRL */
> +	writel(data_ctrl, priv->base + SDMMC_DCTRL);
> +
> +	if (data->flags & MMC_DATA_WRITE)
> +		dma_sync_single_for_device((unsigned long)idmabase0,
> +					   num_bytes, DMA_TO_DEVICE);
> +	else
> +		dma_sync_single_for_device((unsigned long)idmabase0,
> +					   num_bytes, DMA_FROM_DEVICE);
> +
> +	/* Enable internal DMA */
> +	writel(idmabase0, priv->base + SDMMC_IDMABASE0);
> +	writel(SDMMC_IDMACTRL_IDMAEN, priv->base + SDMMC_IDMACTRL);
> +}
> +
> +static void stm32_sdmmc2_start_cmd(struct stm32_sdmmc2_priv *priv,
> +				   struct mci_cmd *cmd, u32 cmd_param,
> +				   struct stm32_sdmmc2_ctx *ctx)
> +{
> +	u32 timeout = 0;
> +
> +	if (readl(priv->base + SDMMC_CMD) & SDMMC_CMD_CPSMEN)
> +		writel(0, priv->base + SDMMC_CMD);
> +
> +	cmd_param |= cmd->cmdidx | SDMMC_CMD_CPSMEN;
> +	if (cmd->resp_type & MMC_RSP_PRESENT) {
> +		if (cmd->resp_type & MMC_RSP_136)
> +			cmd_param |= SDMMC_CMD_WAITRESP;
> +		else if (cmd->resp_type & MMC_RSP_CRC)
> +			cmd_param |= SDMMC_CMD_WAITRESP_0;
> +		else
> +			cmd_param |= SDMMC_CMD_WAITRESP_1;
> +	}
> +
> +	/*
> +	 * SDMMC_DTIME must be set in two case:
> +	 * - on data transfert.
> +	 * - on busy request.
> +	 * If not done or too short, the dtimeout flag occurs and DPSM stays
> +	 * enabled/busy and waits for abort (stop transmission cmd).
> +	 * Next data command is not possible whereas DPSM is activated.
> +	 */
> +	if (ctx->data_length) {
> +		timeout = SDMMC_CMD_TIMEOUT;
> +	} else {
> +		writel(0, priv->base + SDMMC_DCTRL);
> +
> +		if (cmd->resp_type & MMC_RSP_BUSY)
> +			timeout = SDMMC_CMD_TIMEOUT;
> +	}
> +
> +	/* Set the SDMMC Data TimeOut value */
> +	writel(timeout, priv->base + SDMMC_DTIMER);
> +
> +	/* Clear flags */
> +	writel(SDMMC_ICR_STATIC_FLAGS, priv->base + SDMMC_ICR);
> +
> +	/* Set SDMMC argument value */
> +	writel(cmd->cmdarg, priv->base + SDMMC_ARG);
> +
> +	/* Set SDMMC command parameters */
> +	writel(cmd_param, priv->base + SDMMC_CMD);
> +}
> +
> +static int stm32_sdmmc2_end_cmd(struct stm32_sdmmc2_priv *priv,
> +				struct mci_cmd *cmd,
> +				struct stm32_sdmmc2_ctx *ctx)
> +{
> +	u32 mask = SDMMC_STA_CTIMEOUT;
> +	u32 status;
> +	int ret;
> +
> +	if (cmd->resp_type & MMC_RSP_PRESENT) {
> +		mask |= SDMMC_STA_CMDREND;
> +		if (cmd->resp_type & MMC_RSP_CRC)
> +			mask |= SDMMC_STA_CCRCFAIL;
> +	} else {
> +		mask |= SDMMC_STA_CMDSENT;
> +	}
> +
> +	/* Polling status register */
> +	ret = readl_poll_timeout(priv->base + SDMMC_STA, status, status & mask,
> +				 1000000);
> +
> +	if (ret < 0) {
> +		dev_err(priv->dev, "%s: timeout reading SDMMC_STA register\n",
> +			__func__);
> +		ctx->dpsm_abort = true;
> +		return ret;
> +	}
> +
> +	/* Check status */
> +	if (status & SDMMC_STA_CTIMEOUT) {
> +		dev_err(priv->dev, "%s: error SDMMC_STA_CTIMEOUT (0x%x) for cmd %d\n",
> +			__func__, status, cmd->cmdidx);
> +		ctx->dpsm_abort = true;
> +		return -ETIMEDOUT;
> +	}
> +
> +	if (status & SDMMC_STA_CCRCFAIL && cmd->resp_type & MMC_RSP_CRC) {
> +		dev_err(priv->dev, "%s: error SDMMC_STA_CCRCFAIL (0x%x) for cmd %d\n",
> +			__func__, status, cmd->cmdidx);
> +		ctx->dpsm_abort = true;
> +		return -EILSEQ;
> +	}
> +
> +	if (status & SDMMC_STA_CMDREND && cmd->resp_type & MMC_RSP_PRESENT) {
> +		cmd->response[0] = readl(priv->base + SDMMC_RESP1);
> +		if (cmd->resp_type & MMC_RSP_136) {
> +			cmd->response[1] = readl(priv->base + SDMMC_RESP2);
> +			cmd->response[2] = readl(priv->base + SDMMC_RESP3);
> +			cmd->response[3] = readl(priv->base + SDMMC_RESP4);
> +		}
> +
> +		/* Wait for BUSYD0END flag if busy status is detected */
> +		if (cmd->resp_type & MMC_RSP_BUSY &&
> +		    status & SDMMC_STA_BUSYD0) {
> +			mask = SDMMC_STA_DTIMEOUT | SDMMC_STA_BUSYD0END;
> +
> +			/* Polling status register */
> +			ret = readl_poll_timeout(priv->base + SDMMC_STA,
> +						 status, status & mask,
> +						 SDMMC_BUSYD0END_TIMEOUT_US);
> +
> +			if (ret < 0) {
> +				dev_err(priv->dev, "%s: timeout reading SDMMC_STA\n",
> +					__func__);
> +				ctx->dpsm_abort = true;
> +				return ret;
> +			}
> +
> +			if (status & SDMMC_STA_DTIMEOUT) {
> +				dev_err(priv->dev, "%s: error SDMMC_STA_DTIMEOUT (0x%x)\n",
> +					__func__, status);
> +				ctx->dpsm_abort = true;
> +				return -ETIMEDOUT;
> +			}
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int stm32_sdmmc2_end_data(struct stm32_sdmmc2_priv *priv,
> +				 struct mci_cmd *cmd,
> +				 struct mci_data *data,
> +				 struct stm32_sdmmc2_ctx *ctx)
> +{
> +	u32 mask = SDMMC_STA_DCRCFAIL | SDMMC_STA_DTIMEOUT |
> +		   SDMMC_STA_IDMATE | SDMMC_STA_DATAEND;
> +	unsigned int num_bytes = data->blocks * data->blocksize;
> +	u32 status;
> +
> +	if (data->flags & MMC_DATA_READ)
> +		mask |= SDMMC_STA_RXOVERR;
> +	else
> +		mask |= SDMMC_STA_TXUNDERR;
> +
> +	status = readl(priv->base + SDMMC_STA);
> +	while (!(status & mask))
> +		status = readl(priv->base + SDMMC_STA);

You already use readl_poll_timeout() in the driver. You should use it
here as well.

> +
> +	if (data->flags & MMC_DATA_WRITE)
> +		dma_sync_single_for_cpu((unsigned long)data->src,
> +					num_bytes, DMA_TO_DEVICE);
> +	else
> +		dma_sync_single_for_cpu((unsigned long)data->dest,
> +					num_bytes, DMA_FROM_DEVICE);
> +
> +	if (status & SDMMC_STA_DCRCFAIL) {
> +		dev_err(priv->dev, "%s: error SDMMC_STA_DCRCFAIL (0x%x) for cmd %d\n",
> +			__func__, status, cmd->cmdidx);
> +		if (readl(priv->base + SDMMC_DCOUNT))
> +			ctx->dpsm_abort = true;
> +		return -EILSEQ;
> +	}
> +
> +	if (status & SDMMC_STA_DTIMEOUT) {
> +		dev_err(priv->dev, "%s: error SDMMC_STA_DTIMEOUT (0x%x) for cmd %d\n",
> +			__func__, status, cmd->cmdidx);
> +		ctx->dpsm_abort = true;
> +		return -ETIMEDOUT;
> +	}
> +
> +	if (status & SDMMC_STA_TXUNDERR) {
> +		dev_err(priv->dev, "%s: error SDMMC_STA_TXUNDERR (0x%x) for cmd %d\n",
> +			__func__, status, cmd->cmdidx);
> +		ctx->dpsm_abort = true;
> +		return -EIO;
> +	}
> +
> +	if (status & SDMMC_STA_RXOVERR) {
> +		dev_err(priv->dev, "%s: error SDMMC_STA_RXOVERR (0x%x) for cmd %d\n",
> +			__func__, status, cmd->cmdidx);
> +		ctx->dpsm_abort = true;
> +		return -EIO;
> +	}
> +
> +	if (status & SDMMC_STA_IDMATE) {
> +		dev_err(priv->dev, "%s: error SDMMC_STA_IDMATE (0x%x) for cmd %d\n",
> +			__func__, status, cmd->cmdidx);
> +		ctx->dpsm_abort = true;
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
> +				 struct mci_data *data)
> +{
> +	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
> +	struct stm32_sdmmc2_ctx ctx;
> +	u32 cmdat = data ? SDMMC_CMD_CMDTRANS : 0;
> +	int ret, retry = 3;
> +
> +retry_cmd:
> +	ctx.data_length = 0;
> +	ctx.dpsm_abort = false;
> +
> +	if (data) {
> +		ctx.data_length = data->blocks * data->blocksize;
> +		stm32_sdmmc2_start_data(priv, data, &ctx);
> +	}
> +
> +	stm32_sdmmc2_start_cmd(priv, cmd, cmdat, &ctx);
> +
> +	dev_dbg(priv->dev, "%s: send cmd %d data: 0x%x @ 0x%x\n", __func__,
> +		cmd->cmdidx, data ? ctx.data_length : 0, (unsigned int)data);
> +
> +	ret = stm32_sdmmc2_end_cmd(priv, cmd, &ctx);
> +
> +	if (data && !ret)
> +		ret = stm32_sdmmc2_end_data(priv, cmd, data, &ctx);

Every time stm32_sdmmc2_end_cmd() and stm32_sdmmc2_end_data() return
with an error ctx->dpsm_abort is set to true. Can't you react on the
returned error instead of adding an extra variable to the context?

> +
> +	/* Clear flags */
> +	writel(SDMMC_ICR_STATIC_FLAGS, priv->base + SDMMC_ICR);
> +	if (data)
> +		writel(0x0, priv->base + SDMMC_IDMACTRL);
> +
> +	/*
> +	 * To stop Data Path State Machine, a stop_transmission command
> +	 * shall be send on cmd or data errors.
> +	 */
> +	if (ctx.dpsm_abort && cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION) {
> +		struct mci_cmd stop_cmd;
> +
> +		stop_cmd.cmdidx = MMC_CMD_STOP_TRANSMISSION;
> +		stop_cmd.cmdarg = 0;
> +		stop_cmd.resp_type = MMC_RSP_R1b;
> +
> +		dev_dbg(priv->dev, "%s: send STOP command to abort dpsm treatments\n",
> +			__func__);
> +
> +		ctx.data_length = 0;
> +
> +		stm32_sdmmc2_start_cmd(priv, &stop_cmd,
> +				       SDMMC_CMD_CMDSTOP, &ctx);
> +		stm32_sdmmc2_end_cmd(priv, &stop_cmd, &ctx);
> +
> +		writel(SDMMC_ICR_STATIC_FLAGS, priv->base + SDMMC_ICR);
> +	}
> +
> +	if (ret != -ETIMEDOUT && ret != 0 && retry) {
> +		dev_warn(priv->dev, "%s: cmd %d failed, retrying ...\n",
> +			 __func__, cmd->cmdidx);
> +		retry--;
> +		goto retry_cmd;
> +	}

Does this ever happen?

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
