Delivery-date: Fri, 08 Mar 2024 12:19:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYG0-00DdEH-1i
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 12:19:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFz-0001PY-D6
	for lore@pengutronix.de; Fri, 08 Mar 2024 12:19:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uFNsFn+cE4nJV3hWKLu4d4u7xRKuHIkt6iovLKkYy1c=; b=e791pTYtIOVvJ62Q1jq9n//Rzm
	3gbNGH2m3b0cejnSBDR2JmczdkaijfueWVtOWYL4GC/L2W8koy/HrlypnsMyZlK/wj3lapCiMTCgI
	Qg13togAyQIZxnZg8jj1n8X3fZCDQVSME99GMUCw7t91kHqKnY+0GnetfvRsVj7mlpOArY/LMPoG7
	eE/F4MEsIHIn+qjVPIiD7VqSl22sUk5dhcCc31opf6253X4bNDuQkVfrFbkOFXNnkb8AXyNFr6ZEC
	PS2hiHPidye8v4pmtl3zDXiclLGfHQIuO5gDx5JlOs0BNLPG5BaweENerpy/2KUZBqAk/FGdAs1AX
	OQ0FwaQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYFO-00000008vzc-3Nia;
	Fri, 08 Mar 2024 11:18:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEg-00000008vQT-0t7f
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 11:18:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riYEZ-0007Id-Sh; Fri, 08 Mar 2024 12:17:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 12:17:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-10-6d50c90485f3@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=10634;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=KH7bUFrBIFBv/RJyWbv9EsphOSmaIrwPfsGfNZ4mpGg=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJffb7CVz+3XofvxpLNNZ+Xmp052HhpntSzhllqcYIf1
 /DHnz6Y3lHKwiDGxSArpsgSufaQxmbhzzpfjp9ngJnDygQyhIGLUwAmUriOkeFs9anrzy/OLdH5
 YS9+0OEA797AF2s1+df2LN/ed71gWtUqRoZ55hd+GrdETQzZMvuQyzK9N09Ornviffrm5bI7gqf
 kT9/lAgA=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_031759_123955_9787C0D9 
X-CRM114-Status: GOOD (  27.42  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/12] mci: sdhci: add tuning support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The arasan SDHCI driver doesn't use MMC tuning but SDHCI tuning. Both
are not supported yet in barebox.
Add SDHCI tuning support from linux v6.7.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 244 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 drivers/mci/sdhci.h |  24 ++++++
 2 files changed, 267 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index edb819d66d..62e6443e64 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -9,6 +9,196 @@
 
 #include "sdhci.h"
 
+#define MAX_TUNING_LOOP 40
+#define  SDHCI_MAKE_BLKSZ(dma, blksz) (((dma & 0x7) << 12) | (blksz & 0xFFF))
+
+#ifdef CONFIG_MCI_TUNING
+static int sdhci_send_command_retry(struct sdhci *host, struct mci_cmd *cmd)
+{
+	int timeout = 10;
+
+	while ((sdhci_read32(host, SDHCI_PRESENT_STATE) & SDHCI_CMD_INHIBIT_CMD)) {
+		if (!timeout--)
+			return -ETIMEDOUT;
+
+		mdelay(1);
+	}
+
+	return host->mci->send_cmd(host->mci, cmd, NULL);
+}
+
+/*
+ * We use sdhci_send_tuning() because mmc_send_tuning() is not a good fit. SDHCI
+ * tuning command does not have a data payload (or rather the hardware does it
+ * automatically) so mmc_send_tuning() will return -EIO. Also the tuning command
+ * interrupt setup is different to other commands and there is no timeout
+ * interrupt so special handling is needed.
+ */
+static int sdhci_send_tuning(struct sdhci *host, u32 opcode)
+{
+	struct mci_cmd cmd = {};
+	int ret;
+
+	cmd.cmdidx = opcode;
+	cmd.resp_type = MMC_RSP_R1 | MMC_CMD_ADTC;
+
+	/*
+	 * In response to CMD19, the card sends 64 bytes of tuning
+	 * block to the Host Controller. So we set the block size
+	 * to 64 here.
+	 */
+	if (cmd.cmdidx == MMC_SEND_TUNING_BLOCK_HS200 &&
+	    host->mci->bus_width == MMC_BUS_WIDTH_8) {
+		sdhci_write16(host, SDHCI_BLOCK_SIZE, SDHCI_MAKE_BLKSZ(7, 128));
+	} else {
+		sdhci_write16(host, SDHCI_BLOCK_SIZE, SDHCI_MAKE_BLKSZ(7, 64));
+	}
+
+	ret = sdhci_send_command_retry(host, &cmd);
+
+	udelay(100);
+
+	return ret;
+}
+
+static void sdhci_end_tuning(struct sdhci *host)
+{
+	sdhci_write32(host, SDHCI_INT_ENABLE, host->tuning_old_ier);
+	sdhci_write32(host, SDHCI_SIGNAL_ENABLE, host->tuning_old_sig);
+}
+
+static void sdhci_start_tuning(struct sdhci *host)
+{
+	u16 ctrl;
+
+	ctrl = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+	ctrl |= SDHCI_CTRL_EXEC_TUNING;
+	sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl);
+
+	mdelay(1);
+
+	host->tuning_old_ier = sdhci_read32(host, SDHCI_INT_ENABLE);
+	host->tuning_old_sig = sdhci_read32(host, SDHCI_SIGNAL_ENABLE);
+
+	sdhci_write32(host, SDHCI_INT_ENABLE, SDHCI_INT_DATA_AVAIL);
+	sdhci_write32(host, SDHCI_SIGNAL_ENABLE, SDHCI_INT_DATA_AVAIL);
+}
+
+static void sdhci_reset_tuning(struct sdhci *host)
+{
+	u16 ctrl;
+
+	ctrl = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+	ctrl &= ~SDHCI_CTRL_TUNED_CLK;
+	ctrl &= ~SDHCI_CTRL_EXEC_TUNING;
+	sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl);
+}
+
+static void sdhci_abort_tuning(struct sdhci *host, u32 opcode)
+{
+	sdhci_reset_tuning(host);
+
+	sdhci_reset(host, SDHCI_RESET_CMD);
+	sdhci_reset(host, SDHCI_RESET_DATA);
+
+	sdhci_end_tuning(host);
+
+	mci_send_abort_tuning(host->mci->mci, opcode);
+}
+
+static int __sdhci_execute_tuning(struct sdhci *host, u32 opcode)
+{
+	int i;
+	int ret;
+
+	/*
+	 * Issue opcode repeatedly till Execute Tuning is set to 0 or the number
+	 * of loops reaches tuning loop count.
+	 */
+	for (i = 0; i < host->tuning_loop_count; i++) {
+		u16 ctrl;
+
+		ret = sdhci_send_tuning(host, opcode);
+		if (ret) {
+			sdhci_abort_tuning(host, opcode);
+			return -ETIMEDOUT;
+		}
+
+		/* Spec does not require a delay between tuning cycles */
+		if (host->tuning_delay > 0)
+			mdelay(host->tuning_delay);
+
+		ctrl = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+		if (!(ctrl & SDHCI_CTRL_EXEC_TUNING)) {
+			if (ctrl & SDHCI_CTRL_TUNED_CLK) {
+				return 0; /* Success! */
+			}
+			break;
+		}
+
+	}
+
+	dev_dbg(&host->mci->mci->dev, "Tuning timeout, falling back to fixed sampling clock\n");
+	sdhci_reset_tuning(host);
+	return -EAGAIN;
+}
+
+int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode)
+{
+	struct mci_host *host = sdhci->mci;
+	int err = 0;
+	unsigned int tuning_count = 0;
+
+	if (sdhci->tuning_mode == SDHCI_TUNING_MODE_1)
+		tuning_count = sdhci->tuning_count;
+
+	/*
+	 * The Host Controller needs tuning in case of SDR104 and DDR50
+	 * mode, and for SDR50 mode when Use Tuning for SDR50 is set in
+	 * the Capabilities register.
+	 * If the Host Controller supports the HS200 mode then the
+	 * tuning function has to be executed.
+	 */
+	switch (host->timing) {
+	/* HS400 tuning is done in HS200 mode */
+	case MMC_TIMING_MMC_HS400:
+		err = -EINVAL;
+		goto out;
+
+	case MMC_TIMING_MMC_HS200:
+		break;
+
+	case MMC_TIMING_UHS_SDR104:
+	case MMC_TIMING_UHS_DDR50:
+		break;
+
+	case MMC_TIMING_UHS_SDR50:
+		fallthrough;
+
+	default:
+		goto out;
+	}
+
+	if (host->platform_execute_tuning) {
+		err = host->platform_execute_tuning(host, opcode);
+		goto out;
+	}
+
+	if (sdhci->tuning_delay < 0)
+		sdhci->tuning_delay = opcode == MMC_SEND_TUNING_BLOCK;
+
+	sdhci_start_tuning(sdhci);
+
+	sdhci->tuning_err = __sdhci_execute_tuning(sdhci, opcode);
+
+	sdhci_end_tuning(sdhci);
+out:
+
+	return err;
+}
+EXPORT_SYMBOL_GPL(sdhci_execute_tuning);
+#endif
+
 void sdhci_read_response(struct sdhci *sdhci, struct mci_cmd *cmd)
 {
 	if (cmd->resp_type & MMC_RSP_136) {
@@ -50,7 +240,12 @@ void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,
 
 	*command |= SDHCI_CMD_INDEX(cmd->cmdidx);
 
-	if (data) {
+	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK ||
+	    cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200) {
+		*command |= SDHCI_DATA_PRESENT;
+		*xfer = SDHCI_DATA_TO_HOST;
+
+	} else if (data) {
 		*command |= SDHCI_DATA_PRESENT;
 
 		*xfer |= SDHCI_BLOCK_COUNT_EN;
@@ -111,6 +306,31 @@ void sdhci_set_bus_width(struct sdhci *host, int width)
 	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
 }
 
+static void sdhci_set_uhs_signaling(struct sdhci *host, unsigned timing)
+{
+	u16 ctrl_2;
+
+	ctrl_2 = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+	/* Select Bus Speed Mode for host */
+	ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
+	if ((timing == MMC_TIMING_MMC_HS200) ||
+	    (timing == MMC_TIMING_UHS_SDR104))
+		ctrl_2 |= SDHCI_CTRL_UHS_SDR104;
+	else if (timing == MMC_TIMING_UHS_SDR12)
+		ctrl_2 |= SDHCI_CTRL_UHS_SDR12;
+	else if (timing == MMC_TIMING_UHS_SDR25)
+		ctrl_2 |= SDHCI_CTRL_UHS_SDR25;
+	else if (timing == MMC_TIMING_UHS_SDR50)
+		ctrl_2 |= SDHCI_CTRL_UHS_SDR50;
+	else if ((timing == MMC_TIMING_UHS_DDR50) ||
+		 (timing == MMC_TIMING_MMC_DDR52))
+		ctrl_2 |= SDHCI_CTRL_UHS_DDR50;
+	else if (timing == MMC_TIMING_MMC_HS400)
+		ctrl_2 |= SDHCI_CTRL_HS400; /* Non-standard */
+	sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl_2);
+}
+EXPORT_SYMBOL_GPL(sdhci_set_uhs_signaling);
+
 static inline bool sdhci_can_64bit_dma(struct sdhci *host)
 {
 	/*
@@ -567,6 +787,8 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 
 	host->mci->clock = 0;
 
+	sdhci_set_uhs_signaling(host, host->mci->timing);
+
 	sdhci_wait_idle(host, NULL);
 
 	sdhci_write16(host, SDHCI_CLOCK_CONTROL, 0);
@@ -695,5 +917,25 @@ int sdhci_setup_host(struct sdhci *host)
 	if (sdhci_can_64bit_dma(host))
 		host->flags |= SDHCI_USE_64_BIT_DMA;
 
+	if ((mci->caps2 & (MMC_CAP2_HS200_1_8V_SDR | MMC_CAP2_HS400_1_8V)))
+		host->flags |= SDHCI_SIGNALING_180;
+
+	host->tuning_delay = -1;
+	host->tuning_loop_count = MAX_TUNING_LOOP;
+
+	/* Initial value for re-tuning timer count */
+	host->tuning_count = FIELD_GET(SDHCI_RETUNING_TIMER_COUNT_MASK,
+				       host->caps1);
+
+	/*
+	 * In case Re-tuning Timer is not disabled, the actual value of
+	 * re-tuning timer will be 2 ^ (n - 1).
+	 */
+	if (host->tuning_count)
+		host->tuning_count = 1 << (host->tuning_count - 1);
+
+	/* Re-tuning mode supported by the Host Controller */
+	host->tuning_mode = FIELD_GET(SDHCI_RETUNING_MODE_MASK, host->caps1);
+
 	return 0;
 }
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 2139498855..80916e670f 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -28,9 +28,11 @@
 #define SDHCI_TRANSFER_MODE					0x0c
 #define  SDHCI_MULTIPLE_BLOCKS			BIT(5)
 #define  SDHCI_DATA_TO_HOST			BIT(4)
+#define  SDHCI_TRNS_AUTO_CMD12			BIT(3)
 #define  SDHCI_BLOCK_COUNT_EN			BIT(1)
 #define  SDHCI_DMA_EN				BIT(0)
 #define SDHCI_COMMAND						0x0e
+#define  SDHCI_MAKE_CMD(c, f) 			(((c & 0xff) << 8) | (f & 0xff))
 #define  SDHCI_CMD_INDEX(c)			(((c) & 0x3f) << 8)
 #define  SDHCI_COMMAND_CMDTYP_SUSPEND		(1 << 6)
 #define  SDHCI_COMMAND_CMDTYP_RESUME		(2 << 6)
@@ -121,6 +123,15 @@
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
 #define SDHCI_HOST_CONTROL2					0x3E
+#define  SDHCI_CTRL_UHS_MASK			GENMASK(3, 0)
+#define   SDHCI_CTRL_UHS_SDR12			0x0
+#define   SDHCI_CTRL_UHS_SDR25			0x1
+#define   SDHCI_CTRL_UHS_SDR50			0x2
+#define   SDHCI_CTRL_UHS_SDR104			0x3
+#define   SDHCI_CTRL_UHS_DDR50			0x4
+#define   SDHCI_CTRL_HS400			0x5 /* Non-standard */
+#define  SDHCI_CTRL_EXEC_TUNING			BIT(6)
+#define  SDHCI_CTRL_TUNED_CLK			BIT(7)
 #define  SDHCI_CTRL_64BIT_ADDR			BIT(13)
 #define  SDHCI_CTRL_V4_MODE			BIT(12)
 #define SDHCI_CAPABILITIES					0x40
@@ -230,6 +241,18 @@ struct sdhci {
 	bool read_caps;	/* Capability flags have been read */
 	u32 sdma_boundary;
 
+	unsigned int		tuning_count;	/* Timer count for re-tuning */
+	unsigned int		tuning_mode;	/* Re-tuning mode supported by host */
+	unsigned int		tuning_err;	/* Error code for re-tuning */
+#define SDHCI_TUNING_MODE_1	0
+#define SDHCI_TUNING_MODE_2	1
+#define SDHCI_TUNING_MODE_3	2
+	/* Delay (ms) between tuning commands */
+	int			tuning_delay;
+	int			tuning_loop_count;
+	int			tuning_old_ier;
+	int			tuning_old_sig;
+
 	struct mci_host	*mci;
 };
 
@@ -282,6 +305,7 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 }
 
 #define SDHCI_NO_DMA DMA_ERROR_CODE
+int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode);
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd);
 int sdhci_wait_for_done(struct sdhci *host, u32 mask);
 void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);

-- 
2.40.1



