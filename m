Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16f-0006xj-Ik
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:21 +0100
Message-Id: <20191119105036.12300-7-s.hauer@pengutronix.de>
In-Reply-To: <20191119105036.12300-1-s.hauer@pengutronix.de>
References: <20191119105036.12300-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 06/21] mci: dove: use sdhci helpers
To: Barebox List <barebox@lists.infradead.org>

To use the sdhci helpers we have to switch to the sdhci accessors.
Also use sdhci_read_response().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig      |   1 +
 drivers/mci/dove-sdhci.c | 116 +++++++++++++++++++++------------------
 2 files changed, 63 insertions(+), 54 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 7c5310deaf..526600556b 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -77,6 +77,7 @@ config MCI_BCM283X_SDHOST
 config MCI_DOVE
 	bool "Marvell Dove SDHCI"
 	depends on ARCH_DOVE
+	select MCI_SDHCI
 	help
 	  Enable this entry to add support to read and write SD cards on a
 	  Marvell Dove SoC based system.
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index caee4107eb..7818bef0d9 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -33,38 +33,51 @@
 struct dove_sdhci {
 	struct mci_host mci;
 	void __iomem *base;
+	struct sdhci sdhci;
 };
 
 #define priv_from_mci_host(h)	\
 	container_of(h, struct dove_sdhci, mci);
 
-static inline void dove_sdhci_writel(struct dove_sdhci *p, int reg, u32 val)
+static void dove_sdhci_writel(struct sdhci *sdhci, int reg, u32 val)
 {
+	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
+
 	writel(val, p->base + reg);
 }
 
-static inline void dove_sdhci_writew(struct dove_sdhci *p, int reg, u16 val)
+static void dove_sdhci_writew(struct sdhci *sdhci, int reg, u16 val)
 {
+	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
+
 	writew(val, p->base + reg);
 }
 
-static inline void dove_sdhci_writeb(struct dove_sdhci *p, int reg, u8 val)
+static void dove_sdhci_writeb(struct sdhci *sdhci, int reg, u8 val)
 {
+	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
+
 	writeb(val, p->base + reg);
 }
 
-static inline u32 dove_sdhci_readl(struct dove_sdhci *p, int reg)
+static u32 dove_sdhci_readl(struct sdhci *sdhci, int reg)
 {
+	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
+
 	return readl(p->base + reg);
 }
 
-static inline u16 dove_sdhci_readw(struct dove_sdhci *p, int reg)
+static u16 dove_sdhci_readw(struct sdhci *sdhci, int reg)
 {
+	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
+
 	return readw(p->base + reg);
 }
 
-static inline u8 dove_sdhci_readb(struct dove_sdhci *p, int reg)
+static u8 dove_sdhci_readb(struct sdhci *sdhci, int reg)
 {
+	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
+
 	return readb(p->base + reg);
 }
 
@@ -75,7 +88,7 @@ static int dove_sdhci_wait_for_done(struct dove_sdhci *host, u16 mask)
 
 	start = get_time_ns();
 	while (1) {
-		status = dove_sdhci_readw(host, SDHCI_INT_NORMAL_STATUS);
+		status = sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS);
 		if (status & SDHCI_INT_ERROR)
 			return -EPERM;
 		/* this special quirk is necessary, as the dma
@@ -83,8 +96,8 @@ static int dove_sdhci_wait_for_done(struct dove_sdhci *host, u16 mask)
 		 * restart after acknowledging it this way.
 		 */
 		if (status & SDHCI_INT_DMA) {
-			u32 addr = dove_sdhci_readl(host, SDHCI_DMA_ADDRESS);
-			dove_sdhci_writel(host, SDHCI_DMA_ADDRESS, addr);
+			u32 addr = sdhci_read32(&host->sdhci, SDHCI_DMA_ADDRESS);
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, addr);
 		}
 		if (status & mask)
 			break;
@@ -105,7 +118,7 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	unsigned int num_bytes = data->blocks * data->blocksize;
 	struct dove_sdhci *host = priv_from_mci_host(mci);
 
-	dove_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 
 	/* Do not wait for CMD_INHIBIT_DAT on stop commands */
 	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
@@ -116,7 +129,7 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	/* Wait for bus idle */
 	start = get_time_ns();
 	while (1) {
-		if (!(dove_sdhci_readw(host, SDHCI_PRESENT_STATE) & val))
+		if (!(sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE) & val))
 			break;
 		if (is_timeout(start, 10 * MSECOND)) {
 			dev_err(host->mci.hw_dev, "SDHCI timeout while waiting for idle\n");
@@ -127,13 +140,13 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	/* setup transfer data */
 	if (data) {
 		if (data->flags & MMC_DATA_READ)
-			dove_sdhci_writel(host, SDHCI_DMA_ADDRESS, (u32)data->dest);
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->dest);
 		else
-			dove_sdhci_writel(host, SDHCI_DMA_ADDRESS, (u32)data->src);
-		dove_sdhci_writew(host, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
+			sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, (u32)data->src);
+		sdhci_write16(&host->sdhci, SDHCI_BLOCK_SIZE, SDHCI_DMA_BOUNDARY_512K |
 				SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
-		dove_sdhci_writew(host, SDHCI_BLOCK_COUNT, data->blocks);
-		dove_sdhci_writeb(host, SDHCI_TIMEOUT_CONTROL, 0xe);
+		sdhci_write16(&host->sdhci, SDHCI_BLOCK_COUNT, data->blocks);
+		sdhci_write8(&host->sdhci, SDHCI_TIMEOUT_CONTROL, 0xe);
 
 
 		if (data->flags & MMC_DATA_WRITE)
@@ -153,9 +166,9 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		if (data->flags & MMC_DATA_READ)
 			val |= SDHCI_DATA_TO_HOST;
 	}
-	dove_sdhci_writew(host, SDHCI_TRANSFER_MODE, val);
+	sdhci_write16(&host->sdhci, SDHCI_TRANSFER_MODE, val);
 
-	dove_sdhci_writel(host, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 
 	if (!(cmd->resp_type & MMC_RSP_PRESENT))
 		val = SDHCI_RESP_NONE;
@@ -174,31 +187,20 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		val |= SDHCI_DATA_PRESENT;
 	val |= SDHCI_CMD_INDEX(cmd->cmdidx);
 
-	dove_sdhci_writew(host, SDHCI_COMMAND, val);
+	sdhci_write16(&host->sdhci, SDHCI_COMMAND, val);
 
 	ret = dove_sdhci_wait_for_done(host, SDHCI_INT_CMD_COMPLETE);
 	if (ret) {
 		dev_err(host->mci.hw_dev, "error on command %d\n", cmd->cmdidx);
 		dev_err(host->mci.hw_dev, "state = %04x %04x, interrupt = %04x %04x\n",
-			dove_sdhci_readw(host, SDHCI_PRESENT_STATE),
-			dove_sdhci_readw(host, SDHCI_PRESENT_STATE1),
-			dove_sdhci_readw(host, SDHCI_INT_NORMAL_STATUS),
-			dove_sdhci_readw(host, SDHCI_INT_ERROR_STATUS));
+			sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE),
+			sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE1),
+			sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS),
+			sdhci_read16(&host->sdhci, SDHCI_INT_ERROR_STATUS));
 		goto cmd_error;
 	}
 
-	/* CRC is stripped so we need to do some shifting. */
-	if (cmd->resp_type & MMC_RSP_136) {
-		int i;
-		for (i = 0; i < 4; i++) {
-			cmd->response[i] = dove_sdhci_readl(host,
-					SDHCI_RESPONSE_0 + 4*(3-i)) << 8;
-			if (i != 3)
-				cmd->response[i] |= dove_sdhci_readb(host,
-					SDHCI_RESPONSE_0 + 4*(3-i) - 1);
-		}
-	} else
-		cmd->response[0] = dove_sdhci_readl(host, SDHCI_RESPONSE_0);
+	sdhci_read_response(&host->sdhci, cmd);
 
 	if (data->flags & MMC_DATA_WRITE)
 		dma_sync_single_for_cpu((unsigned long)data->src,
@@ -213,16 +215,16 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 			dev_err(host->mci.hw_dev, "error while transfering data for command %d\n",
 				cmd->cmdidx);
 			dev_err(host->mci.hw_dev, "state = %04x %04x, interrupt = %04x %04x\n",
-				dove_sdhci_readw(host, SDHCI_PRESENT_STATE),
-				dove_sdhci_readw(host, SDHCI_PRESENT_STATE1),
-				dove_sdhci_readw(host, SDHCI_INT_NORMAL_STATUS),
-				dove_sdhci_readw(host, SDHCI_INT_ERROR_STATUS));
+				sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE),
+				sdhci_read16(&host->sdhci, SDHCI_PRESENT_STATE1),
+				sdhci_read16(&host->sdhci, SDHCI_INT_NORMAL_STATUS),
+				sdhci_read16(&host->sdhci, SDHCI_INT_ERROR_STATUS));
 			goto cmd_error;
 		}
 	}
 
 cmd_error:
-	dove_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
 	return ret;
 }
 
@@ -252,11 +254,11 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	/* enable bus power */
 	val = SDHCI_BUS_VOLTAGE_330;
-	dove_sdhci_writeb(host, SDHCI_POWER_CONTROL, val | SDHCI_BUS_POWER_EN);
+	sdhci_write8(&host->sdhci, SDHCI_POWER_CONTROL, val | SDHCI_BUS_POWER_EN);
 	udelay(400);
 
 	/* set bus width */
-	val = dove_sdhci_readb(host, SDHCI_HOST_CONTROL) &
+	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
 		~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_8:
@@ -272,17 +274,17 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	else
 		val &= ~SDHCI_HIGHSPEED_EN;
 
-	dove_sdhci_writeb(host, SDHCI_HOST_CONTROL, val);
+	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
 
 	/* set bus clock */
-	dove_sdhci_writew(host, SDHCI_CLOCK_CONTROL, 0);
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, 0);
 	val = dove_sdhci_get_clock_divider(host, ios->clock);
 	val = SDHCI_INTCLOCK_EN | SDHCI_FREQ_SEL(val);
-	dove_sdhci_writew(host, SDHCI_CLOCK_CONTROL, val);
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val);
 
 	/* wait for internal clock stable */
 	start = get_time_ns();
-	while (!(dove_sdhci_readw(host, SDHCI_CLOCK_CONTROL) &
+	while (!(sdhci_read16(&host->sdhci, SDHCI_CLOCK_CONTROL) &
 			SDHCI_INTCLOCK_STABLE)) {
 		if (is_timeout(start, 20 * MSECOND)) {
 			dev_err(host->mci.hw_dev, "SDHCI clock stable timeout\n");
@@ -291,7 +293,7 @@ static void dove_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	}
 
 	/* enable bus clock */
-	dove_sdhci_writew(host, SDHCI_CLOCK_CONTROL, val | SDHCI_SDCLOCK_EN);
+	sdhci_write16(&host->sdhci, SDHCI_CLOCK_CONTROL, val | SDHCI_SDCLOCK_EN);
 }
 
 static int dove_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
@@ -300,12 +302,12 @@ static int dove_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
 	struct dove_sdhci *host = priv_from_mci_host(mci);
 
 	/* reset sdhci controller */
-	dove_sdhci_writeb(host, SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
+	sdhci_write8(&host->sdhci, SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
 
 	/* wait for reset completion */
 	start = get_time_ns();
 	while (1) {
-		if ((dove_sdhci_readb(host, SDHCI_SOFTWARE_RESET) &
+		if ((sdhci_read8(&host->sdhci, SDHCI_SOFTWARE_RESET) &
 				SDHCI_RESET_ALL) == 0)
 			break;
 		if (is_timeout(start, 100 * MSECOND)) {
@@ -314,9 +316,9 @@ static int dove_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
 		}
 	}
 
-	dove_sdhci_writel(host, SDHCI_INT_STATUS, ~0);
-	dove_sdhci_writel(host, SDHCI_INT_ENABLE, ~0);
-	dove_sdhci_writel(host, SDHCI_SIGNAL_ENABLE, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE, ~0);
+	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, ~0);
 
 	return 0;
 }
@@ -325,8 +327,8 @@ static void dove_sdhci_set_mci_caps(struct dove_sdhci *host)
 {
 	u16 caps[2];
 
-	caps[0] = dove_sdhci_readw(host, SDHCI_CAPABILITIES);
-	caps[1] = dove_sdhci_readw(host, SDHCI_CAPABILITIES_1);
+	caps[0] = sdhci_read16(&host->sdhci, SDHCI_CAPABILITIES);
+	caps[1] = sdhci_read16(&host->sdhci, SDHCI_CAPABILITIES_1);
 
 	if (caps[1] & SDHCI_HOSTCAP_VOLTAGE_180)
 		host->mci.voltages |= MMC_VDD_165_195;
@@ -368,6 +370,12 @@ static int dove_sdhci_probe(struct device_d *dev)
 	host->mci.init = dove_sdhci_mci_init;
 	host->mci.f_max = 50000000;
 	host->mci.f_min = host->mci.f_max / 256;
+	host->sdhci.read32 = dove_sdhci_readl;
+	host->sdhci.read16 = dove_sdhci_readw;
+	host->sdhci.read8 = dove_sdhci_readb;
+	host->sdhci.write32 = dove_sdhci_writel;
+	host->sdhci.write16 = dove_sdhci_writew;
+	host->sdhci.write8 = dove_sdhci_writeb;
 	dev->priv = host;
 	dev->detect = dove_sdhci_detect;
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
