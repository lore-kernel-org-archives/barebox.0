Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward8l.mail.yandex.net ([84.201.143.141])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFei-0001Ht-7K
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:34 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:39 +0300
Message-Id: <1425499906-32125-12-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 11/18] MMC: dw_mmc: Add support for PIO mode and Rockchip
 variant of this hardware
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/mci/Kconfig  |   6 ++
 drivers/mci/dw_mmc.c | 174 ++++++++++++++++++++++++++++++++++++++++++++++++---
 2 files changed, 173 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index dbcc38d..17bf0d3 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -42,6 +42,12 @@ config MCI_DW
 	  block, this provides host support for SD and MMC interfaces, in both
 	  PIO and external DMA modes.
 
+config MCI_DW_PIO
+	bool "Use PIO mode on Synopsys DesignWare MCI"
+	depends on MCI_DW
+	help
+	  Use PIO mode (instead of IDMAC) in DW MMC driver.
+
 config MCI_MXS
 	bool "i.MX23/i.MX28"
 	depends on ARCH_MXS
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 365b60d..1232951 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -125,6 +125,8 @@
 #define DWMCI_CTYPE_8BIT		(1 << 16)
 
 /* Status Register */
+#define DWMCI_STATUS_FIFO_EMPTY		(1 << 2)
+#define DWMCI_STATUS_FIFO_FULL		(1 << 3)
 #define DWMCI_STATUS_BUSY		(1 << 9)
 
 /* FIFOTH Register */
@@ -153,6 +155,8 @@ struct dwmci_host {
 	struct dwmci_idmac *idmac;
 	unsigned long clkrate;
 	int ciu_div;
+	u32 fifoth_val;
+	u32 pwren_value;
 };
 
 struct dwmci_idmac {
@@ -201,6 +205,8 @@ static int dwmci_prepare_data(struct dwmci_host *host,
 		struct mci_data *data)
 {
 	unsigned long ctrl;
+
+#ifndef CONFIG_MCI_DW_PIO
 	unsigned int i = 0, flags, cnt, blk_cnt;
 	unsigned long data_start, start_addr;
 	struct dwmci_idmac *desc = host->idmac;
@@ -256,7 +262,26 @@ static int dwmci_prepare_data(struct dwmci_host *host,
 
 	dwmci_writel(host, DWMCI_BLKSIZ, data->blocksize);
 	dwmci_writel(host, DWMCI_BYTCNT, data->blocksize * data->blocks);
+#else
+	/* PIO MODE */
+	dwmci_wait_reset(host, DWMCI_CTRL_FIFO_RESET);
+	dwmci_writel(host, DWMCI_RINTSTS,
+			DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR);
+
+	ctrl = dwmci_readl(host, DWMCI_INTMASK);
+	ctrl |= DWMCI_INTMSK_TXDR | DWMCI_INTMSK_RXDR;
+	dwmci_writel(host, DWMCI_INTMASK, ctrl);
+
+	ctrl = dwmci_readl(host, DWMCI_CTRL);
+	ctrl &= ~(DWMCI_IDMAC_EN | DWMCI_DMA_EN);
+	dwmci_writel(host, DWMCI_CTRL, ctrl);
 
+	dwmci_writel(host, DWMCI_FIFOTH, host->fifoth_val);
+
+	dwmci_writel(host, DWMCI_TMOUT, 0xFFFFFFFF);
+	dwmci_writel(host, DWMCI_BLKSIZ, data->blocksize);
+	dwmci_writel(host, DWMCI_BYTCNT, data->blocksize * data->blocks);
+#endif
 	return 0;
 }
 
@@ -272,12 +297,108 @@ static int dwmci_set_transfer_mode(struct dwmci_host *host,
 	return mode;
 }
 
+#ifdef CONFIG_MCI_DW_PIO
+static int dwmci_read_data_pio(struct dwmci_host *host, struct mci_data *data)
+{
+	u32 *pdata = (u32 *)data->dest;
+	u32 val, status, timeout;
+	u32 fcnt, bcnt, rcnt, rlen = 0;
+
+	timeout = 100;
+	status = dwmci_readl(host, DWMCI_RINTSTS);
+	while (--timeout && !(status & DWMCI_INTMSK_RXDR))
+		status = dwmci_readl(host, DWMCI_RINTSTS);
+
+	if (!timeout) {
+		dev_err(host->dev, "%s: RX ready wait timeout\n", __func__);
+		return 0;
+	}
+
+	fcnt = data->blocksize;
+	bcnt = data->blocks;
+
+	do {
+		for (rcnt = fcnt>>2; rcnt; rcnt--) {
+			timeout = 20000;
+			status = dwmci_readl(host, DWMCI_STATUS);
+			while (--timeout
+			    && (status & DWMCI_STATUS_FIFO_EMPTY)) {
+				udelay(200);
+				status = dwmci_readl(host, DWMCI_STATUS);
+			}
+			if (!timeout) {
+				dev_err(host->dev, "%s: FIFO underflow timeout\n",
+				    __func__);
+				break;
+			}
+
+			val = dwmci_readl(host, DWMCI_DATA);
+
+			*pdata++ = val;
+			rlen += 4;
+		}
+		status = dwmci_readl(host, DWMCI_RINTSTS);
+		dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_RXDR);
+	} while (--bcnt && (status & DWMCI_INTMSK_RXDR));
+
+	return rlen;
+}
+
+static int dwmci_write_data_pio(struct dwmci_host *host, struct mci_data *data)
+{
+	u32 *pdata = (u32 *)data->src;
+	u32 status, timeout;
+	u32 fcnt, bcnt, wcnt, wlen = 0;
+
+	fcnt = host->fifo_size_bytes;
+
+	bcnt = (data->blocks*data->blocksize)/fcnt;
+
+	timeout = 100;
+	status = dwmci_readl(host, DWMCI_RINTSTS);
+
+	while (--timeout && !(status & DWMCI_INTMSK_TXDR))
+		status = dwmci_readl(host, DWMCI_RINTSTS);
+
+	if (!timeout) {
+		dev_err(host->dev, "%s: TX ready wait timeout\n", __func__);
+		return 0;
+	}
+
+	do {
+		for (wcnt = fcnt>>2; wcnt; wcnt--) {
+			timeout = 20000;
+			status = dwmci_readl(host, DWMCI_STATUS);
+			while (--timeout
+			    && (status & DWMCI_STATUS_FIFO_FULL)) {
+				udelay(200);
+				status = dwmci_readl(host, DWMCI_STATUS);
+			}
+			if (!timeout) {
+				dev_err(host->dev, "%s: FIFO overflow timeout\n",
+				    __func__);
+				break;
+			}
+			dwmci_writel(host, DWMCI_DATA, *pdata++);
+			wlen += 4;
+		}
+		status = dwmci_readl(host, DWMCI_RINTSTS);
+		dwmci_writel(host, DWMCI_RINTSTS, DWMCI_INTMSK_TXDR);
+	} while (--bcnt && (status & DWMCI_INTMSK_TXDR));
+
+	return wlen;
+}
+#endif
+
 static int
 dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
 	struct dwmci_host *host = to_dwmci_host(mci);
 	int flags = 0;
-	uint32_t mask, ctrl;
+	uint32_t mask;
+#ifndef CONFIG_MCI_DW_PIO
+	uint32_t ctrl;
+#endif
 	uint64_t start;
 	int ret;
 	unsigned int num_bytes = 0;
@@ -347,8 +468,10 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 				dwmci_writel(host, DWMCI_RINTSTS, mask);
 			break;
 		}
-		if (is_timeout(start, 100 * MSECOND))
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_dbg(host->dev, "Send command timeout..\n");
 			return -ETIMEDOUT;
+		}
 	}
 
 	if (mask & DWMCI_INTMSK_RTO) {
@@ -374,16 +497,34 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 		start = get_time_ns();
 		do {
 			mask = dwmci_readl(host, DWMCI_RINTSTS);
+#ifdef CONFIG_MCI_DW_PIO
+			if (mask & (DWMCI_DATA_ERR)) {
+#else
 			if (mask & (DWMCI_DATA_ERR | DWMCI_DATA_TOUT)) {
+#endif
 				dev_dbg(host->dev, "DATA ERROR!\n");
 				return -EIO;
 			}
-			if (is_timeout(start, SECOND))
+#ifndef CONFIG_MCI_DW_PIO
+			if (is_timeout(start, SECOND)) {
+#else
+			if (is_timeout(start, SECOND*100)) {
+			/* In PIO end transfer can take more than a second */
+#endif
+				dev_dbg(host->dev, "Data timeout\n");
 				return -ETIMEDOUT;
+			}
+#ifdef CONFIG_MCI_DW_PIO
+			if (mask & DWMCI_INTMSK_RXDR)
+				dwmci_read_data_pio(host, data);
+			if (mask & DWMCI_INTMSK_TXDR)
+				dwmci_write_data_pio(host, data);
+#endif
 		} while (!(mask & DWMCI_INTMSK_DTO));
 
 		dwmci_writel(host, DWMCI_RINTSTS, mask);
 
+#ifndef CONFIG_MCI_DW_PIO
 		ctrl = dwmci_readl(host, DWMCI_CTRL);
 		ctrl &= ~(DWMCI_DMA_EN);
 		dwmci_writel(host, DWMCI_CTRL, ctrl);
@@ -392,6 +533,7 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 			dma_inv_range((unsigned long)data->dest,
 					(unsigned long)(data->dest + data->blocks * 512));
 		}
+#endif
 	}
 
 	udelay(100);
@@ -480,9 +622,9 @@ static int dwmci_card_present(struct mci_host *mci)
 static int dwmci_init(struct mci_host *mci, struct device_d *dev)
 {
 	struct dwmci_host *host = to_dwmci_host(mci);
-	uint32_t fifo_size, fifoth_val;
+	uint32_t fifo_size;
 
-	dwmci_writel(host, DWMCI_PWREN, 1);
+	dwmci_writel(host, DWMCI_PWREN, host->pwren_value);
 
 	if (dwmci_wait_reset(host, DWMCI_RESET_ALL)) {
 		dev_err(host->dev, "reset failed\n");
@@ -506,11 +648,21 @@ static int dwmci_init(struct mci_host *mci, struct device_d *dev)
 	fifo_size = DWMCI_FIFOTH_FIFO_DEPTH(fifo_size);
 	host->fifo_size_bytes = fifo_size * 4;
 
-	fifoth_val = DWMCI_FIFOTH_MSIZE(0x2) |
+	/*
+	 * If fifo-depth property is set, use this value
+	 */
+	if (!of_property_read_u32(host->dev->device_node,
+		    "fifo-depth", &fifo_size)) {
+		host->fifo_size_bytes = fifo_size;
+		dev_dbg(host->dev, "Using fifo-depth=%u\n",
+		    host->fifo_size_bytes);
+	}
+
+	host->fifoth_val = DWMCI_FIFOTH_MSIZE(0x2) |
 		DWMCI_FIFOTH_RX_WMARK(fifo_size / 2 - 1) |
 		DWMCI_FIFOTH_TX_WMARK(fifo_size / 2);
 
-	dwmci_writel(host, DWMCI_FIFOTH, fifoth_val);
+	dwmci_writel(host, DWMCI_FIFOTH, host->fifoth_val);
 
 	dwmci_writel(host, DWMCI_CLKENA, 0);
 	dwmci_writel(host, DWMCI_CLKSRC, 0);
@@ -574,6 +726,12 @@ static int dw_mmc_probe(struct device_d *dev)
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 	host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
 
+	if (of_device_is_compatible(dev->device_node,
+	    "rockchip,rk2928-dw-mshc"))
+		host->pwren_value = 0;
+	else
+		host->pwren_value = 1;
+
 	dev->detect = dw_mmc_detect;
 
 	host->clkrate = clk_get_rate(host->clk_ciu);
@@ -593,6 +751,8 @@ static __maybe_unused struct of_device_id dw_mmc_compatible[] = {
 	{
 		.compatible = "altr,socfpga-dw-mshc",
 	}, {
+		.compatible = "rockchip,rk2928-dw-mshc",
+	}, {
 		/* sentinel */
 	}
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
