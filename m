Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX15t-0006Az-5H
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:50:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:19 +0100
Message-Id: <20191119105036.12300-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/21] mci: bcm2835: use sdhci helpers
To: Barebox List <barebox@lists.infradead.org>

To use the sdhci helpers we have to switch to the sdhci accessors.
Also use sdhci_read_response().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig       |   1 +
 drivers/mci/mci-bcm2835.c | 119 +++++++++++++++++---------------------
 2 files changed, 55 insertions(+), 65 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 9e7494de96..23a38721aa 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -72,6 +72,7 @@ config MCI_BCM283X
 config MCI_BCM283X_SDHOST
 	bool "BCM283X sdhost"
 	depends on ARCH_BCM283X
+	select MCI_SDHCI
 
 config MCI_DOVE
 	bool "Marvell Dove SDHCI"
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 2ed1251672..7037cbf7b8 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -51,10 +51,13 @@ struct bcm2835_mci_host {
 	u32 max_clock;
 	u32 version;
 	uint64_t last_write;
+	struct sdhci sdhci;
 };
 
-static void bcm2835_mci_write(struct bcm2835_mci_host *host, u32 reg, u32 val)
+static void bcm2835_sdhci_write32(struct sdhci *sdhci, int reg, u32 val)
 {
+	struct bcm2835_mci_host *host = container_of(sdhci, struct bcm2835_mci_host, sdhci);
+
 	/*
 	 * The Arasan has a bugette whereby it may lose the content of
 	 * successive writes to registers that are within two SD-card clock
@@ -71,8 +74,10 @@ static void bcm2835_mci_write(struct bcm2835_mci_host *host, u32 reg, u32 val)
 	writel(val, host->regs + reg);
 }
 
-static u32 bcm2835_mci_read(struct bcm2835_mci_host *host, u32 reg)
+static u32 bcm2835_sdhci_read32(struct sdhci *sdhci, int reg)
 {
+	struct bcm2835_mci_host *host = container_of(sdhci, struct bcm2835_mci_host, sdhci);
+
 	return readl(host->regs + reg);
 }
 
@@ -80,13 +85,13 @@ static u32 bcm2835_mci_read(struct bcm2835_mci_host *host, u32 reg)
  * register is not affected by the twoticks_delay bug
  * and we can thus get better speed here
  */
-static void bcm2835_mci_write_data(struct bcm2835_mci_host *host, u32 *p)
+static void sdhci_write32_data(struct bcm2835_mci_host *host, u32 *p)
 {
 	writel(*p, host->regs + SDHCI_BUFFER);
 }
 
 /* Make a read data functions as well just to keep structure */
-static void bcm2835_mci_read_data(struct bcm2835_mci_host *host, u32 *p)
+static void sdhci_read32_data(struct bcm2835_mci_host *host, u32 *p)
 {
 	*p = readl(host->regs + SDHCI_BUFFER);
 }
@@ -106,15 +111,15 @@ static int bcm2835_mci_transfer_data(struct bcm2835_mci_host *host,
 		p = (u32 *) data->dest;
 		data_ready_intr_mask = IRQSTAT_BRR;
 		data_ready_status_mask = PRSSTAT_BREN;
-		read_write_func = &bcm2835_mci_read_data;
+		read_write_func = &sdhci_read32_data;
 	} else {
 		p = (u32 *) data->src;
 		data_ready_intr_mask = IRQSTAT_BWR;
 		data_ready_status_mask = PRSSTAT_BWEN;
-		read_write_func = &bcm2835_mci_write_data;
+		read_write_func = &sdhci_write32_data;
 	}
 	do {
-		intr_status = bcm2835_mci_read(host, SDHCI_INT_STATUS);
+		intr_status = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
 		if (intr_status & IRQSTAT_CIE) {
 			dev_err(host->hw_dev,
 					"Error occured while transferring data: 0x%X\n",
@@ -122,11 +127,11 @@ static int bcm2835_mci_transfer_data(struct bcm2835_mci_host *host,
 			return -EPERM;
 		}
 		if (intr_status & data_ready_intr_mask) {
-			status = bcm2835_mci_read(host, SDHCI_PRESENT_STATE);
+			status = sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE);
 			if ((status & data_ready_status_mask) == 0)
 				continue;
 			/*Clear latest int and transfer one block size of data*/
-			bcm2835_mci_write(host, SDHCI_INT_STATUS,
+			sdhci_write32(&host->sdhci, SDHCI_INT_STATUS,
 					data_ready_intr_mask);
 			for (i = 0; i < data->blocksize; i += 4) {
 				read_write_func(host, p);
@@ -147,8 +152,8 @@ static int bcm2835_mci_transfer_data(struct bcm2835_mci_host *host,
 				data->blocksize * data->blocks);
 
 		dev_err(host->hw_dev, "Status: 0x%X, Interrupt: 0x%X\n",
-				bcm2835_mci_read(host, SDHCI_PRESENT_STATE),
-				bcm2835_mci_read(host, SDHCI_INT_STATUS));
+				sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE),
+				sdhci_read32(&host->sdhci, SDHCI_INT_STATUS));
 
 		return -EPERM;
 	}
@@ -160,8 +165,7 @@ static u32 bcm2835_mci_wait_command_done(struct bcm2835_mci_host *host)
 	u32 interrupt = 0;
 
 	while (true) {
-		interrupt = bcm2835_mci_read(
-				host, SDHCI_INT_STATUS);
+		interrupt = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
 		if (interrupt & IRQSTAT_CIE)
 			return -EPERM;
 		if (interrupt & IRQSTAT_CC)
@@ -174,15 +178,15 @@ static void bcm2835_mci_reset_emmc(struct bcm2835_mci_host *host, u32 reset,
 		u32 wait_for)
 {
 	u32 ret;
-	u32 current = bcm2835_mci_read(host,
+	u32 current = sdhci_read32(&host->sdhci,
 			SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 
-	bcm2835_mci_write(host,
+	sdhci_write32(&host->sdhci,
 			SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			current | reset);
 
 	while (true) {
-		ret = bcm2835_mci_read(host,
+		ret = sdhci_read32(&host->sdhci,
 				SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 		if (ret & wait_for)
 			continue;
@@ -234,52 +238,35 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		wait_inhibit_mask = PRSSTAT_CICHB;
 
 	/*Wait for old command*/
-	while (bcm2835_mci_read(host, SDHCI_PRESENT_STATE)
+	while (sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE)
 			& wait_inhibit_mask)
 		;
 
-	bcm2835_mci_write(host, SDHCI_INT_ENABLE, 0xFFFFFFFF);
-	bcm2835_mci_write(host, SDHCI_INT_STATUS, 0xFFFFFFFF);
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE, 0xFFFFFFFF);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, 0xFFFFFFFF);
 
-	bcm2835_mci_write(host, SDHCI_BLOCK_SIZE__BLOCK_COUNT, block_data);
-	bcm2835_mci_write(host, SDHCI_ARGUMENT, cmd->cmdarg);
-	bcm2835_mci_write(host, SDHCI_TRANSFER_MODE__COMMAND, command);
+	sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, block_data);
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND, command);
 
 	ret = bcm2835_mci_wait_command_done(host);
 	if (ret) {
 		dev_err(host->hw_dev, "Error while executing command %d\n",
 				cmd->cmdidx);
 		dev_err(host->hw_dev, "Status: 0x%X, Interrupt: 0x%X\n",
-				bcm2835_mci_read(host, SDHCI_PRESENT_STATE),
-				bcm2835_mci_read(host, SDHCI_INT_STATUS));
+				sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE),
+				sdhci_read32(&host->sdhci, SDHCI_INT_STATUS));
 	}
 	if (cmd->resp_type != 0 && ret != -1) {
-		int i = 0;
-
-		/* CRC is stripped so we need to do some shifting. */
-		if (cmd->resp_type & MMC_RSP_136) {
-			for (i = 0; i < 4; i++) {
-				cmd->response[i] = bcm2835_mci_read(
-					host,
-					SDHCI_RESPONSE_0 + (3 - i) * 4) << 8;
-				if (i != 3)
-					cmd->response[i] |=
-						readb((u32) (host->regs) +
-						SDHCI_RESPONSE_0 +
-						(3 - i) * 4 - 1);
-			}
-		} else {
-			cmd->response[0] = bcm2835_mci_read(
-					host, SDHCI_RESPONSE_0);
-		}
-		bcm2835_mci_write(host, SDHCI_INT_STATUS,
-				IRQSTAT_CC);
+		sdhci_read_response(&host->sdhci, cmd);
+
+		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, IRQSTAT_CC);
 	}
 
 	if (!ret && data)
 		ret = bcm2835_mci_transfer_data(host, cmd, data);
 
-	bcm2835_mci_write(host, SDHCI_INT_STATUS, 0xFFFFFFFF);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, 0xFFFFFFFF);
 	if (ret) {
 		bcm2835_mci_reset_emmc(host, CONTROL1_CMDRST,
 				CONTROL1_CMDRST);
@@ -343,19 +330,19 @@ static void bcm2835_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	struct bcm2835_mci_host *host = to_bcm2835_host(mci);
 
-	current_val = bcm2835_mci_read(host,
+	current_val = sdhci_read32(&host->sdhci,
 			SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL);
 
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_4:
-		bcm2835_mci_write(host,
+		sdhci_write32(&host->sdhci,
 				SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 				current_val | CONTROL0_4DATA);
 		host->bus_width = 1;
 		dev_dbg(host->hw_dev, "Changing bus width to 4\n");
 		break;
 	case MMC_BUS_WIDTH_1:
-		bcm2835_mci_write(host,
+		sdhci_write32(&host->sdhci,
 				SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 				current_val & ~CONTROL0_4DATA);
 		host->bus_width = 0;
@@ -367,15 +354,15 @@ static void bcm2835_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		return;
 	}
 	if (ios->clock != host->clock && ios->clock != 0) {
-		bcm2835_mci_write(host,
+		sdhci_write32(&host->sdhci,
 				SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 				0x00);
 
 		if (ios->clock > 26000000) {
-			enable = bcm2835_mci_read(host,
+			enable = sdhci_read32(&host->sdhci,
 					SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL);
 			enable |= CONTROL0_HISPEED;
-			bcm2835_mci_write(host,
+			sdhci_write32(&host->sdhci,
 					SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 					enable);
 		}
@@ -388,18 +375,18 @@ static void bcm2835_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 		enable |= (divider_msb << CONTROL1_CLKMSB);
 		enable |= CONTROL1_INTCLKENA | CONTROL1_TIMEOUT;
 
-		bcm2835_mci_write(host,
+		sdhci_write32(&host->sdhci,
 				SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 				enable);
 		while (true) {
-			u32 ret = bcm2835_mci_read(host,
+			u32 ret = sdhci_read32(&host->sdhci,
 					SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 			if (ret & CONTROL1_CLK_STABLE)
 				break;
 		}
 
 		enable |= CONTROL1_CLKENA;
-		bcm2835_mci_write(host,
+		sdhci_write32(&host->sdhci,
 				SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 				enable);
 
@@ -437,37 +424,37 @@ static int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
 
 	bcm2835_mci_reset_emmc(host, enable | reset, CONTROL1_HOSTRST);
 
-	bcm2835_mci_write(host,
+	sdhci_write32(&host->sdhci,
 			SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 			0x00);
-	bcm2835_mci_write(host, SDHCI_ACMD12_ERR__HOST_CONTROL2,
+	sdhci_write32(&host->sdhci, SDHCI_ACMD12_ERR__HOST_CONTROL2,
 			0x00);
-	bcm2835_mci_write(host,
+	sdhci_write32(&host->sdhci,
 			SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			enable);
 	while (true) {
-		ret = bcm2835_mci_read(host,
+		ret = sdhci_read32(&host->sdhci,
 				SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 		if (ret & CONTROL1_CLK_STABLE)
 			break;
 	}
 
 	enable |= CONTROL1_CLKENA;
-	bcm2835_mci_write(host,
+	sdhci_write32(&host->sdhci,
 			SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			enable);
 
 	/*Delay atelast 74 clk cycles for card init*/
 	mdelay(100);
 
-	bcm2835_mci_write(host, SDHCI_INT_ENABLE,
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE,
 			0xFFFFFFFF);
-	bcm2835_mci_write(host, SDHCI_INT_STATUS,
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS,
 			0xFFFFFFFF);
 
 	/*Now write command 0 and see if we get response*/
-	bcm2835_mci_write(host, SDHCI_ARGUMENT, 0x0);
-	bcm2835_mci_write(host, SDHCI_TRANSFER_MODE__COMMAND, 0x0);
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, 0x0);
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND, 0x0);
 	return bcm2835_mci_wait_command_done(host);
 }
 
@@ -507,6 +494,9 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 	host->hw_dev = hw_dev;
 	host->max_clock = clk_get_rate(clk);
 
+	host->sdhci.read32 = bcm2835_sdhci_read32;
+	host->sdhci.write32 = bcm2835_sdhci_write32;
+
 	mci_of_parse(&host->mci);
 
 	iores = dev_request_mem_resource(hw_dev, 0);
@@ -540,8 +530,7 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 
 	twoticks_delay = ((2 * 1000000000) / MIN_FREQ) + 1;
 
-	host->version = bcm2835_mci_read(
-			host, BCM2835_MCI_SLOTISR_VER);
+	host->version = sdhci_read32(&host->sdhci, BCM2835_MCI_SLOTISR_VER);
 	host->version = (host->version >> 16) & 0xFF;
 	return mci_register(&host->mci);
 }
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
