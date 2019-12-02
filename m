Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUu-0004gl-Rs
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id az9so46222plb.11
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:24 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:49 -0800
Message-Id: <20191202151954.16032-8-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/12] mci: imx-esdhc-pbl: Share IO accessors with regular
 driver
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

With a bit of a change to PBL ESDHC initialization code it is possible
to share all of the low-level I/O accessor code with the regular
driver, including sharing definitions of flags describing HW's quirks.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/Makefile           |   4 +-
 drivers/mci/imx-esdhc-common.c |  47 ++++++++++
 drivers/mci/imx-esdhc-pbl.c    | 151 +++++++++++++++------------------
 drivers/mci/imx-esdhc.c        | 126 +--------------------------
 drivers/mci/imx-esdhc.h        |  98 +++++++++++++++++++++
 5 files changed, 218 insertions(+), 208 deletions(-)
 create mode 100644 drivers/mci/imx-esdhc-common.c

diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index e2e3ba7ef..cfb84a899 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -5,8 +5,8 @@ obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
 obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
 obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
 obj-$(CONFIG_MCI_IMX)		+= imx.o
-obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o
-pbl-$(CONFIG_MCI_IMX_ESDHC_PBL)	+= imx-esdhc-pbl.o
+obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o imx-esdhc-common.o
+pbl-$(CONFIG_MCI_IMX_ESDHC_PBL)	+= imx-esdhc-pbl.o imx-esdhc-common.o
 obj-$(CONFIG_MCI_MXS)		+= mxs.o
 obj-$(CONFIG_MCI_OMAP_HSMMC)	+= omap_hsmmc.o
 obj-$(CONFIG_MCI_PXA)		+= pxamci.o
diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
new file mode 100644
index 000000000..bcdf661ed
--- /dev/null
+++ b/drivers/mci/imx-esdhc-common.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <io.h>
+#include <mci.h>
+
+#include "sdhci.h"
+#include "imx-esdhc.h"
+
+static u32 esdhc_op_read32_le(struct sdhci *sdhci, int reg)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+
+	return readl(host->regs + reg);
+}
+
+static u32 esdhc_op_read32_be(struct sdhci *sdhci, int reg)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+
+	return in_be32(host->regs + reg);
+}
+
+static void esdhc_op_write32_le(struct sdhci *sdhci, int reg, u32 val)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+
+	writel(val, host->regs + reg);
+}
+
+static void esdhc_op_write32_be(struct sdhci *sdhci, int reg, u32 val)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+
+	out_be32(host->regs + reg, val);
+}
+
+void esdhc_populate_sdhci(struct fsl_esdhc_host *host)
+{
+	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN) {
+		host->sdhci.read32 = esdhc_op_read32_be;
+		host->sdhci.write32 = esdhc_op_write32_be;
+	} else {
+		host->sdhci.read32 = esdhc_op_read32_le;
+		host->sdhci.write32 = esdhc_op_write32_le;
+	}
+}
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index e81f0f107..08f28471c 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -30,28 +30,6 @@
 #define SECTOR_SIZE 512
 #define SECTOR_WML  (SECTOR_SIZE / sizeof(u32))
 
-struct esdhc {
-	void __iomem *regs;
-	bool is_mx6;
-	bool is_be;
-};
-
-static uint32_t esdhc_read32(struct esdhc *esdhc, int reg)
-{
-	if (esdhc->is_be)
-		return in_be32(esdhc->regs + reg);
-	else
-		return readl(esdhc->regs + reg);
-}
-
-static void esdhc_write32(struct esdhc *esdhc, int reg, uint32_t val)
-{
-	if (esdhc->is_be)
-		out_be32(esdhc->regs + reg, val);
-	else
-		writel(val, esdhc->regs + reg);
-}
-
 static void __udelay(int us)
 {
 	volatile int i;
@@ -86,7 +64,7 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 	return command << 16 | xfertyp;
 }
 
-static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
+static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data)
 {
 	char *buffer;
 	u32 databuf;
@@ -97,14 +75,14 @@ static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
 	buffer = data->dest;
 
 	size = data->blocksize * data->blocks;
-	irqstat = esdhc_read32(esdhc, SDHCI_INT_STATUS);
+	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
 
 	while (size) {
 		int i;
 		int timeout = 1000000;
 
 		while (1) {
-			present = esdhc_read32(esdhc, SDHCI_PRESENT_STATE) & SDHCI_BUFFER_READ_ENABLE;
+			present = sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_BUFFER_READ_ENABLE;
 			if (present)
 				break;
 			if (!--timeout) {
@@ -114,7 +92,7 @@ static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
 		}
 
 		for (i = 0; i < SECTOR_WML; i++) {
-			databuf = esdhc_read32(esdhc, SDHCI_BUFFER);
+			databuf = sdhci_read32(&host->sdhci, SDHCI_BUFFER);
 			*((u32 *)buffer) = databuf;
 			buffer += 4;
 			size -= 4;
@@ -125,49 +103,49 @@ static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
 }
 
 static int
-esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
+esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32	xfertyp, mixctrl;
 	u32	irqstat;
 	int ret;
 	int timeout;
 
-	esdhc_write32(esdhc, SDHCI_INT_STATUS, -1);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait at least 8 SD clock cycles before the next command */
 	__udelay(1);
 
 	if (data) {
 		/* Set up for a data transfer if we have one */
-		esdhc_write32(esdhc, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | SECTOR_SIZE);
+		sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | SECTOR_SIZE);
 	}
 
 	/* Figure out the transfer arguments */
 	xfertyp = esdhc_xfertyp(cmd, data);
 
 	/* Send the command */
-	esdhc_write32(esdhc, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write32(&host->sdhci, SDHCI_ARGUMENT, cmd->cmdarg);
 
-	if (esdhc->is_mx6) {
+	if (esdhc_is_usdhc(host)) {
 		/* write lower-half of xfertyp to mixctrl */
 		mixctrl = xfertyp & 0xFFFF;
 		/* Keep the bits 22-25 of the register as is */
-		mixctrl |= (esdhc_read32(esdhc, IMX_SDHCI_MIXCTRL) & (0xF << 22));
-		esdhc_write32(esdhc, IMX_SDHCI_MIXCTRL, mixctrl);
+		mixctrl |= (sdhci_read32(&host->sdhci, IMX_SDHCI_MIXCTRL) & (0xF << 22));
+		sdhci_write32(&host->sdhci, IMX_SDHCI_MIXCTRL, mixctrl);
 	}
 
-	esdhc_write32(esdhc, SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
+	sdhci_write32(&host->sdhci, SDHCI_TRANSFER_MODE__COMMAND, xfertyp);
 
 	/* Wait for the command to complete */
 	timeout = 10000;
-	while (!(esdhc_read32(esdhc, SDHCI_INT_STATUS) & SDHCI_INT_CMD_COMPLETE)) {
+	while (!(sdhci_read32(&host->sdhci, SDHCI_INT_STATUS) & SDHCI_INT_CMD_COMPLETE)) {
 		__udelay(1);
 		if (!timeout--)
 			return -ETIMEDOUT;
 	}
 
-	irqstat = esdhc_read32(esdhc, SDHCI_INT_STATUS);
-	esdhc_write32(esdhc, SDHCI_INT_STATUS, irqstat);
+	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, irqstat);
 
 	if (irqstat & CMD_ERR)
 		return -EIO;
@@ -176,20 +154,20 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 		return -ETIMEDOUT;
 
 	/* Copy the response to the response buffer */
-	cmd->response[0] = esdhc_read32(esdhc, SDHCI_RESPONSE_0);
+	cmd->response[0] = sdhci_read32(&host->sdhci, SDHCI_RESPONSE_0);
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
-		ret = esdhc_do_data(esdhc, data);
+		ret = esdhc_do_data(host, data);
 		if (ret)
 			return ret;
 	}
 
-	esdhc_write32(esdhc, SDHCI_INT_STATUS, -1);
+	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait for the bus to be idle */
 	timeout = 10000;
-	while (esdhc_read32(esdhc, SDHCI_PRESENT_STATE) & (SDHCI_CMD_INHIBIT_CMD |
+	while (sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & (SDHCI_CMD_INHIBIT_CMD |
 			SDHCI_CMD_INHIBIT_DATA | SDHCI_DATA_LINE_ACTIVE)) {
 		__udelay(1);
 		if (!timeout--)
@@ -199,22 +177,22 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 	return 0;
 }
 
-static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
+static int esdhc_read_blocks(struct fsl_esdhc_host *host, void *dst, size_t len)
 {
 	struct mci_cmd cmd;
 	struct mci_data data;
 	u32 val;
 	int ret;
 
-	esdhc_write32(esdhc, SDHCI_INT_ENABLE,
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE,
 		      SDHCI_INT_CMD_COMPLETE | SDHCI_INT_XFER_COMPLETE |
 		      SDHCI_INT_CARD_INT | SDHCI_INT_TIMEOUT | SDHCI_INT_CRC |
 		      SDHCI_INT_END_BIT | SDHCI_INT_INDEX | SDHCI_INT_DATA_TIMEOUT |
 		      SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_END_BIT | SDHCI_INT_DMA);
 
-	val = esdhc_read32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
+	val = sdhci_read32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 	val |= SYSCTL_HCKEN | SYSCTL_IPGEN;
-	esdhc_write32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
+	sdhci_write32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
 
 	cmd.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK;
 	cmd.cmdarg = 0;
@@ -225,7 +203,7 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	data.blocksize = SECTOR_SIZE;
 	data.flags = MMC_DATA_READ;
 
-	ret = esdhc_send_cmd(esdhc, &cmd, &data);
+	ret = esdhc_send_cmd(host, &cmd, &data);
 	if (ret) {
 		pr_debug("send command failed with %d\n", ret);
 		return ret;
@@ -235,13 +213,13 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	cmd.cmdarg = 0;
 	cmd.resp_type = MMC_RSP_R1b;
 
-	esdhc_send_cmd(esdhc, &cmd, NULL);
+	esdhc_send_cmd(host, &cmd, NULL);
 
 	return 0;
 }
 
 #ifdef CONFIG_ARCH_IMX
-static int esdhc_search_header(struct esdhc *esdhc,
+static int esdhc_search_header(struct fsl_esdhc_host *host,
 			       struct imx_flash_header_v2 **header_pointer,
 			       void *buffer, u32 *offset)
 {
@@ -251,7 +229,7 @@ static int esdhc_search_header(struct esdhc *esdhc,
 	struct imx_flash_header_v2 *hdr;
 
 	for (i = 0; i < header_count; i++) {
-		ret = esdhc_read_blocks(esdhc, buf,
+		ret = esdhc_read_blocks(host, buf,
 					*offset + SZ_1K + SECTOR_SIZE);
 		if (ret)
 			return ret;
@@ -288,7 +266,7 @@ static int esdhc_search_header(struct esdhc *esdhc,
 }
 
 static int
-esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry,
+esdhc_start_image(struct fsl_esdhc_host *host, ptrdiff_t address, ptrdiff_t entry,
 		  u32 offset)
 {
 
@@ -301,7 +279,7 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry,
 	len = imx_image_size();
 	len = ALIGN(len, SECTOR_SIZE);
 
-	ret = esdhc_search_header(esdhc, &hdr, buf, &offset);
+	ret = esdhc_search_header(host, &hdr, buf, &offset);
 	if (ret)
 		return ret;
 
@@ -336,7 +314,7 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry,
 		buf = (void *)(entry - ofs);
 	}
 
-	ret = esdhc_read_blocks(esdhc, buf, offset + len);
+	ret = esdhc_read_blocks(host, buf, offset + len);
 	if (ret) {
 		pr_err("Loading image failed with %d\n", ret);
 		return ret;
@@ -351,32 +329,36 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry,
 	bb();
 }
 
-static void imx_esdhc_init(struct esdhc *esdhc)
+static void imx_esdhc_init(struct fsl_esdhc_host *host,
+			   struct esdhc_soc_data *data)
 {
-	esdhc->is_be = 0;
-	esdhc->is_mx6 = 1;
+	data->flags = ESDHC_FLAG_USDHC;
+	host->socdata = data;
+	esdhc_populate_sdhci(host);
 
-	esdhc_write32(esdhc, IMX_SDHCI_WML,
+	sdhci_write32(&host->sdhci, IMX_SDHCI_WML,
 		      FIELD_PREP(WML_WR_BRST_LEN, 16)         |
 		      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
 		      FIELD_PREP(WML_RD_BRST_LEN, 16)         |
 		      FIELD_PREP(WML_RD_WML_MASK, SECTOR_WML));
 }
 
-static int imx8_esdhc_init(struct esdhc *esdhc, int instance)
+static int imx8_esdhc_init(struct fsl_esdhc_host *host,
+			   struct esdhc_soc_data *data,
+			   int instance)
 {
 	switch (instance) {
 	case 0:
-		esdhc->regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
+		host->regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
 		break;
 	case 1:
-		esdhc->regs = IOMEM(MX8MQ_USDHC2_BASE_ADDR);
+		host->regs = IOMEM(MX8MQ_USDHC2_BASE_ADDR);
 		break;
 	default:
 		return -EINVAL;
 	}
 
-	imx_esdhc_init(esdhc);
+	imx_esdhc_init(host, data);
 
 	return 0;
 }
@@ -395,28 +377,29 @@ static int imx8_esdhc_init(struct esdhc *esdhc, int instance)
  */
 int imx6_esdhc_start_image(int instance)
 {
-	struct esdhc esdhc;
+	struct esdhc_soc_data data;
+	struct fsl_esdhc_host host;
 
 	switch (instance) {
 	case 0:
-		esdhc.regs = IOMEM(MX6_USDHC1_BASE_ADDR);
+		host.regs = IOMEM(MX6_USDHC1_BASE_ADDR);
 		break;
 	case 1:
-		esdhc.regs = IOMEM(MX6_USDHC2_BASE_ADDR);
+		host.regs = IOMEM(MX6_USDHC2_BASE_ADDR);
 		break;
 	case 2:
-		esdhc.regs = IOMEM(MX6_USDHC3_BASE_ADDR);
+		host.regs = IOMEM(MX6_USDHC3_BASE_ADDR);
 		break;
 	case 3:
-		esdhc.regs = IOMEM(MX6_USDHC4_BASE_ADDR);
+		host.regs = IOMEM(MX6_USDHC4_BASE_ADDR);
 		break;
 	default:
 		return -EINVAL;
 	}
 
-	imx_esdhc_init(&esdhc);
+	imx_esdhc_init(&host, &data);
 
-	return esdhc_start_image(&esdhc, 0x10000000, 0x10000000, 0);
+	return esdhc_start_image(&host, 0x10000000, 0x10000000, 0);
 }
 
 /**
@@ -433,14 +416,15 @@ int imx6_esdhc_start_image(int instance)
  */
 int imx8_esdhc_start_image(int instance)
 {
-	struct esdhc esdhc;
+	struct esdhc_soc_data data;
+	struct fsl_esdhc_host host;
 	int ret;
 
-	ret = imx8_esdhc_init(&esdhc, instance);
+	ret = imx8_esdhc_init(&host, &data, instance);
 	if (ret)
 		return ret;
 
-	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR,
+	return esdhc_start_image(&host, MX8MQ_DDR_CSD1_BASE_ADDR,
 				 MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
 }
 
@@ -448,11 +432,12 @@ int imx8_esdhc_load_piggy(int instance)
 {
 	void *buf, *piggy;
 	struct imx_flash_header_v2 *hdr = NULL;
-	struct esdhc esdhc;
+	struct esdhc_soc_data data;
+	struct fsl_esdhc_host host;
 	int ret, len;
 	int offset = SZ_32K;
 
-	ret = imx8_esdhc_init(&esdhc, instance);
+	ret = imx8_esdhc_init(&host, &data, instance);
 	if (ret)
 		return ret;
 
@@ -463,14 +448,14 @@ int imx8_esdhc_load_piggy(int instance)
 	 */
 	buf = (void *)MX8MQ_ATF_BL33_BASE_ADDR + SZ_32M;
 
-	ret = esdhc_search_header(&esdhc, &hdr, buf, &offset);
+	ret = esdhc_search_header(&host, &hdr, buf, &offset);
 	if (ret)
 		return ret;
 
 	len = offset + hdr->boot_data.size + piggydata_size();
 	len = ALIGN(len, SECTOR_SIZE);
 
-	ret = esdhc_read_blocks(&esdhc, buf, len);
+	ret = esdhc_read_blocks(&host, buf, len);
 
 	/*
 	 * Calculate location of the piggydata at the offset loaded into RAM
@@ -508,29 +493,33 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 {
 	int ret;
 	uint32_t val;
-	struct esdhc esdhc = {
+	struct esdhc_soc_data data = {
+		.flags = ESDHC_FLAG_BIGENDIAN,
+	};
+	struct fsl_esdhc_host host = {
 		.regs = IOMEM(0x01560000),
-		.is_be = true,
+		.socdata = &data,
 	};
 	unsigned long sdram = 0x80000000;
 	void (*barebox)(unsigned long, unsigned long, unsigned long) =
 		(void *)(sdram + LS1046A_SD_IMAGE_OFFSET);
 
-	esdhc_write32(&esdhc, IMX_SDHCI_WML, 0);
+	esdhc_populate_sdhci(&host);
+	sdhci_write32(&host.sdhci, IMX_SDHCI_WML, 0);
 
 	/*
 	 * The ROM leaves us here with a clock frequency of around 400kHz. Speed
 	 * this up a bit. FIXME: The resulting frequency has not yet been verified
 	 * to work on all cards.
 	 */
-	val = esdhc_read32(&esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
+	val = sdhci_read32(&host.sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 	val &= ~0x0000fff0;
 	val |= (8 << 8) | (3 << 4);
-	esdhc_write32(&esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
+	sdhci_write32(&host.sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
 
-	esdhc_write32(&esdhc, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
+	sdhci_write32(&host.sdhci, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
 
-	ret = esdhc_read_blocks(&esdhc, (void *)sdram,
+	ret = esdhc_read_blocks(&host, (void *)sdram,
 			ALIGN(barebox_image_size + LS1046A_SD_IMAGE_OFFSET, 512));
 	if (ret) {
 		pr_err("%s: reading blocks failed with: %d\n", __func__, ret);
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index b6dd75d2c..9dbf5bccc 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -39,131 +39,13 @@
 #include "sdhci.h"
 #include "imx-esdhc.h"
 
-/*
- * The CMDTYPE of the CMD register (offset 0xE) should be set to
- * "11" when the STOP CMD12 is issued on imx53 to abort one
- * open ended multi-blk IO. Otherwise the TC INT wouldn't
- * be generated.
- * In exact block transfer, the controller doesn't complete the
- * operations automatically as required at the end of the
- * transfer and remains on hold if the abort command is not sent.
- * As a result, the TC flag is not asserted and SW  received timeout
- * exeception. Bit1 of Vendor Spec registor is used to fix it.
- */
-#define ESDHC_FLAG_MULTIBLK_NO_INT	BIT(1)
-/*
- * The flag enables the workaround for ESDHC errata ENGcm07207 which
- * affects i.MX25 and i.MX35.
- */
-#define ESDHC_FLAG_ENGCM07207		BIT(2)
-/*
- * The flag tells that the ESDHC controller is an USDHC block that is
- * integrated on the i.MX6 series.
- */
-#define ESDHC_FLAG_USDHC		BIT(3)
-/* The IP supports manual tuning process */
-#define ESDHC_FLAG_MAN_TUNING		BIT(4)
-/* The IP supports standard tuning process */
-#define ESDHC_FLAG_STD_TUNING		BIT(5)
-/* The IP has SDHCI_CAPABILITIES_1 register */
-#define ESDHC_FLAG_HAVE_CAP1		BIT(6)
-
-/*
- * The IP has errata ERR004536
- * uSDHC: ADMA Length Mismatch Error occurs if the AHB read access is slow,
- * when reading data from the card
- */
-#define ESDHC_FLAG_ERR004536		BIT(7)
-/* The IP supports HS200 mode */
-#define ESDHC_FLAG_HS200		BIT(8)
-/* The IP supports HS400 mode */
-#define ESDHC_FLAG_HS400		BIT(9)
-
-/* Need to access registers in bigendian mode */
-#define ESDHC_FLAG_BIGENDIAN		BIT(10)
-/* Enable cache snooping */
-#define ESDHC_FLAG_CACHE_SNOOPING	BIT(11)
 
 #define PRSSTAT_DAT0  0x01000000
 #define PRSSTAT_SDSTB 0x00000008
 
-struct esdhc_soc_data {
-	u32 flags;
-	const char *clkidx;
-};
-
-struct fsl_esdhc_host {
-	struct mci_host		mci;
-	void __iomem		*regs;
-	struct device_d		*dev;
-	struct clk		*clk;
-	const struct esdhc_soc_data *socdata;
-	struct sdhci	sdhci;
-};
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
 
-static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
-{
-	return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
-}
-
-static inline struct fsl_esdhc_host *sdhci_to_esdhc(struct sdhci *sdhci)
-{
-	return container_of(sdhci, struct fsl_esdhc_host, sdhci);
-}
-
-static u32 esdhc_op_read32_le(struct sdhci *sdhci, int reg)
-{
-	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
-
-	return readl(host->regs + reg);
-}
-
-static u32 esdhc_op_read32_be(struct sdhci *sdhci, int reg)
-{
-	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
-
-	return in_be32(host->regs + reg);
-}
-
-static void esdhc_op_write32_le(struct sdhci *sdhci, int reg, u32 val)
-{
-	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
-
-	writel(val, host->regs + reg);
-}
-
-static void esdhc_op_write32_be(struct sdhci *sdhci, int reg, u32 val)
-{
-	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
-
-	out_be32(host->regs + reg, val);
-}
-
-static inline void esdhc_clrsetbits32(struct fsl_esdhc_host *host, unsigned int reg,
-				      u32 clear, u32 set)
-{
-	u32 val;
-
-	val = sdhci_read32(&host->sdhci, reg);
-	val &= ~clear;
-	val |= set;
-	sdhci_write32(&host->sdhci, reg, val);
-}
-
-static inline void esdhc_clrbits32(struct fsl_esdhc_host *host, unsigned int reg,
-				      u32 clear)
-{
-	esdhc_clrsetbits32(host, reg, clear, 0);
-}
-
-static inline void esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg,
-				   u32 set)
-{
-	esdhc_clrsetbits32(host, reg, 0, set);
-}
-
 static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
 			    dma_addr_t dma)
 {
@@ -578,13 +460,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	}
 	host->regs = IOMEM(iores->start);
 
-	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN) {
-		host->sdhci.read32 = esdhc_op_read32_be;
-		host->sdhci.write32 = esdhc_op_write32_be;
-	} else {
-		host->sdhci.read32 = esdhc_op_read32_le;
-		host->sdhci.write32 = esdhc_op_write32_le;
-	}
+	esdhc_populate_sdhci(host);
 
 	caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
 
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index ad05c4c0b..e5647187b 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -69,4 +69,102 @@
 #define ESDHC_DMA_SYSCTL	0x40c /* Layerscape specific */
 #define ESDHC_SYSCTL_DMA_SNOOP 	BIT(6)
 
+
+/*
+ * The CMDTYPE of the CMD register (offset 0xE) should be set to
+ * "11" when the STOP CMD12 is issued on imx53 to abort one
+ * open ended multi-blk IO. Otherwise the TC INT wouldn't
+ * be generated.
+ * In exact block transfer, the controller doesn't complete the
+ * operations automatically as required at the end of the
+ * transfer and remains on hold if the abort command is not sent.
+ * As a result, the TC flag is not asserted and SW  received timeout
+ * exeception. Bit1 of Vendor Spec registor is used to fix it.
+ */
+#define ESDHC_FLAG_MULTIBLK_NO_INT	BIT(1)
+/*
+ * The flag enables the workaround for ESDHC errata ENGcm07207 which
+ * affects i.MX25 and i.MX35.
+ */
+#define ESDHC_FLAG_ENGCM07207		BIT(2)
+/*
+ * The flag tells that the ESDHC controller is an USDHC block that is
+ * integrated on the i.MX6 series.
+ */
+#define ESDHC_FLAG_USDHC		BIT(3)
+/* The IP supports manual tuning process */
+#define ESDHC_FLAG_MAN_TUNING		BIT(4)
+/* The IP supports standard tuning process */
+#define ESDHC_FLAG_STD_TUNING		BIT(5)
+/* The IP has SDHCI_CAPABILITIES_1 register */
+#define ESDHC_FLAG_HAVE_CAP1		BIT(6)
+
+/*
+ * The IP has errata ERR004536
+ * uSDHC: ADMA Length Mismatch Error occurs if the AHB read access is slow,
+ * when reading data from the card
+ */
+#define ESDHC_FLAG_ERR004536		BIT(7)
+/* The IP supports HS200 mode */
+#define ESDHC_FLAG_HS200		BIT(8)
+/* The IP supports HS400 mode */
+#define ESDHC_FLAG_HS400		BIT(9)
+/* Need to access registers in bigendian mode */
+#define ESDHC_FLAG_BIGENDIAN		BIT(10)
+/* Enable cache snooping */
+#define ESDHC_FLAG_CACHE_SNOOPING	BIT(11)
+
+struct esdhc_soc_data {
+	u32 flags;
+	const char *clkidx;
+};
+
+struct fsl_esdhc_host {
+	struct mci_host		mci;
+	struct clk		*clk;
+	struct device_d		*dev;
+	void __iomem		*regs;
+	const struct esdhc_soc_data *socdata;
+	struct sdhci	sdhci;
+};
+
+
+static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
+{
+	return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
+}
+
+static inline struct fsl_esdhc_host *sdhci_to_esdhc(struct sdhci *sdhci)
+{
+	return container_of(sdhci, struct fsl_esdhc_host, sdhci);
+}
+
+static inline void
+esdhc_clrsetbits32(struct fsl_esdhc_host *host, unsigned int reg,
+		   u32 clear, u32 set)
+{
+	u32 val;
+
+	val = sdhci_read32(&host->sdhci, reg);
+	val &= ~clear;
+	val |= set;
+	sdhci_write32(&host->sdhci, reg, val);
+}
+
+static inline void
+esdhc_clrbits32(struct fsl_esdhc_host *host, unsigned int reg,
+		u32 clear)
+{
+	esdhc_clrsetbits32(host, reg, clear, 0);
+}
+
+static inline void
+esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg,
+		u32 set)
+{
+	esdhc_clrsetbits32(host, reg, 0, set);
+}
+
+void esdhc_populate_sdhci(struct fsl_esdhc_host *host);
+
 #endif  /* __FSL_ESDHC_H__ */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
