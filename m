Delivery-date: Fri, 23 Apr 2021 16:30:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwpI-0005yD-Sg
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 16:30:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwpF-0000af-CS
	for lore@pengutronix.de; Fri, 23 Apr 2021 16:30:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fNZzj/i8Xd/cDo6UD6Jx7lYpnZo/tqIt0X7hx1tSjdU=; b=Aa+D9pvjrZ3tu7Btw3N1Px2Jt
	nll4pbtNce5+zz0retrbKDE3Oc+NMHJsuP2ZR1FAaQ6TJ6bz1T/yPJNkmINBf7AnqtQcDcmxFOEj2
	feisFphZMrKd+a9Whg0TzgMppMroGmVD/4+n1e+/4phaXrKhlqzaoRjLsYTexyt4WvWdTs+5Bu9RS
	9CyIQozHeJRVTpTU9CcZgkDQw9lq19ifSvB/LQ9ppj7d5hTk4vf9dpyEyht9iYQm+DnG4eQmO/wBC
	enUw+99cgChU3dxixSaCGmVRt7/ocIlNwzRGxcQRwVnU8OCFaZAraZrwbsGKQTYPro2rkKjTxyXRj
	IuIsaLRHg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZwo0-001gwE-2m; Fri, 23 Apr 2021 14:29:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwnV-001gq7-Jr
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 14:28:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=nb2I9h2ynH76U1mxyvdyPizfwQR7AWOYQkJYaelt0W8=; b=bkPPdeAGi92aTbQmiGZLIivDj+
 j4qsdVMl/6kEouITV5DJD+7AqbPKLSt8Zne+xnwQLIt1/FMxpb23UDGZv1dOlvKS/tTLyLLHZbg1b
 R1sDcuB5j7w4rHlUkg4W2BGR/wMo+W9f6lmfzSxqNfdM2PYV3dFM3iotpAs5MxT2fsCH1ob0Wsqso
 71neM9+Jg8KIuaiotbiERiR49lKYx9fPuRQ1LKJRn+DnhppH7uVAWW5osNEU/VZFBpI/b9llKlTUQ
 HKVNqyawSye8P681Lc6fY752nIum5Gqp3WlcQ2tt3co6EWbBUUMnCYJY7RWTtx0Fy6Uw01bbHwRRw
 1Dchyz8g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwnO-00ETBY-U8
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 14:28:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwnN-0008WO-BC; Fri, 23 Apr 2021 16:28:37 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwnN-0007gJ-1p; Fri, 23 Apr 2021 16:28:37 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 23 Apr 2021 16:28:24 +0200
Message-Id: <20210423142829.29468-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210423142829.29468-1-o.rempel@pengutronix.de>
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_072839_339500_11FA2E25 
X-CRM114-Status: GOOD (  23.50  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] mci: atmel_mci: add PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Move most of the atmel_mci code to atmel_mci_common.c and introduce
atmel_mci_pbl.c for the PBL part.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/xload.h |   2 +
 drivers/mci/Kconfig                     |   4 +
 drivers/mci/Makefile                    |   3 +-
 drivers/mci/atmel-mci-regs.h            |  37 ++
 drivers/mci/atmel_mci.c                 | 494 +-----------------------
 drivers/mci/atmel_mci_common.c          | 465 ++++++++++++++++++++++
 drivers/mci/atmel_mci_pbl.c             | 116 ++++++
 7 files changed, 645 insertions(+), 476 deletions(-)
 create mode 100644 drivers/mci/atmel_mci_common.c
 create mode 100644 drivers/mci/atmel_mci_pbl.c

diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
index 338577c221..9201e7d0b7 100644
--- a/arch/arm/mach-at91/include/mach/xload.h
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -7,5 +7,7 @@
 void __noreturn sama5d2_sdhci_start_image(u32 r4);
 
 int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
+int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
+		      unsigned int clock, unsigned int slot);
 
 #endif /* __MACH_XLOAD_H */
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index b4c4072596..7d4e72138d 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -210,6 +210,10 @@ config MCI_IMX_ESDHC_PBL
 	bool
 	select MCI_SDHCI
 
+config MCI_ATMEL_PBL
+	bool
+	select MCI_ATMEL
+
 config MCI_ATMEL_SDHCI_PBL
 	bool
 	select MCI_SDHCI
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 4a53633674..60dc100c37 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,10 +1,11 @@
 obj-$(CONFIG_MCI)		+= mci-core.o
 obj-$(CONFIG_MCI_ARASAN)	+= arasan-sdhci.o
-obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o
+obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o atmel_mci_common.o
 obj-$(CONFIG_MCI_ATMEL_SDHCI)	+= atmel-sdhci.o atmel-sdhci-common.o
 obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
 obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
 obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
+pbl-$(CONFIG_MCI_ATMEL_PBL)	+= atmel_mci_pbl.o atmel_mci_common.o
 pbl-$(CONFIG_MCI_ATMEL_SDHCI_PBL)	+= atmel-sdhci-pbl.o atmel-sdhci-common.o
 obj-$(CONFIG_MCI_IMX)		+= imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o imx-esdhc-common.o
diff --git a/drivers/mci/atmel-mci-regs.h b/drivers/mci/atmel-mci-regs.h
index 676f419601..045c1a9f38 100644
--- a/drivers/mci/atmel-mci-regs.h
+++ b/drivers/mci/atmel-mci-regs.h
@@ -144,6 +144,37 @@
 #	define ATMCI_PDC_CONNECTED	1
 #endif
 
+struct atmel_mci_caps {
+	bool	has_cfg_reg;
+	bool	has_highspeed;
+	bool    has_rwproof;
+	bool	has_odd_clk_div;
+	bool	need_reset_after_xfer;
+};
+
+struct atmel_mci {
+	struct mci_host		mci;
+	void  __iomem		*regs;
+	struct device_d		*hw_dev;
+	struct clk		*clk;
+
+	u32			datasize;
+	struct mci_cmd		*cmd;
+	struct mci_data		*data;
+	unsigned		slot_b;
+	int			version;
+	struct atmel_mci_caps	caps;
+
+	unsigned long		bus_hz;
+	u32			mode_reg;
+	u32			cfg_reg;
+	u32			sdc_reg;
+	bool			need_reset;
+	int			detect_pin;
+};
+
+#define to_mci_host(mci)	container_of(mci, struct atmel_mci, mci)
+
 /*
  * Fix sconfig's burst size according to atmel MCI. We need to convert them as:
  * 1 -> 0, 4 -> 1, 8 -> 2, 16 -> 3.
@@ -158,4 +189,10 @@ static inline unsigned int atmci_convert_chksize(unsigned int maxburst)
 		return 0;
 }
 
+void atmci_common_set_ios(struct atmel_mci *host, struct mci_ios *ios);
+int atmci_reset(struct mci_host *mci, struct device_d *mci_dev);
+int atmci_common_request(struct atmel_mci *host, struct mci_cmd *cmd,
+			 struct mci_data *data);
+void atmci_get_cap(struct atmel_mci *host);
+
 #endif /* __DRIVERS_MMC_ATMEL_MCI_H__ */
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 2d51b0e2bc..e676c1bd5c 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -7,460 +7,28 @@
 /* Atmel MCI driver */
 
 #include <common.h>
-#include <init.h>
-#include <mci.h>
-#include <errno.h>
-#include <clock.h>
 #include <gpio.h>
-#include <io.h>
 #include <linux/clk.h>
-#include <linux/err.h>
-#include <platform_data/atmel-mci.h>
+#include <mci.h>
 #include <of_gpio.h>
+#include <platform_data/atmel-mci.h>
 
 #include "atmel-mci-regs.h"
 
-struct atmel_mci_caps {
-	bool	has_cfg_reg;
-	bool	has_highspeed;
-	bool    has_rwproof;
-	bool	has_odd_clk_div;
-	bool	need_reset_after_xfer;
-};
-
-struct atmel_mci {
-	struct mci_host		mci;
-	void  __iomem		*regs;
-	struct device_d		*hw_dev;
-	struct clk		*clk;
-
-	u32			datasize;
-	struct mci_cmd		*cmd;
-	struct mci_data		*data;
-	unsigned		slot_b;
-	int			version;
-	struct atmel_mci_caps	caps;
-
-	unsigned long		bus_hz;
-	u32			mode_reg;
-	u32			cfg_reg;
-	u32			sdc_reg;
-	bool			need_reset;
-	int			detect_pin;
-};
-
-#define to_mci_host(mci)	container_of(mci, struct atmel_mci, mci)
-
-#define STATUS_ERROR_MASK	(ATMCI_RINDE  \
-				| ATMCI_RDIRE \
-				| ATMCI_RCRCE \
-				| ATMCI_RENDE \
-				| ATMCI_RTOE  \
-				| ATMCI_DCRCE \
-				| ATMCI_DTOE  \
-				| ATMCI_OVRE  \
-				| ATMCI_UNRE)
-
-static void atmci_set_clk_rate(struct atmel_mci *host,
-			       unsigned int clock_min)
-{
-	unsigned int clkdiv;
-
-	if (!host->mode_reg) {
-		clk_enable(host->clk);
-		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
-		if (host->caps.has_cfg_reg)
-			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
-	}
-
-	if (host->caps.has_odd_clk_div) {
-		clkdiv = DIV_ROUND_UP(host->bus_hz, clock_min) - 2;
-		if (clkdiv > 511) {
-			dev_dbg(host->hw_dev,
-			         "clock %u too slow; using %lu\n",
-			         clock_min, host->bus_hz / (511 + 2));
-			clkdiv = 511;
-		}
-		host->mode_reg = ATMCI_MR_CLKDIV(clkdiv >> 1)
-				 | ATMCI_MR_CLKODD(clkdiv & 1);
-	} else {
-		clkdiv = DIV_ROUND_UP(host->bus_hz, 2 * clock_min) - 1;
-		if (clkdiv > 255) {
-			dev_dbg(host->hw_dev,
-				 "clock %u too slow; using %lu\n",
-				 clock_min, host->bus_hz / (2 * 256));
-			clkdiv = 255;
-		}
-		host->mode_reg = ATMCI_MR_CLKDIV(clkdiv);
-	}
-
-	dev_dbg(host->hw_dev, "atmel_set_clk_rate: clkIn=%ld clkIos=%d divider=%d\n",
-		host->bus_hz, clock_min, clkdiv);
-
-	/*
-	 * WRPROOF and RDPROOF prevent overruns/underruns by
-	 * stopping the clock when the FIFO is full/empty.
-	 * This state is not expected to last for long.
-	 */
-	if (host->caps.has_rwproof)
-		host->mode_reg |= ATMCI_MR_RDPROOF | ATMCI_MR_WRPROOF;
-
-	atmci_writel(host, ATMCI_MR, host->mode_reg);
-}
-
-static int atmci_poll_status(struct atmel_mci *host, u32 mask)
-{
-	u32 stat;
-	uint64_t start = get_time_ns();
-
-	do {
-		stat = atmci_readl(host, ATMCI_SR);
-		if (stat & STATUS_ERROR_MASK)
-			return stat;
-		if (is_timeout(start, SECOND)) {
-			dev_err(host->hw_dev, "timeout\n");
-			host->need_reset = true;
-			return ATMCI_RTOE | stat;
-		}
-		if (stat & mask)
-			return 0;
-	} while (1);
-}
-
-static int atmci_pull(struct atmel_mci *host, void *_buf, int bytes)
-{
-	unsigned int stat;
-	u32 *buf = _buf;
-
-	while (bytes > 3) {
-		stat = atmci_poll_status(host, ATMCI_RXRDY);
-		if (stat)
-			return stat;
-
-		*buf++ = atmci_readl(host, ATMCI_RDR);
-		bytes -= 4;
-	}
-
-	if (WARN_ON(bytes))
-		return -EIO;
-
-	return 0;
-}
-
-#ifdef CONFIG_MCI_WRITE
-static int atmci_push(struct atmel_mci *host, const void *_buf, int bytes)
-{
-	unsigned int stat;
-	const u32 *buf = _buf;
-
-	while (bytes > 3) {
-		stat = atmci_poll_status(host, ATMCI_TXRDY);
-		if (stat)
-			return stat;
-
-		atmci_writel(host, ATMCI_TDR, *buf++);
-		bytes -= 4;
-	}
-
-	stat = atmci_poll_status(host, ATMCI_TXRDY);
-	if (stat)
-		return stat;
-
-	if (WARN_ON(bytes))
-		return -EIO;
-
-	return 0;
-}
-#endif /* CONFIG_MCI_WRITE */
-
-static int atmci_transfer_data(struct atmel_mci *host)
-{
-	struct mci_data *data = host->data;
-	int stat;
-	unsigned long length;
-
-	length = data->blocks * data->blocksize;
-	host->datasize = 0;
-
-	if (data->flags & MMC_DATA_READ) {
-		stat = atmci_pull(host, data->dest, length);
-		if (stat)
-			return stat;
-
-		stat = atmci_poll_status(host, ATMCI_NOTBUSY);
-		if (stat)
-			return stat;
-
-		host->datasize += length;
-	} else {
-#ifdef CONFIG_MCI_WRITE
-		stat = atmci_push(host, (const void *)(data->src), length);
-		if (stat)
-			return stat;
-
-		host->datasize += length;
-		stat = atmci_poll_status(host, ATMCI_NOTBUSY);
-		if (stat)
-			return stat;
-#endif /* CONFIG_MCI_WRITE */
-	}
-	return 0;
-}
-
-static void atmci_finish_request(struct atmel_mci *host)
-{
-	host->cmd = NULL;
-	host->data = NULL;
-}
-
-static int atmci_finish_data(struct atmel_mci *host, unsigned int stat)
-{
-	int data_error = 0;
-
-	if (stat & STATUS_ERROR_MASK) {
-		dev_err(host->hw_dev, "request failed (status=0x%08x)\n", stat);
-		if (stat & ATMCI_DCRCE)
-			data_error = -EILSEQ;
-		else if (stat & (ATMCI_RTOE | ATMCI_DTOE))
-			data_error = -ETIMEDOUT;
-		else
-			data_error = -EIO;
-	}
-
-	host->data = NULL;
-
-	return data_error;
-}
-
-static void atmci_setup_data(struct atmel_mci *host, struct mci_data *data)
-{
-	unsigned int nob = data->blocks;
-	unsigned int blksz = data->blocksize;
-	unsigned int datasize = nob * blksz;
-
-	BUG_ON(data->blocksize & 3);
-	BUG_ON(nob == 0);
-
-	host->data = data;
-
-	dev_dbg(host->hw_dev, "atmel_setup_data: nob=%d blksz=%d\n",
-		nob, blksz);
-
-	atmci_writel(host, ATMCI_BLKR, ATMCI_BCNT(nob)
-		| ATMCI_BLKLEN(blksz));
-
-	host->datasize = datasize;
-}
-
-static int atmci_read_response(struct atmel_mci *host, unsigned int stat)
-{
-	struct mci_cmd *cmd = host->cmd;
-	int i;
-	u32 *resp;
-
-	if (!cmd)
-		return 0;
-
-	resp = (u32 *)cmd->response;
-
-	if (stat & (ATMCI_RTOE | ATMCI_DTOE)) {
-		dev_err(host->hw_dev, "command/data timeout\n");
-		return -ETIMEDOUT;
-	} else if ((stat & ATMCI_RCRCE) && (cmd->resp_type & MMC_RSP_CRC)) {
-		dev_err(host->hw_dev, "cmd crc error\n");
-		return -EILSEQ;
-	}
-
-	if (cmd->resp_type & MMC_RSP_PRESENT) {
-		if (cmd->resp_type & MMC_RSP_136) {
-			for (i = 0; i < 4; i++)
-				resp[i] = atmci_readl(host, ATMCI_RSPR);
-		} else {
-			resp[0] = atmci_readl(host, ATMCI_RSPR);
-		}
-	}
-
-	return 0;
-}
-
-static int atmci_cmd_done(struct atmel_mci *host, unsigned int stat)
-{
-	int datastat;
-	int ret;
-
-	ret = atmci_read_response(host, stat);
-
-	if (ret) {
-		atmci_finish_request(host);
-		return ret;
-	}
-
-	if (!host->data) {
-		atmci_finish_request(host);
-		return 0;
-	}
-
-	datastat = atmci_transfer_data(host);
-	ret = atmci_finish_data(host, datastat);
-	atmci_finish_request(host);
-	return ret;
-}
-
-static int atmci_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
-			   unsigned int cmdat)
-{
-	unsigned flags = 0;
-	unsigned cmdval = 0;
-
-	if (host->cmd != NULL)
-		dev_err(host->hw_dev, "error!\n");
-
-	if ((atmci_readl(host, ATMCI_SR) & ATMCI_CMDRDY) == 0) {
-		dev_err(host->hw_dev, "mci not ready!\n");
-		return -EBUSY;
-	}
-
-	host->cmd = cmd;
-	cmdval = ATMCI_CMDR_CMDNB_MASK & cmd->cmdidx;
-
-	switch (cmd->resp_type) {
-	case MMC_RSP_R1: /* short CRC, OPCODE */
-	case MMC_RSP_R1b:/* short CRC, OPCODE, BUSY */
-		flags |= ATMCI_CMDR_RSPTYP_48BIT;
-		break;
-	case MMC_RSP_R2: /* long 136 bit + CRC */
-		flags |= ATMCI_CMDR_RSPTYP_136BIT;
-		break;
-	case MMC_RSP_R3: /* short */
-		flags |= ATMCI_CMDR_RSPTYP_48BIT;
-		break;
-	case MMC_RSP_NONE:
-		flags |= ATMCI_CMDR_RSPTYP_NONE;
-		break;
-	default:
-		dev_err(host->hw_dev, "unhandled response type 0x%x\n",
-				cmd->resp_type);
-		return -EINVAL;
-	}
-	cmdval |= ATMCI_CMDR_RSPTYP & flags;
-	cmdval |= cmdat & ~(ATMCI_CMDR_CMDNB_MASK | ATMCI_CMDR_RSPTYP);
-
-	atmci_writel(host, ATMCI_ARGR, cmd->cmdarg);
-	atmci_writel(host, ATMCI_CMDR, cmdval);
-
-	return 0;
-}
-
-static int atmci_card_present(struct mci_host *mci)
-{
-	struct atmel_mci *host = to_mci_host(mci);
-	int ret;
-
-	/* No gpio, assume card is present */
-	if (!gpio_is_valid(host->detect_pin))
-		return 1;
-
-	ret = gpio_get_value(host->detect_pin);
-
-	return ret == 0 ? 1 : 0;
-}
-
-/** init the host interface */
-static int atmci_reset(struct mci_host *mci, struct device_d *mci_dev)
-{
-	struct atmel_mci *host = to_mci_host(mci);
-
-	clk_enable(host->clk);
-	atmci_writel(host, ATMCI_DTOR, 0x7f);
-	clk_disable(host->clk);
-
-	return 0;
-}
-
 /** change host interface settings */
 static void atmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct atmel_mci *host = to_mci_host(mci);
 
-	dev_dbg(host->hw_dev, "atmel_mci_set_ios: bus_width=%d clk=%d\n",
-		ios->bus_width, ios->clock);
-
-	host->sdc_reg &= ~ATMCI_SDCBUS_MASK;
-	switch (ios->bus_width) {
-	case MMC_BUS_WIDTH_4:
-		host->sdc_reg |= ATMCI_SDCBUS_4BIT;
-		break;
-	case MMC_BUS_WIDTH_8:
-		host->sdc_reg |= ATMCI_SDCBUS_8BIT;
-		break;
-	case MMC_BUS_WIDTH_1:
-		host->sdc_reg |= ATMCI_SDCBUS_1BIT;
-		break;
-	default:
-		return;
-	}
-
-	if (ios->clock) {
-		atmci_set_clk_rate(host, ios->clock);
-
-		if (host->caps.has_cfg_reg) {
-			/* setup High Speed mode in relation with card capacity */
-			if (ios->timing == MMC_TIMING_SD_HS)
-				host->cfg_reg |= ATMCI_CFG_HSMODE;
-			else
-				host->cfg_reg &= ~ATMCI_CFG_HSMODE;
-
-			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
-		}
-	} else {
-		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIDIS);
-		if (host->mode_reg) {
-			atmci_readl(host, ATMCI_MR);
-			clk_disable(host->clk);
-		}
-		host->mode_reg = 0;
-	}
-
-	return;
+	atmci_common_set_ios(host, ios);
 }
 
-/** handle a command */
-static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+static int atmci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
+		  struct mci_data *data)
 {
 	struct atmel_mci *host = to_mci_host(mci);
-	u32 stat, cmdat = 0;
-	int ret;
-
-	if (host->need_reset || host->caps.need_reset_after_xfer) {
-		atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST);
-		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
-		atmci_writel(host, ATMCI_MR, host->mode_reg);
-		if (host->caps.has_cfg_reg)
-			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
-		host->need_reset = false;
-	}
-	atmci_writel(host, ATMCI_SDCR, host->sdc_reg);
 
-	if (cmd->resp_type != MMC_RSP_NONE)
-		cmdat |= ATMCI_CMDR_MAXLAT_64CYC;
-
-	if (data) {
-		atmci_setup_data(host, data);
-
-		cmdat |= ATMCI_CMDR_START_XFER | ATMCI_CMDR_MULTI_BLOCK;
-
-		if (data->flags & MMC_DATA_READ)
-			cmdat |= ATMCI_CMDR_TRDIR_READ;
-	}
-
-	ret = atmci_start_cmd(host, cmd, cmdat);
-	if (ret) {
-		atmci_finish_request(host);
-		return ret;
-	}
-
-	stat = atmci_poll_status(host, ATMCI_CMDRDY);
-	return atmci_cmd_done(host, stat);
+	return atmci_common_request(host, cmd, data);
 }
 
 static void atmci_info(struct device_d *mci_dev)
@@ -484,43 +52,19 @@ static void atmci_info(struct device_d *mci_dev)
 		gpio_is_valid(host->detect_pin) ? "yes" : "no");
 
 }
-/*
- * HSMCI (High Speed MCI) module is not fully compatible with MCI module.
- * HSMCI provides DMA support and a new config register but no more supports
- * PDC.
- */
-static void atmci_get_cap(struct atmel_mci *host)
+
+static int atmci_card_present(struct mci_host *mci)
 {
-	unsigned int version;
-
-	version = atmci_readl(host, ATMCI_VERSION) & 0x00000fff;
-	host->version = version;
-
-	dev_info(host->hw_dev, "version: 0x%x\n", version);
-
-	host->caps.has_cfg_reg = 0;
-	host->caps.has_highspeed = 0;
-	host->caps.need_reset_after_xfer = 1;
-
-	switch (version & 0xf00) {
-	case 0x600:
-	case 0x500:
-		host->caps.has_odd_clk_div = 1;
-	case 0x400:
-	case 0x300:
-		host->caps.has_cfg_reg = 1;
-		host->caps.has_highspeed = 1;
-	case 0x200:
-		host->caps.has_rwproof = 1;
-	case 0x100:
-		host->caps.need_reset_after_xfer = 0;
-	case 0x0:
-		break;
-	default:
-		dev_warn(host->hw_dev,
-				"Unmanaged mci version, set minimum capabilities\n");
-		break;
-	}
+	struct atmel_mci *host = to_mci_host(mci);
+	int ret;
+
+	/* No gpio, assume card is present */
+	if (!gpio_is_valid(host->detect_pin))
+		return 1;
+
+	ret = gpio_get_value(host->detect_pin);
+
+	return ret == 0 ? 1 : 0;
 }
 
 static int atmci_probe(struct device_d *hw_dev)
@@ -532,7 +76,7 @@ static int atmci_probe(struct device_d *hw_dev)
 	int ret;
 
 	host = xzalloc(sizeof(*host));
-	host->mci.send_cmd = atmci_request;
+	host->mci.send_cmd = atmci_send_cmd;
 	host->mci.set_ios = atmci_set_ios;
 	host->mci.init = atmci_reset;
 	host->mci.card_present = atmci_card_present;
diff --git a/drivers/mci/atmel_mci_common.c b/drivers/mci/atmel_mci_common.c
new file mode 100644
index 0000000000..5c9e6f9c4d
--- /dev/null
+++ b/drivers/mci/atmel_mci_common.c
@@ -0,0 +1,465 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2011 Hubert Feurstein <h.feurstein@gmail.com>
+// SPDX-FileCopyrightText: 2009 Ilya Yanok <yanok@emcraft.com>
+// SPDX-FileCopyrightText: 2008 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+// SPDX-FileCopyrightText: 2006 Pavel Pisa <ppisa@pikron.com>, PiKRON
+
+#include <common.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/iopoll.h>
+#include <mci.h>
+
+#include "atmel-mci-regs.h"
+
+#ifdef __PBL__
+#define udelay early_udelay
+#undef  dev_err
+#define dev_err(d, ...)		pr_err(__VA_ARGS__)
+#undef  dev_warn
+#define dev_warn(d, ...)	pr_warn(__VA_ARGS__)
+#undef  dev_dbg
+#define dev_dbg(d, ...)		pr_debug(__VA_ARGS__)
+#undef  dev_info
+#define dev_info(d, ...)	pr_info(__VA_ARGS__)
+#undef	clk_enable
+#define clk_enable(...)
+#undef	clk_disable
+#define clk_disable(...)
+#endif
+
+#define STATUS_ERROR_MASK	(ATMCI_RINDE  \
+				| ATMCI_RDIRE \
+				| ATMCI_RCRCE \
+				| ATMCI_RENDE \
+				| ATMCI_RTOE  \
+				| ATMCI_DCRCE \
+				| ATMCI_DTOE  \
+				| ATMCI_OVRE  \
+				| ATMCI_UNRE)
+
+static void atmci_set_clk_rate(struct atmel_mci *host,
+			       unsigned int clock_min)
+{
+	unsigned int clkdiv;
+
+	if (!host->mode_reg) {
+		clk_enable(host->clk);
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
+		if (host->caps.has_cfg_reg)
+			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
+	}
+
+	if (host->caps.has_odd_clk_div) {
+		clkdiv = DIV_ROUND_UP(host->bus_hz, clock_min) - 2;
+		if (clkdiv > 511) {
+			dev_dbg(host->hw_dev,
+			         "clock %u too slow; using %lu\n",
+			         clock_min, host->bus_hz / (511 + 2));
+			clkdiv = 511;
+		}
+		host->mode_reg = ATMCI_MR_CLKDIV(clkdiv >> 1)
+				 | ATMCI_MR_CLKODD(clkdiv & 1);
+	} else {
+		clkdiv = DIV_ROUND_UP(host->bus_hz, 2 * clock_min) - 1;
+		if (clkdiv > 255) {
+			dev_dbg(host->hw_dev,
+				 "clock %u too slow; using %lu\n",
+				 clock_min, host->bus_hz / (2 * 256));
+			clkdiv = 255;
+		}
+		host->mode_reg = ATMCI_MR_CLKDIV(clkdiv);
+	}
+
+	dev_dbg(host->hw_dev, "atmel_set_clk_rate: clkIn=%ld clkIos=%d divider=%d\n",
+		host->bus_hz, clock_min, clkdiv);
+
+	/*
+	 * WRPROOF and RDPROOF prevent overruns/underruns by
+	 * stopping the clock when the FIFO is full/empty.
+	 * This state is not expected to last for long.
+	 */
+	if (host->caps.has_rwproof)
+		host->mode_reg |= ATMCI_MR_RDPROOF | ATMCI_MR_WRPROOF;
+
+	atmci_writel(host, ATMCI_MR, host->mode_reg);
+}
+
+static int atmci_poll_status(struct atmel_mci *host, u32 mask)
+{
+	u32 stat;
+	int ret;
+
+	ret = read_poll_timeout(atmci_readl, stat, (stat & mask), SECOND, host,
+				ATMCI_SR);
+	if (ret < 0) {
+		dev_err(host->hw_dev, "timeout\n");
+		host->need_reset = true;
+		return ATMCI_RTOE | stat;
+	}
+
+	if (stat & STATUS_ERROR_MASK)
+		return stat;
+
+	return 0;
+}
+
+static int atmci_pull(struct atmel_mci *host, void *_buf, int bytes)
+{
+	unsigned int stat;
+	u32 *buf = _buf;
+
+	while (bytes > 3) {
+		stat = atmci_poll_status(host, ATMCI_RXRDY);
+		if (stat)
+			return stat;
+
+		*buf++ = atmci_readl(host, ATMCI_RDR);
+		bytes -= 4;
+	}
+
+	if (WARN_ON(bytes))
+		return -EIO;
+
+	return 0;
+}
+
+#ifdef CONFIG_MCI_WRITE
+static int atmci_push(struct atmel_mci *host, const void *_buf, int bytes)
+{
+	unsigned int stat;
+	const u32 *buf = _buf;
+
+	while (bytes > 3) {
+		stat = atmci_poll_status(host, ATMCI_TXRDY);
+		if (stat)
+			return stat;
+
+		atmci_writel(host, ATMCI_TDR, *buf++);
+		bytes -= 4;
+	}
+
+	stat = atmci_poll_status(host, ATMCI_TXRDY);
+	if (stat)
+		return stat;
+
+	if (WARN_ON(bytes))
+		return -EIO;
+
+	return 0;
+}
+#endif /* CONFIG_MCI_WRITE */
+
+static int atmci_transfer_data(struct atmel_mci *host)
+{
+	struct mci_data *data = host->data;
+	int stat;
+	unsigned long length;
+
+	length = data->blocks * data->blocksize;
+	host->datasize = 0;
+
+	if (data->flags & MMC_DATA_READ) {
+		stat = atmci_pull(host, data->dest, length);
+		if (stat)
+			return stat;
+
+		stat = atmci_poll_status(host, ATMCI_NOTBUSY);
+		if (stat)
+			return stat;
+
+		host->datasize += length;
+	} else {
+#ifdef CONFIG_MCI_WRITE
+		stat = atmci_push(host, (const void *)(data->src), length);
+		if (stat)
+			return stat;
+
+		host->datasize += length;
+		stat = atmci_poll_status(host, ATMCI_NOTBUSY);
+		if (stat)
+			return stat;
+#endif /* CONFIG_MCI_WRITE */
+	}
+	return 0;
+}
+
+static void atmci_finish_request(struct atmel_mci *host)
+{
+	host->cmd = NULL;
+	host->data = NULL;
+}
+
+static int atmci_finish_data(struct atmel_mci *host, unsigned int stat)
+{
+	int data_error = 0;
+
+	if (stat & STATUS_ERROR_MASK) {
+		dev_err(host->hw_dev, "request failed (status=0x%08x)\n", stat);
+		if (stat & ATMCI_DCRCE)
+			data_error = -EILSEQ;
+		else if (stat & (ATMCI_RTOE | ATMCI_DTOE))
+			data_error = -ETIMEDOUT;
+		else
+			data_error = -EIO;
+	}
+
+	host->data = NULL;
+
+	return data_error;
+}
+
+static void atmci_setup_data(struct atmel_mci *host, struct mci_data *data)
+{
+	unsigned int nob = data->blocks;
+	unsigned int blksz = data->blocksize;
+	unsigned int datasize = nob * blksz;
+
+	BUG_ON(data->blocksize & 3);
+	BUG_ON(nob == 0);
+
+	host->data = data;
+
+	dev_dbg(host->hw_dev, "atmel_setup_data: nob=%d blksz=%d\n",
+		nob, blksz);
+
+	atmci_writel(host, ATMCI_BLKR, ATMCI_BCNT(nob)
+		| ATMCI_BLKLEN(blksz));
+
+	host->datasize = datasize;
+}
+
+static int atmci_read_response(struct atmel_mci *host, unsigned int stat)
+{
+	struct mci_cmd *cmd = host->cmd;
+	int i;
+	u32 *resp;
+
+	if (!cmd)
+		return 0;
+
+	resp = (u32 *)cmd->response;
+
+	if (stat & (ATMCI_RTOE | ATMCI_DTOE)) {
+		dev_err(host->hw_dev, "command/data timeout\n");
+		return -ETIMEDOUT;
+	} else if ((stat & ATMCI_RCRCE) && (cmd->resp_type & MMC_RSP_CRC)) {
+		dev_err(host->hw_dev, "cmd crc error\n");
+		return -EILSEQ;
+	}
+
+	if (cmd->resp_type & MMC_RSP_PRESENT) {
+		if (cmd->resp_type & MMC_RSP_136) {
+			for (i = 0; i < 4; i++)
+				resp[i] = atmci_readl(host, ATMCI_RSPR);
+		} else {
+			resp[0] = atmci_readl(host, ATMCI_RSPR);
+		}
+	}
+
+	return 0;
+}
+
+static int atmci_cmd_done(struct atmel_mci *host, unsigned int stat)
+{
+	int datastat;
+	int ret;
+
+	ret = atmci_read_response(host, stat);
+
+	if (ret) {
+		atmci_finish_request(host);
+		return ret;
+	}
+
+	if (!host->data) {
+		atmci_finish_request(host);
+		return 0;
+	}
+
+	datastat = atmci_transfer_data(host);
+	ret = atmci_finish_data(host, datastat);
+	atmci_finish_request(host);
+	return ret;
+}
+
+static int atmci_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
+			   unsigned int cmdat)
+{
+	unsigned flags = 0;
+	unsigned cmdval = 0;
+
+	if (host->cmd != NULL)
+		dev_err(host->hw_dev, "error!\n");
+
+	if ((atmci_readl(host, ATMCI_SR) & ATMCI_CMDRDY) == 0) {
+		dev_err(host->hw_dev, "mci not ready!\n");
+		return -EBUSY;
+	}
+
+	host->cmd = cmd;
+	cmdval = ATMCI_CMDR_CMDNB_MASK & cmd->cmdidx;
+
+	switch (cmd->resp_type) {
+	case MMC_RSP_R1: /* short CRC, OPCODE */
+	case MMC_RSP_R1b:/* short CRC, OPCODE, BUSY */
+		flags |= ATMCI_CMDR_RSPTYP_48BIT;
+		break;
+	case MMC_RSP_R2: /* long 136 bit + CRC */
+		flags |= ATMCI_CMDR_RSPTYP_136BIT;
+		break;
+	case MMC_RSP_R3: /* short */
+		flags |= ATMCI_CMDR_RSPTYP_48BIT;
+		break;
+	case MMC_RSP_NONE:
+		flags |= ATMCI_CMDR_RSPTYP_NONE;
+		break;
+	default:
+		dev_err(host->hw_dev, "unhandled response type 0x%x\n",
+				cmd->resp_type);
+		return -EINVAL;
+	}
+	cmdval |= ATMCI_CMDR_RSPTYP & flags;
+	cmdval |= cmdat & ~(ATMCI_CMDR_CMDNB_MASK | ATMCI_CMDR_RSPTYP);
+
+	atmci_writel(host, ATMCI_ARGR, cmd->cmdarg);
+	atmci_writel(host, ATMCI_CMDR, cmdval);
+
+	return 0;
+}
+
+/** init the host interface */
+int atmci_reset(struct mci_host *mci, struct device_d *mci_dev)
+{
+	struct atmel_mci *host = to_mci_host(mci);
+
+	clk_enable(host->clk);
+	atmci_writel(host, ATMCI_DTOR, 0x7f);
+	clk_disable(host->clk);
+
+	return 0;
+}
+
+/** change host interface settings */
+void atmci_common_set_ios(struct atmel_mci *host, struct mci_ios *ios)
+{
+	dev_dbg(host->hw_dev, "atmel_mci_set_ios: bus_width=%d clk=%d\n",
+		ios->bus_width, ios->clock);
+
+	host->sdc_reg &= ~ATMCI_SDCBUS_MASK;
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_4:
+		host->sdc_reg |= ATMCI_SDCBUS_4BIT;
+		break;
+	case MMC_BUS_WIDTH_8:
+		host->sdc_reg |= ATMCI_SDCBUS_8BIT;
+		break;
+	case MMC_BUS_WIDTH_1:
+		host->sdc_reg |= ATMCI_SDCBUS_1BIT;
+		break;
+	default:
+		return;
+	}
+
+	if (ios->clock) {
+		atmci_set_clk_rate(host, ios->clock);
+
+		if (host->caps.has_cfg_reg) {
+			/* setup High Speed mode in relation with card capacity */
+			if (ios->timing == MMC_TIMING_SD_HS)
+				host->cfg_reg |= ATMCI_CFG_HSMODE;
+			else
+				host->cfg_reg &= ~ATMCI_CFG_HSMODE;
+
+			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
+		}
+	} else {
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIDIS);
+		if (host->mode_reg) {
+			atmci_readl(host, ATMCI_MR);
+			clk_disable(host->clk);
+		}
+		host->mode_reg = 0;
+	}
+
+	return;
+}
+
+/** handle a command */
+int atmci_common_request(struct atmel_mci *host, struct mci_cmd *cmd,
+			 struct mci_data *data)
+{
+	u32 stat, cmdat = 0;
+	int ret;
+
+	if (host->need_reset || host->caps.need_reset_after_xfer) {
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST);
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
+		atmci_writel(host, ATMCI_MR, host->mode_reg);
+		if (host->caps.has_cfg_reg)
+			atmci_writel(host, ATMCI_CFG, host->cfg_reg);
+		host->need_reset = false;
+	}
+	atmci_writel(host, ATMCI_SDCR, host->sdc_reg);
+
+	if (cmd->resp_type != MMC_RSP_NONE)
+		cmdat |= ATMCI_CMDR_MAXLAT_64CYC;
+
+	if (data) {
+		atmci_setup_data(host, data);
+
+		cmdat |= ATMCI_CMDR_START_XFER | ATMCI_CMDR_MULTI_BLOCK;
+
+		if (data->flags & MMC_DATA_READ)
+			cmdat |= ATMCI_CMDR_TRDIR_READ;
+	}
+
+	ret = atmci_start_cmd(host, cmd, cmdat);
+	if (ret) {
+		atmci_finish_request(host);
+		return ret;
+	}
+
+	stat = atmci_poll_status(host, ATMCI_CMDRDY);
+	return atmci_cmd_done(host, stat);
+}
+
+
+/*
+ * HSMCI (High Speed MCI) module is not fully compatible with MCI module.
+ * HSMCI provides DMA support and a new config register but no more supports
+ * PDC.
+ */
+void atmci_get_cap(struct atmel_mci *host)
+{
+	unsigned int version;
+
+	version = atmci_readl(host, ATMCI_VERSION) & 0x00000fff;
+	host->version = version;
+
+	dev_info(host->hw_dev, "version: 0x%x\n", version);
+
+	host->caps.has_cfg_reg = 0;
+	host->caps.has_highspeed = 0;
+	host->caps.need_reset_after_xfer = 1;
+
+	switch (version & 0xf00) {
+	case 0x600:
+	case 0x500:
+		host->caps.has_odd_clk_div = 1;
+	case 0x400:
+	case 0x300:
+		host->caps.has_cfg_reg = 1;
+		host->caps.has_highspeed = 1;
+	case 0x200:
+		host->caps.has_rwproof = 1;
+	case 0x100:
+		host->caps.need_reset_after_xfer = 0;
+	case 0x0:
+		break;
+	default:
+		dev_warn(host->hw_dev,
+				"Unmanaged mci version, set minimum capabilities\n");
+		break;
+	}
+}
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
new file mode 100644
index 0000000000..767d6f3ce2
--- /dev/null
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -0,0 +1,116 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <mach/xload.h>
+#include <mci.h>
+
+#include "atmel-mci-regs.h"
+
+#define SECTOR_SIZE			512
+#define SUPPORT_MAX_BLOCKS		16U
+
+struct atmel_mci_priv {
+	struct atmel_mci host;
+	bool highcapacity_card;
+};
+
+static struct atmel_mci_priv atmci_sdcard;
+
+static int atmel_mci_pbl_stop_transmission(struct atmel_mci_priv *priv)
+{
+	struct mci_cmd cmd = {
+		.cmdidx = MMC_CMD_STOP_TRANSMISSION,
+		.resp_type = MMC_RSP_R1b,
+	};
+
+	return atmci_common_request(&priv->host, &cmd, NULL);
+}
+
+static int at91_mci_sd_cmd_read_multiple_block(struct atmel_mci_priv *priv,
+				      void *buf,
+				      unsigned int start,
+				      unsigned int block_count)
+{
+	u16 block_len = SECTOR_SIZE;
+	struct mci_data data;
+	struct mci_cmd cmd = {
+		.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK,
+		.resp_type = MMC_RSP_R1,
+		.cmdarg = start,
+	};
+
+	if (!priv->highcapacity_card)
+		cmd.cmdarg *= block_len;
+
+	data.dest = buf;
+	data.flags = MMC_DATA_READ;
+	data.blocksize = block_len;
+	data.blocks = block_count;
+
+	return atmci_common_request(&priv->host, &cmd, &data);
+}
+
+static int at91_mci_bio_read(struct pbl_bio *bio, off_t start,
+				void *buf, unsigned int nblocks)
+{
+	struct atmel_mci_priv *priv = bio->priv;
+	unsigned int blocks_done = 0;
+	unsigned int blocks;
+	unsigned int block_len = SECTOR_SIZE;
+	unsigned int blocks_read;
+	int ret;
+
+	while (blocks_done < nblocks) {
+		blocks = min(nblocks - blocks_done, SUPPORT_MAX_BLOCKS);
+
+		blocks_read = at91_mci_sd_cmd_read_multiple_block(priv, buf,
+							 start + blocks_done,
+							 blocks);
+
+		ret = atmel_mci_pbl_stop_transmission(priv);
+		if (ret)
+			return ret;
+
+		blocks_done += blocks_read;
+
+		if (blocks_read != blocks)
+			break;
+
+		buf += blocks * block_len;
+	}
+
+	return blocks_done;
+}
+
+int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
+		      unsigned int clock, unsigned int slot)
+{
+	struct atmel_mci_priv *priv = &atmci_sdcard;
+	struct atmel_mci *host = &priv->host;
+	struct mci_ios ios = { .bus_width = MMC_BUS_WIDTH_4, .clock = 25000000 };
+
+	/* PBL will get MCI controller in disabled state. We need to reconfigure
+	 * it. */
+	bio->priv = priv;
+	bio->read = at91_mci_bio_read;
+
+	host->regs = base;
+
+	atmci_get_cap(host);
+
+	host->bus_hz = clock;
+
+	host->slot_b = slot;
+	if (host->slot_b)
+		host->sdc_reg = ATMCI_SDCSEL_SLOT_B;
+	else
+		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
+
+	atmci_writel(host, ATMCI_DTOR, 0x7f);
+
+	atmci_common_set_ios(host, &ios);
+
+	priv->highcapacity_card = 1;
+
+	return 0;
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

