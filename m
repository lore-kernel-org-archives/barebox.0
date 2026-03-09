Delivery-date: Mon, 09 Mar 2026 13:05:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMc-009jmW-1P
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 13:05:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMZ-0000kq-Ti
	for lore@pengutronix.de; Mon, 09 Mar 2026 13:05:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QUVxce/0UrdhKUEN8xUwxTTibWtNdPwMstNIuPH56ew=; b=xgAl+VSftkfxqb4oXf34Mql2Se
	pYcs2PICdAqJhmtYNLR5NY//CDM9agj2eewPYKfHUNv+FA5So73FEeY02FV8NAGIgNZebI30Ttbyk
	j8RvqSujV8hrtWfqlo/8TlZbex1yPQI/SfZCZ7YeYZUF8wyOJuPabTHSsPYR9kcnsGGsDIbsC7lu6
	PFr3PyIoHkJu4Cl4oPD3qlV5El7BnbRPdNjz4/TI5SCN+15VNexbtmzqO0tO5R2CnBWHgd8Tq2DGz
	XLUw1CwojgZpVRQbFtRrtB8uz87P/erjf6D0abXXuDLK9GNkQq6ywxohl+lt2pFlaNNmgAKQ5Gc0O
	5aawgKaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLs-00000007FbD-2fE9;
	Mon, 09 Mar 2026 12:04:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLo-00000007FaE-35mo
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 12:04:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzZLm-0000K8-Ub; Mon, 09 Mar 2026 13:04:43 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 13:04:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-1-fcc1f327acf8@pengutronix.de>
References: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
In-Reply-To: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_050445_248837_8D5F0DF5 
X-CRM114-Status: GOOD (  21.50  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] mci: add data segment to mci_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux the struct mmc_command includes the mmc_data field and doesn't
hand it around in the function calls.

Do the same here and remove the mci_data parameter from the send_cmd
callback. The mci-core sets up the mci_cmd->data field and the drivers
can get the mmc_data from the mci_cmd struct.

A lot of the calls in mci-core don't use data in the mci_send_cmd call.
Explicitly initialize the mci_cmd struct with 0 (and therefore the
mci_data struct with NULL) on declaration.

When data is used and set up before mci_send_cmd is called the pointer
is xzalloc'd where it previously was setup on the stack.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/am654-sdhci.c            |   4 +-
 drivers/mci/arasan-sdhci.c           |   4 +-
 drivers/mci/atmel-sdhci.c            |   5 +-
 drivers/mci/atmel_mci.c              |   5 +-
 drivers/mci/atmel_mci_pbl.c          |   5 +-
 drivers/mci/bcm2835-sdhost.c         |   4 +-
 drivers/mci/dove-sdhci.c             |   4 +-
 drivers/mci/dw_mmc.c                 |   3 +-
 drivers/mci/dwcmshc-sdhci.c          |   5 +-
 drivers/mci/imx-esdhc.c              |   5 +-
 drivers/mci/imx.c                    |   4 +-
 drivers/mci/mci-bcm2835.c            |   5 +-
 drivers/mci/mci-core.c               | 187 ++++++++++++++++++-----------------
 drivers/mci/mci_spi.c                |   3 +-
 drivers/mci/mmci.c                   |   6 +-
 drivers/mci/mxs.c                    |   7 +-
 drivers/mci/omap_hsmmc.c             |   5 +-
 drivers/mci/pxamci.c                 |   4 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c |   4 +-
 drivers/mci/sdhci.c                  |   4 +-
 drivers/mci/stm32_sdmmc2.c           |   4 +-
 drivers/mci/sunxi-mmc.c              |   4 +-
 drivers/mci/tegra-sdmmc.c            |   4 +-
 include/mci.h                        |   5 +-
 24 files changed, 147 insertions(+), 143 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 4ceea226f7..cea0451c1a 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -454,13 +454,13 @@ static void print_error(struct am654_sdhci_plat *host, int cmdidx)
 		sdhci_read32(&host->sdhci, SDHCI_INT_NORMAL_STATUS));
 }
 
-static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-				struct mci_data *data)
+static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct am654_sdhci_plat *host = container_of(mci, struct am654_sdhci_plat, mci);
 	u32 mask, command, xfer;
 	int ret;
 	dma_addr_t dma;
+	struct mci_data *data = cmd->data;
 
 	ret = sdhci_wait_idle(&host->sdhci, cmd, data);
 	if (ret)
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 4adaaa243d..4e0e7b3793 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -244,13 +244,13 @@ static void print_error(struct arasan_sdhci_host *host, int cmdidx, int ret)
 		sdhci_read32(&host->sdhci, SDHCI_INT_NORMAL_STATUS));
 }
 
-static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-				 struct mci_data *data)
+static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
 	u32 mask, command, xfer;
 	dma_addr_t dma;
 	int ret;
+	struct mci_data *data = cmd->data;
 
 	ret = sdhci_wait_idle(&host->sdhci, cmd, data);
 	if (ret)
diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 7bf8004707..462cf21bc2 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -29,10 +29,9 @@ struct at91_sdhci_priv {
 
 #define to_priv(h) container_of(h, struct at91_sdhci_priv, mci)
 
-static int at91_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-				   struct mci_data *data)
+static int at91_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
-	return at91_sdhci_send_command(&to_priv(mci)->host, cmd, data);
+	return at91_sdhci_send_command(&to_priv(mci)->host, cmd, cmd->data);
 }
 
 static void at91_sdhci_mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 1012feb6c2..65e53d7202 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -23,12 +23,11 @@ static void atmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	atmci_common_set_ios(host, ios);
 }
 
-static int atmci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-		  struct mci_data *data)
+static int atmci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct atmel_mci *host = to_mci_host(mci);
 
-	return atmci_common_request(host, cmd, data);
+	return atmci_common_request(host, cmd, cmd->data);
 }
 
 static void atmci_info(struct device *mci_dev)
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index 27727b2734..b70997a918 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -9,10 +9,9 @@
 #define SUPPORT_MAX_BLOCKS		16U
 
 static int pbl_atmci_common_request(struct pbl_mci *mci,
-				    struct mci_cmd *cmd,
-				    struct mci_data *data)
+				    struct mci_cmd *cmd)
 {
-	return atmci_common_request(mci->priv, cmd, data);
+	return atmci_common_request(mci->priv, cmd, cmd->data);
 }
 
 static struct atmel_mci atmci_host;
diff --git a/drivers/mci/bcm2835-sdhost.c b/drivers/mci/bcm2835-sdhost.c
index 9ed7cffb55..31c28ef3fb 100644
--- a/drivers/mci/bcm2835-sdhost.c
+++ b/drivers/mci/bcm2835-sdhost.c
@@ -521,10 +521,10 @@ static void bcm2835_set_clock(struct bcm2835_host *host, unsigned int clock)
 	writel(clock / 2, host->regs + SDTOUT);
 }
 
-static int bcm2835_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-			    struct mci_data *data)
+static int bcm2835_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct bcm2835_host *host = to_bcm2835_host(mci);
+	struct mci_data *data = cmd->data;
 	u32 edm, fsm;
 	int ret = 0;
 
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 71045016a1..45b996cca8 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -54,13 +54,13 @@ static int dove_sdhci_wait_for_done(struct dove_sdhci *host, u16 mask)
 	return 0;
 }
 
-static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-				struct mci_data *data)
+static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	u32 command, xfer;
 	int ret;
 	unsigned int num_bytes = 0;
 	struct dove_sdhci *host = priv_from_mci_host(mci);
+	struct mci_data *data = cmd->data;
 
 	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 30e5d56944..9944693d01 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -263,7 +263,7 @@ static int dwmci_write_data_pio(struct dwmci_host *host, struct mci_data *data)
 }
 
 static int
-dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct dwmci_host *host = to_dwmci_host(mci);
 	int flags = 0;
@@ -273,6 +273,7 @@ dwmci_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	int ret;
 	unsigned int num_bytes = 0;
 	dma_addr_t dma = 0;
+	struct mci_data *data = cmd->data;
 
 	start = get_time_ns();
 	while (1) {
diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index 6fdbb61565..7f467e52b5 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -102,12 +102,11 @@ static int do_abort_sequence(struct mci_host *mci, struct mci_cmd *current_cmd)
 	return ret;
 }
 
-static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-				struct mci_data *data)
+static int dwcmshc_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		return do_abort_sequence(mci, cmd);
-	return do_send_cmd(mci, cmd, data);
+	return do_send_cmd(mci, cmd, cmd->data);
 }
 
 static int do_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 6dd3bef457..ba33daffc4 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -75,12 +75,11 @@
  * Sends a command out on the bus.  Takes the mci pointer,
  * a command pointer, and an optional data pointer.
  */
-static int
-esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+static int esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 
-	return  __esdhc_send_cmd(host, cmd, data);
+	return  __esdhc_send_cmd(host, cmd, cmd->data);
 }
 
 static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index d462cb8843..15f80697ba 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -378,10 +378,10 @@ static int mxcmci_cmd_done(struct mxcmci_host *host, unsigned int stat)
 	return ret;
 }
 
-static int mxcmci_request(struct mci_host *mci, struct mci_cmd *cmd,
-		struct mci_data *data)
+static int mxcmci_request(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct mxcmci_host *host = to_mxcmci(mci);
+	struct mci_data *data = cmd->data;
 	unsigned int cmdat = host->cmdat;
 	u32 stat;
 	int ret;
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index aad5ae0d9e..d33e54d2ab 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -114,11 +114,12 @@ static void bcm2835_mci_reset_emmc(struct bcm2835_mci_host *host, u32 reset,
  * @param data The data to handle in the command (can be NULL)
  * @return 0 on success, negative value else
  */
-static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
-		struct mci_data *data) {
+static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd)
+{
 	u32 command, block_data = 0, transfer_mode = 0;
 	int ret;
 	struct bcm2835_mci_host *host = to_bcm2835_host(mci);
+	struct mci_data *data = cmd->data;
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false,
 				&command, &transfer_mode);
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 37d864b3d0..69ae52a29a 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -72,11 +72,11 @@ static inline unsigned mci_caps(struct mci *mci)
  * @param data The data according to the command (can be NULL)
  * @return Driver's answer (0 on success)
  */
-int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data)
+int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd)
 {
 	struct mci_host *host = mci->host;
 
-	return host->ops.send_cmd(mci->host, cmd, data);
+	return host->ops.send_cmd(mci->host, cmd);
 }
 
 /**
@@ -90,12 +90,12 @@ int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data)
  * Return: 0 if ok, -ve on error
  */
 static int mci_send_cmd_retry(struct mci *mci, struct mci_cmd *cmd,
-			      struct mci_data *data, unsigned retries)
+			      unsigned int retries)
 {
 	int ret;
 
 	do
-		ret = mci_send_cmd(mci, cmd, data);
+		ret = mci_send_cmd(mci, cmd);
 	while (ret && retries--);
 
 	return ret;
@@ -108,11 +108,11 @@ static int mci_send_cmd_retry(struct mci *mci, struct mci_cmd *cmd,
  */
 static int mci_set_dsr(struct mci *mci)
 {
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_DSR,
 			(mci->host->dsr_val >> 16) | 0xffff, MMC_RSP_NONE);
-	return mci_send_cmd(mci, &cmd, NULL);
+	return mci_send_cmd(mci, &cmd);
 }
 
 /**
@@ -123,13 +123,13 @@ static int mci_set_dsr(struct mci *mci)
  */
 static int mci_set_blocklen(struct mci *mci, unsigned len)
 {
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 
 	if (mci->host->ios.timing == MMC_TIMING_MMC_DDR52)
 		return 0;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
-	return mci_send_cmd_retry(mci, &cmd, NULL, 4);
+	return mci_send_cmd_retry(mci, &cmd, 4);
 }
 
 static void *sector_buf;
@@ -137,7 +137,7 @@ static void *sector_buf;
 static int mci_send_status(struct mci *mci, unsigned int *status)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int ret;
 
 	/*
@@ -151,7 +151,7 @@ static int mci_send_status(struct mci *mci, unsigned int *status)
 	cmd.resp_type = MMC_RSP_R1;
 	cmd.cmdarg = mci->rca << 16;
 
-	ret = mci_send_cmd_retry(mci, &cmd, NULL, 4);
+	ret = mci_send_cmd_retry(mci, &cmd, 4);
 	if (!ret)
 		*status = cmd.response[0];
 
@@ -161,14 +161,13 @@ static int mci_send_status(struct mci *mci, unsigned int *status)
 static int mci_app_sd_status(struct mci *mci, __be32 *ssr)
 {
 	int err;
-	struct mci_cmd cmd = {};
-	struct mci_data data;
+	struct mci_cmd cmd = {0};
 
 	cmd.cmdidx = MMC_CMD_APP_CMD;
 	cmd.resp_type = MMC_RSP_R1;
 	cmd.cmdarg = mci->rca << 16;
 
-	err = mci_send_cmd_retry(mci, &cmd, NULL, 4);
+	err = mci_send_cmd_retry(mci, &cmd, 4);
 	if (err)
 		return err;
 
@@ -176,12 +175,14 @@ static int mci_app_sd_status(struct mci *mci, __be32 *ssr)
 	cmd.resp_type = MMC_RSP_R1;
 	cmd.cmdarg = 0;
 
-	data.dest = (u8 *)ssr;
-	data.blocksize = 64;
-	data.blocks = 1;
-	data.flags = MMC_DATA_READ;
+	cmd.data = xzalloc(sizeof(struct mci_data));
+
+	cmd.data->dest = (u8 *)ssr;
+	cmd.data->blocksize = 64;
+	cmd.data->blocks = 1;
+	cmd.data->flags = MMC_DATA_READ;
 
-	return mci_send_cmd_retry(mci, &cmd, &data, 3);
+	return mci_send_cmd_retry(mci, &cmd, 3);
 }
 
 static int mmc_switch_status_error(struct mci_host *host, u32 status)
@@ -262,7 +263,6 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 			   int blocks)
 {
 	struct mci_cmd cmd = {};
-	struct mci_data data;
 	unsigned mmccmd;
 	int ret;
 
@@ -287,16 +287,19 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 		mci->high_capacity != 0 ? blocknum : blocknum * mci->write_bl_len,
 		MMC_RSP_R1);
 
-	data.src = src;
-	data.blocks = blocks;
-	data.blocksize = mci->write_bl_len;
-	data.flags = MMC_DATA_WRITE;
+	cmd.data = xzalloc(sizeof(struct mci_data));
+
+	cmd.data->src = src;
+	cmd.data->blocks = blocks;
+	cmd.data->blocksize = mci->write_bl_len;
+	cmd.data->flags = MMC_DATA_WRITE;
 
-	ret = mci_send_cmd(mci, &cmd, &data);
+	ret = mci_send_cmd(mci, &cmd);
 
 	if (ret || blocks > 1) {
 		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
-		mci_send_cmd(mci, &cmd, NULL);
+		cmd.data = NULL;
+		mci_send_cmd(mci, &cmd);
         }
 
 	return ret;
@@ -313,7 +316,7 @@ static int mci_block_erase(struct mci *card, unsigned int from,
 			   unsigned int blkcnt, unsigned int arg)
 {
 	unsigned int to = from + blkcnt - 1;
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int err;
 
 	if (!card->high_capacity) {
@@ -324,7 +327,7 @@ static int mci_block_erase(struct mci *card, unsigned int from,
 	cmd.cmdidx = IS_SD(card) ? SD_ERASE_WR_BLK_START : MMC_ERASE_GROUP_START;
 	cmd.cmdarg = from;
 	cmd.resp_type = MMC_RSP_R1;
-	err = mci_send_cmd(card, &cmd, NULL);
+	err = mci_send_cmd(card, &cmd);
 	if (err)
 		goto err_out;
 
@@ -332,7 +335,7 @@ static int mci_block_erase(struct mci *card, unsigned int from,
 	cmd.cmdidx = IS_SD(card) ? SD_ERASE_WR_BLK_END : MMC_ERASE_GROUP_END;
 	cmd.cmdarg = to;
 	cmd.resp_type = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC;
-	err = mci_send_cmd(card, &cmd, NULL);
+	err = mci_send_cmd(card, &cmd);
 	if (err)
 		goto err_out;
 
@@ -340,8 +343,7 @@ static int mci_block_erase(struct mci *card, unsigned int from,
 	cmd.cmdidx = MMC_ERASE;
 	cmd.cmdarg = arg;
 	cmd.resp_type = MMC_RSP_R1b;
-
-	err = mci_send_cmd(card, &cmd, NULL);
+	err = mci_send_cmd(card, &cmd);
 	if (err)
 		goto err_out;
 
@@ -355,11 +357,11 @@ static int mci_block_erase(struct mci *card, unsigned int from,
 
 int mci_set_blockcount(struct mci *mci, unsigned int cmdarg)
 {
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCK_COUNT, cmdarg, MMC_RSP_R1);
 
-	return mci_send_cmd(mci, &cmd, NULL);
+	return mci_send_cmd(mci, &cmd);
 }
 
 /**
@@ -373,7 +375,6 @@ static int mci_block_read(struct mci *mci, void *dst, int blocknum,
 			  int blocks)
 {
 	struct mci_cmd cmd = {};
-	struct mci_data data;
 	int ret;
 	unsigned mmccmd;
 
@@ -387,17 +388,20 @@ static int mci_block_read(struct mci *mci, void *dst, int blocknum,
 		mci->high_capacity != 0 ? blocknum : blocknum * mci->read_bl_len,
 		MMC_RSP_R1);
 
-	data.dest = dst;
-	data.blocks = blocks;
-	data.blocksize = mci->read_bl_len;
-	data.flags = MMC_DATA_READ;
+	cmd.data = xzalloc(sizeof(struct mci_data));
 
-	ret = mci_send_cmd(mci, &cmd, &data);
+	cmd.data->dest = dst;
+	cmd.data->blocks = blocks;
+	cmd.data->blocksize = mci->read_bl_len;
+	cmd.data->flags = MMC_DATA_READ;
+
+	ret = mci_send_cmd(mci, &cmd);
 
 	if (ret || blocks > 1) {
 		mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0,
 			      IS_SD(mci) ? MMC_RSP_R1b : MMC_RSP_R1);
-		mci_send_cmd(mci, &cmd, NULL);
+		cmd.data = NULL;
+		mci_send_cmd(mci, &cmd);
 	}
 	return ret;
 }
@@ -409,13 +413,13 @@ static int mci_block_read(struct mci *mci, void *dst, int blocknum,
  */
 static int mci_go_idle(struct mci *mci)
 {
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int err;
 
 	udelay(1000);
 
 	mci_setup_cmd(&cmd, MMC_CMD_GO_IDLE_STATE, 0, MMC_RSP_NONE);
-	err = mci_send_cmd(mci, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd);
 
 	if (err) {
 		dev_dbg(&mci->dev, "Activating IDLE state failed: %d\n", err);
@@ -429,11 +433,11 @@ static int mci_go_idle(struct mci *mci)
 
 static int sdio_send_op_cond(struct mci *mci)
 {
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 
 	mci_setup_cmd(&cmd, SD_IO_SEND_OP_COND, 0, MMC_RSP_SPI_R4 | MMC_RSP_R4 | MMC_CMD_BCR);
 
-	return mci_send_cmd(mci, &cmd, NULL);
+	return mci_send_cmd(mci, &cmd);
 }
 
 /**
@@ -444,7 +448,7 @@ static int sdio_send_op_cond(struct mci *mci)
 static int sd_send_op_cond(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int timeout = 1000;
 	int err;
 	unsigned voltages;
@@ -462,7 +466,7 @@ static int sd_send_op_cond(struct mci *mci)
 
 	do {
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, 0, MMC_RSP_R1);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd);
 		if (err) {
 			dev_dbg(&mci->dev, "Preparing SD for operating conditions failed: %d\n", err);
 			return err;
@@ -474,7 +478,7 @@ static int sd_send_op_cond(struct mci *mci)
 			arg |= OCR_HCS;
 
 		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND, arg, MMC_RSP_R3);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd);
 		if (err) {
 			dev_dbg(&mci->dev, "SD operation condition set failed: %d\n", err);
 			return err;
@@ -498,7 +502,7 @@ static int sd_send_op_cond(struct mci *mci)
 
 	if (mmc_host_is_spi(host)) { /* read OCR for spi */
 		mci_setup_cmd(&cmd, MMC_CMD_SPI_READ_OCR, 0, MMC_RSP_R3);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd);
 		if (err)
 			return err;
 	}
@@ -519,7 +523,7 @@ static int sd_send_op_cond(struct mci *mci)
 static int mmc_send_op_cond(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int timeout = 1000;
 	int err;
 
@@ -529,7 +533,7 @@ static int mmc_send_op_cond(struct mci *mci)
 	do {
 		mci_setup_cmd(&cmd, MMC_CMD_SEND_OP_COND, OCR_HCS |
 				host->voltages, MMC_RSP_R3);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd);
 
 		if (err) {
 			dev_dbg(&mci->dev, "Preparing MMC for operating conditions failed: %d\n", err);
@@ -565,17 +569,18 @@ static int mmc_send_op_cond(struct mci *mci)
 int mci_send_ext_csd(struct mci *mci, char *ext_csd)
 {
 	struct mci_cmd cmd = {};
-	struct mci_data data;
 
 	/* Get the Card Status Register */
 	mci_setup_cmd(&cmd, MMC_CMD_SEND_EXT_CSD, 0, MMC_RSP_R1);
 
-	data.dest = ext_csd;
-	data.blocks = 1;
-	data.blocksize = 512;
-	data.flags = MMC_DATA_READ;
+	cmd.data = xzalloc(sizeof(struct mci_data));
+
+	cmd.data->dest = ext_csd;
+	cmd.data->blocks = 1;
+	cmd.data->blocksize = 512;
+	cmd.data->flags = MMC_DATA_READ;
 
-	return mci_send_cmd(mci, &cmd, &data);
+	return mci_send_cmd(mci, &cmd);
 }
 
 /**
@@ -593,7 +598,7 @@ int mci_send_ext_csd(struct mci *mci, char *ext_csd)
 int mci_switch(struct mci *mci, unsigned index, unsigned value)
 {
 	unsigned int status;
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int ret;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SWITCH,
@@ -602,7 +607,7 @@ int mci_switch(struct mci *mci, unsigned index, unsigned value)
 		(value << 8),
 		 MMC_RSP_R1b);
 
-	ret = mci_send_cmd(mci, &cmd, NULL);
+	ret = mci_send_cmd(mci, &cmd);
 	if (ret)
 		return ret;
 
@@ -853,7 +858,6 @@ static int sd_switch(struct mci *mci, unsigned mode, unsigned group,
 			unsigned value, uint8_t *resp)
 {
 	struct mci_cmd cmd = {};
-	struct mci_data data;
 	unsigned arg;
 
 	arg = (mode << 31) | 0xffffff;
@@ -863,12 +867,13 @@ static int sd_switch(struct mci *mci, unsigned mode, unsigned group,
 	/* Switch the frequency */
 	mci_setup_cmd(&cmd, SD_CMD_SWITCH_FUNC, arg, MMC_RSP_R1);
 
-	data.dest = resp;
-	data.blocksize = 64;
-	data.blocks = 1;
-	data.flags = MMC_DATA_READ;
+	cmd.data = xzalloc(sizeof(struct mci_data));
+	cmd.data->dest = resp;
+	cmd.data->blocksize = 64;
+	cmd.data->blocks = 1;
+	cmd.data->flags = MMC_DATA_READ;
 
-	return mci_send_cmd(mci, &cmd, &data);
+	return mci_send_cmd(mci, &cmd);
 }
 
 static int sd_read_ssr(struct mci *mci)
@@ -921,8 +926,7 @@ static int sd_read_ssr(struct mci *mci)
  */
 static int sd_change_freq(struct mci *mci)
 {
-	struct mci_cmd cmd = {};
-	struct mci_data data;
+	struct mci_cmd cmd = {0};
 	struct mci_host *host = mci->host;
 	uint32_t *switch_status = sector_buf;
 	uint32_t *scr = sector_buf;
@@ -937,7 +941,7 @@ static int sd_change_freq(struct mci *mci)
 
 	/* Read the SCR to find out if this card supports higher speeds */
 	mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
-	err = mci_send_cmd(mci, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd);
 	if (err) {
 		dev_dbg(&mci->dev, "Query SD card capabilities failed: %d\n", err);
 		return err;
@@ -947,14 +951,17 @@ static int sd_change_freq(struct mci *mci)
 
 	timeout = 3;
 
+	cmd.data = xzalloc(sizeof(struct mci_data));
+
 retry_scr:
 	dev_dbg(&mci->dev, "Trying to read the SCR (try %d of %d)\n", 4 - timeout, 3);
-	data.dest = (char *)scr;
-	data.blocksize = 8;
-	data.blocks = 1;
-	data.flags = MMC_DATA_READ;
 
-	err = mci_send_cmd(mci, &cmd, &data);
+	cmd.data->dest = (char *)scr;
+	cmd.data->blocksize = 8;
+	cmd.data->blocks = 1;
+	cmd.data->flags = MMC_DATA_READ;
+
+	err = mci_send_cmd(mci, &cmd);
 	if (err) {
 		dev_dbg(&mci->dev, " Catch error (%d)", err);
 		if (timeout--) {
@@ -1449,7 +1456,8 @@ static int mci_startup_sd(struct mci *mci)
 	if (mci_caps(mci) & MMC_CAP_4_BIT_DATA) {
 		dev_dbg(&mci->dev, "Prepare for bus width change\n");
 		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		cmd.data = NULL;
+		err = mci_send_cmd(mci, &cmd);
 		if (err) {
 			dev_dbg(&mci->dev, "Preparing SD for bus width change failed: %d\n", err);
 			return err;
@@ -1457,7 +1465,7 @@ static int mci_startup_sd(struct mci *mci)
 
 		dev_dbg(&mci->dev, "Set SD bus width to 4 bit\n");
 		mci_setup_cmd(&cmd, SD_CMD_APP_SET_BUS_WIDTH, 2, MMC_RSP_R1);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd);
 		if (err) {
 			dev_warn(&mci->dev, "Changing SD bus width failed: %d\n", err);
 			/* TODO continue with 1 bit? */
@@ -1644,7 +1652,6 @@ static const u8 tuning_blk_pattern_8bit[] = {
 int mmc_send_tuning(struct mci *mci, u32 opcode)
 {
 	struct mci_cmd cmd = {};
-	struct mci_data data = {};
 	const u8 *tuning_block_pattern;
 	int size, err = 0;
 	u8 *data_buf;
@@ -1664,19 +1671,19 @@ int mmc_send_tuning(struct mci *mci, u32 opcode)
 
 	mci_setup_cmd(&cmd, opcode, 0, MMC_RSP_R1 | MMC_CMD_ADTC);
 
-
-	data.blocksize = size;
-	data.blocks = 1;
-	data.flags = MMC_DATA_READ;
+	cmd.data = xzalloc(sizeof(struct mci_data));
+	cmd.data->blocksize = size;
+	cmd.data->blocks = 1;
+	cmd.data->flags = MMC_DATA_READ;
 
 	/*
 	 * According to the tuning specs, Tuning process
 	 * is normally shorter 40 executions of CMD19,
 	 * and timeout value should be shorter than 150 ms
 	 */
-	data.timeout_ns = 150 * NSEC_PER_MSEC;
+	cmd.data->timeout_ns = 150 * NSEC_PER_MSEC;
 
-	err = mci_send_cmd(mci, &cmd, &data);
+	err = mci_send_cmd(mci, &cmd);
 	if (err)
 		goto out;
 
@@ -1691,7 +1698,7 @@ EXPORT_SYMBOL_GPL(mmc_send_tuning);
 
 int mci_send_abort_tuning(struct mci *mci, u32 opcode)
 {
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 
 	/*
 	 * eMMC specification specifies that CMD12 can be used to stop a tuning
@@ -1704,7 +1711,7 @@ int mci_send_abort_tuning(struct mci *mci, u32 opcode)
 	cmd.cmdidx = MMC_CMD_STOP_TRANSMISSION;
 	cmd.resp_type = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC;
 
-	return mci_send_cmd(mci, &cmd, NULL);
+	return mci_send_cmd(mci, &cmd);
 }
 EXPORT_SYMBOL_GPL(mci_send_abort_tuning);
 
@@ -2022,13 +2029,13 @@ static void mci_init_erase(struct mci *card)
 static int mci_startup(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int err;
 
 	if (IS_ENABLED(CONFIG_MMC_SPI_CRC_ON) && mmc_host_is_spi(host)) { /* enable CRC check for spi */
 
 		mci_setup_cmd(&cmd, MMC_CMD_SPI_CRC_ON_OFF, 1, MMC_RSP_R1);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd);
 
 		if (err) {
 			dev_dbg(&mci->dev, "Can't enable CRC check : %d\n", err);
@@ -2040,7 +2047,7 @@ static int mci_startup(struct mci *mci)
 
 	/* Put the Card in Identify Mode */
 	mci_setup_cmd(&cmd, mmc_host_is_spi(host) ? MMC_CMD_SEND_CID : MMC_CMD_ALL_SEND_CID, 0, MMC_RSP_R2);
-	err = mci_send_cmd(mci, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd);
 	if (err) {
 		dev_dbg(&mci->dev, "Can't bring card into identify mode: %d\n", err);
 		return err;
@@ -2059,7 +2066,7 @@ static int mci_startup(struct mci *mci)
 	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
 		dev_dbg(&mci->dev, "Get/Set relative address\n");
 		mci_setup_cmd(&cmd, SD_CMD_SEND_RELATIVE_ADDR, mci->rca << 16, MMC_RSP_R6);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd);
 		if (err) {
 			dev_dbg(&mci->dev, "Get/Set relative address failed: %d\n", err);
 			return err;
@@ -2072,7 +2079,7 @@ static int mci_startup(struct mci *mci)
 	dev_dbg(&mci->dev, "Get card's specific data\n");
 	/* Get the Card-Specific Data */
 	mci_setup_cmd(&cmd, MMC_CMD_SEND_CSD, mci->rca << 16, MMC_RSP_R2);
-	err = mci_send_cmd(mci, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd);
 	if (err) {
 		dev_dbg(&mci->dev, "Getting card's specific data failed: %d\n", err);
 		return err;
@@ -2111,7 +2118,7 @@ static int mci_startup(struct mci *mci)
 		dev_dbg(&mci->dev, "Select the card, and put it into Transfer Mode\n");
 		/* Select the card, and put it into Transfer Mode */
 		mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, mci->rca << 16, MMC_RSP_R1b);
-		err = mci_send_cmd(mci, &cmd, NULL);
+		err = mci_send_cmd(mci, &cmd);
 		if (err) {
 			dev_dbg(&mci->dev, "Putting in transfer mode failed: %d\n", err);
 			return err;
@@ -2166,14 +2173,14 @@ static int mci_startup(struct mci *mci)
 static int sd_send_if_cond(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int err;
 
 	mci_setup_cmd(&cmd, SD_CMD_SEND_IF_COND,
 	/* We set the bit if the host supports voltages between 2.7 and 3.6 V */
 		((host->voltages & 0x00ff8000) != 0) << 8 | 0xaa,
 		MMC_RSP_R7);
-	err = mci_send_cmd(mci, &cmd, NULL);
+	err = mci_send_cmd(mci, &cmd);
 	if (err) {
 		dev_dbg(&mci->dev, "Query interface conditions failed: %d\n", err);
 		return err;
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 3ab90d768f..06693a5811 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -235,9 +235,10 @@ static uint mmc_spi_writedata(struct mmc_spi_host *host, const void *xbuf,
 	return r1;
 }
 
-static int mmc_spi_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+static int mmc_spi_request(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct mmc_spi_host	*host = to_spi_host(mci);
+	struct mci_data *data = cmd->data;
 	uint8_t r1;
 	int i;
 	int ret = 0;
diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index 1a70776bb1..7e1b5e3f2c 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -421,12 +421,12 @@ static int do_data_transfer(struct mci_host *mci, struct mci_cmd *cmd, struct mc
 	return error;
 }
 
-static int mci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+static int mci_request(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	int result;
 
-	if (data)
-		result = do_data_transfer(mci, cmd, data);
+	if (cmd->data)
+		result = do_data_transfer(mci, cmd, cmd->data);
 	else
 		result = do_command(mci, cmd);
 
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 63a4813ff4..b297a978aa 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -461,16 +461,15 @@ static int mxs_mci_initialize(struct mci_host *host, struct device *mci_dev)
  * @param data The data to handle in the command (can be NULL)
  * @return 0 on success, negative value else
  */
-static int mxs_mci_request(struct mci_host *host, struct mci_cmd *cmd,
-			struct mci_data *data)
+static int mxs_mci_request(struct mci_host *host, struct mci_cmd *cmd)
 {
 	struct mxs_mci_host *mxs_mci = to_mxs_mci(host);
 	int rc;
 
-	if ((cmd->resp_type == 0) || (data == NULL))
+	if ((cmd->resp_type == 0) || (cmd->data == NULL))
 		rc = mxs_mci_std_cmds(mxs_mci, cmd);
 	else
-		rc = mxs_mci_adtc(mxs_mci, cmd, data);	/* with response and data */
+		rc = mxs_mci_adtc(mxs_mci, cmd, cmd->data);	/* with response and data */
 
 	mxs_mci_finish_request(mxs_mci);	/* TODO */
 	return rc;
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 03f71eb453..4bc3ea4092 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -53,12 +53,11 @@ static int mmc_init_setup(struct mci_host *mci, struct device *dev)
 	return omap_hsmmc_init(hsmmc);
 }
 
-static int mmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-		struct mci_data *data)
+static int mmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct omap_hsmmc *hsmmc = to_hsmmc(mci);
 
-	return omap_hsmmc_send_cmd(hsmmc, cmd, data);
+	return omap_hsmmc_send_cmd(hsmmc, cmd, cmd->data);
 }
 
 static void mmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 6b3e213be5..f337ea48ef 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -258,10 +258,10 @@ static int pxamci_mmccmd(struct pxamci_host *host, struct mci_cmd *cmd,
 	return ret;
 }
 
-static int pxamci_request(struct mci_host *mci, struct mci_cmd *cmd,
-			  struct mci_data *data)
+static int pxamci_request(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct pxamci_host *host = to_pxamci(mci);
+	struct mci_data *data = cmd->data;
 	unsigned int cmdat;
 	int ret;
 
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index c4c03f703a..eb1c8760bf 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -241,10 +241,10 @@ static void print_error(struct rk_sdhci_host *host, int cmdidx)
 		sdhci_read32(&host->sdhci, SDHCI_INT_NORMAL_STATUS));
 }
 
-static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-				 struct mci_data *data)
+static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct rk_sdhci_host *host = to_rk_sdhci_host(mci);
+	struct mci_data *data = cmd->data;
 	u32 command, xfer;
 	int ret;
 	dma_addr_t dma;
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 2d32a8b311..847c0dc516 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -62,7 +62,7 @@ static int sdhci_send_command_retry(struct sdhci *host, struct mci_cmd *cmd)
 		mdelay(1);
 	}
 
-	return host->mci->ops.send_cmd(host->mci, cmd, NULL);
+	return host->mci->ops.send_cmd(host->mci, cmd);
 }
 
 /*
@@ -74,7 +74,7 @@ static int sdhci_send_command_retry(struct sdhci *host, struct mci_cmd *cmd)
  */
 static int sdhci_send_tuning(struct sdhci *host, u32 opcode)
 {
-	struct mci_cmd cmd = {};
+	struct mci_cmd cmd = {0};
 	int ret;
 
 	cmd.cmdidx = opcode;
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 8aeda6e988..36273ac270 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -476,10 +476,10 @@ static int stm32_sdmmc2_end_data(struct stm32_sdmmc2_priv *priv,
 	return 0;
 }
 
-static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-				 struct mci_data *data)
+static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
+	struct mci_data *data = cmd->data;
 	u32 cmdat = data ? SDMMC_CMD_CMDTRANS : 0;
 	dma_addr_t dma_addr = DMA_ERROR_CODE;
 	u32 data_length = 0;
diff --git a/drivers/mci/sunxi-mmc.c b/drivers/mci/sunxi-mmc.c
index 376ef2c0a9..297e053ac8 100644
--- a/drivers/mci/sunxi-mmc.c
+++ b/drivers/mci/sunxi-mmc.c
@@ -20,14 +20,14 @@
 #include "sunxi-mmc.h"
 #include "sunxi-mmc-common.c"
 
-static int sdxc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
+static int sdxc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct sunxi_mmc_host *host = to_sunxi_mmc_host(mci);
 	struct device *dev = mci->hw_dev;
 	const char *why = "";
 	int ret;
 
-	ret = sunxi_mmc_send_cmd(host, cmd, data, &why);
+	ret = sunxi_mmc_send_cmd(host, cmd, cmd->data, &why);
 	if (ret && ret != -ETIMEDOUT && ret != -EINVAL)
 		dev_err(dev, "error %s CMD%d (%d)\n", why, cmd->cmdidx, ret);
 	if (ret == -ETIMEDOUT)
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index ce868b48ce..bc6a7728db 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -96,10 +96,10 @@ static int tegra_sdmmc_wait_inhibit(struct tegra_sdmmc_host *host,
 	return 0;
 }
 
-static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
-				struct mci_data *data)
+static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
 {
 	struct tegra_sdmmc_host *host = to_tegra_sdmmc_host(mci);
+	struct mci_data *data = cmd->data;
 	unsigned int num_bytes = 0;
 	u32 val = 0, command, xfer;
 	int ret;
diff --git a/include/mci.h b/include/mci.h
index 50214aaae7..667829c489 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -489,6 +489,7 @@ struct mci_cmd {
 	unsigned cmdarg;	/**< Command's arguments */
 	unsigned busy_timeout;	/**< Busy timeout in ms */
 	unsigned response[4];	/**< card's response */
+	struct mci_data		*data;		/* data segment associated with cmd */
 };
 
 /**
@@ -575,7 +576,7 @@ struct mci_ops {
 	/** change host interface settings */
 	void (*set_ios)(struct mci_host*, struct mci_ios *);
 	/** handle a command */
-	int (*send_cmd)(struct mci_host*, struct mci_cmd*, struct mci_data*);
+	int (*send_cmd)(struct mci_host *host, struct mci_cmd *cmd);
 	/** check if a card is inserted */
 	int (*card_present)(struct mci_host *);
 	/** check if a card is write protected */
@@ -788,7 +789,7 @@ static inline int mci_send_abort_tuning(struct mci *mci, u32 opcode) { return -E
 int mmc_select_timing(struct mci *mci);
 int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
 int mci_blk_part_switch(struct mci_part *part);
-int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *data);
+int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd);
 struct mci *mci_get_rpmb_dev(unsigned int id);
 int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
 			  void *rsp, unsigned long rsplen);

-- 
2.52.0



