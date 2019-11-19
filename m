Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX16P-0006hX-C3
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:16 +0100
Message-Id: <20191119105036.12300-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/21] mci: Add sdhci helper
To: Barebox List <barebox@lists.infradead.org>

We have several SDHCI compatible drivers in the tree. This starts
with a set of generic helper functions for these drivers to share
some common functionality.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig  |   3 +
 drivers/mci/Makefile |   1 +
 drivers/mci/sdhci.c  | 127 +++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/sdhci.h  |  45 +++++++++++++++
 4 files changed, 176 insertions(+)
 create mode 100644 drivers/mci/sdhci.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 4a71a46097..c37d40195a 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -34,6 +34,9 @@ config MCI_MMC_BOOT_PARTITIONS
 
 comment "--- MCI host drivers ---"
 
+config MCI_SDHCI
+	bool
+
 config MCI_DW
 	bool "Synopsys DesignWare Memory Card Interface"
 	depends on HAS_DMA
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 04c1287fee..9efdbd651e 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
 obj-$(CONFIG_MCI_MMCI)		+= mmci.o
 obj-$(CONFIG_MCI_STM32_SDMMC2)	+= stm32_sdmmc2.o
+obj-$(CONFIG_MCI_SDHCI)		+= sdhci.o
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
new file mode 100644
index 0000000000..1ab1c0f236
--- /dev/null
+++ b/drivers/mci/sdhci.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <driver.h>
+#include <mci.h>
+#include <io.h>
+
+#include "sdhci.h"
+
+void sdhci_read_response(struct sdhci *sdhci, struct mci_cmd *cmd)
+{
+	if (cmd->resp_type & MMC_RSP_136) {
+		u32 cmdrsp3, cmdrsp2, cmdrsp1, cmdrsp0;
+
+		cmdrsp3 = sdhci_read32(sdhci, SDHCI_RESPONSE_3);
+		cmdrsp2 = sdhci_read32(sdhci, SDHCI_RESPONSE_2);
+		cmdrsp1 = sdhci_read32(sdhci, SDHCI_RESPONSE_1);
+		cmdrsp0 = sdhci_read32(sdhci, SDHCI_RESPONSE_0);
+		cmd->response[0] = (cmdrsp3 << 8) | (cmdrsp2 >> 24);
+		cmd->response[1] = (cmdrsp2 << 8) | (cmdrsp1 >> 24);
+		cmd->response[2] = (cmdrsp1 << 8) | (cmdrsp0 >> 24);
+		cmd->response[3] = (cmdrsp0 << 8);
+	} else {
+		cmd->response[0] = sdhci_read32(sdhci, SDHCI_RESPONSE_0);
+	}
+}
+
+void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
+			     struct mci_data *data, bool dma, u32 *command,
+			     u32 *xfer)
+{
+	*command = 0;
+	*xfer = 0;
+
+	if (!(cmd->resp_type & MMC_RSP_PRESENT))
+		*command |= SDHCI_RESP_NONE;
+	else if (cmd->resp_type & MMC_RSP_136)
+		*command |= SDHCI_RESP_TYPE_136;
+	else if (cmd->resp_type & MMC_RSP_BUSY)
+		*command |= SDHCI_RESP_TYPE_48_BUSY;
+	else
+		*command |= SDHCI_RESP_TYPE_48;
+
+	if (cmd->resp_type & MMC_RSP_CRC)
+		*command |= SDHCI_CMD_CRC_CHECK_EN;
+	if (cmd->resp_type & MMC_RSP_OPCODE)
+		*command |= SDHCI_CMD_INDEX_CHECK_EN;
+
+	*command |= SDHCI_CMD_INDEX(cmd->cmdidx);
+
+	if (data) {
+		*command |= SDHCI_DATA_PRESENT;
+
+		*xfer |= SDHCI_BLOCK_COUNT_EN;
+
+		if (data->blocks > 1)
+			*xfer |= SDHCI_MULTIPLE_BLOCKS;
+
+		if (data->flags & MMC_DATA_READ)
+			*xfer |= SDHCI_DATA_TO_HOST;
+
+		if (dma)
+			*xfer |= SDHCI_DMA_EN;
+	}
+}
+
+static void sdhci_rx_pio(struct sdhci *sdhci, struct mci_data *data,
+			 unsigned int block)
+{
+	u32 *buf = (u32 *)data->dest;
+	int i;
+
+	buf += block * data->blocksize / sizeof(u32);
+
+	for (i = 0; i < data->blocksize / sizeof(u32); i++)
+		buf[i] = sdhci_read32(sdhci, SDHCI_BUFFER);
+}
+
+static void sdhci_tx_pio(struct sdhci *sdhci, struct mci_data *data,
+			 unsigned int block)
+{
+	const u32 *buf = (const u32 *)data->src;
+	int i;
+
+	buf += block * data->blocksize / sizeof(u32);
+
+	for (i = 0; i < data->blocksize / sizeof(u32); i++)
+		sdhci_write32(sdhci, SDHCI_BUFFER, buf[i]);
+}
+
+int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data)
+{
+	unsigned int block = 0;
+	u32 stat, prs;
+	uint64_t start = get_time_ns();
+
+	do {
+		stat = sdhci_read32(sdhci, SDHCI_INT_STATUS);
+		if (stat & SDHCI_INT_ERROR)
+			return -EIO;
+
+		if (block >= data->blocks)
+			continue;
+
+		prs = sdhci_read32(sdhci, SDHCI_PRESENT_STATE);
+
+		if (prs & SDHCI_BUFFER_READ_ENABLE &&
+		    data->flags & MMC_DATA_READ) {
+			sdhci_rx_pio(sdhci, data, block);
+			block++;
+			start = get_time_ns();
+		}
+
+		if (prs & SDHCI_BUFFER_WRITE_ENABLE &&
+		    !(data->flags & MMC_DATA_READ)) {
+			sdhci_tx_pio(sdhci, data, block);
+			block++;
+			start = get_time_ns();
+		}
+
+		if (is_timeout(start, 10 * SECOND))
+			return -ETIMEDOUT;
+
+	} while (!(stat & SDHCI_INT_XFER_COMPLETE));
+
+	return 0;
+}
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 90595e6433..640398d9d8 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -149,4 +149,49 @@
 #define PRSSTAT_CIDHB		0x00000002
 #define PRSSTAT_CICHB		0x00000001
 
+struct sdhci {
+	u32 (*read32)(struct sdhci *host, int reg);
+	u16 (*read16)(struct sdhci *host, int reg);
+	u8 (*read8)(struct sdhci *host, int reg);
+	void (*write32)(struct sdhci *host, int reg, u32 val);
+	void (*write16)(struct sdhci *host, int reg, u16 val);
+	void (*write8)(struct sdhci *host, int reg, u8 val);
+};
+
+static inline u32 sdhci_read32(struct sdhci *host, int reg)
+{
+	return host->read32(host, reg);
+}
+
+static inline u32 sdhci_read16(struct sdhci *host, int reg)
+{
+	return host->read16(host, reg);
+}
+
+static inline u32 sdhci_read8(struct sdhci *host, int reg)
+{
+	return host->read8(host, reg);
+}
+
+static inline void sdhci_write32(struct sdhci *host, int reg, u32 val)
+{
+	host->write32(host, reg, val);
+}
+
+static inline void sdhci_write16(struct sdhci *host, int reg, u32 val)
+{
+	host->write16(host, reg, val);
+}
+
+static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
+{
+	host->write8(host, reg, val);
+}
+
+void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
+void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
+			     struct mci_data *data, bool dma, u32 *command,
+			     u32 *xfer);
+int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data);
+
 #endif /* __MCI_SDHCI_H */
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
