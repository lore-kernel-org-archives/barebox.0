Delivery-date: Mon, 09 Mar 2026 13:05:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMU-009jlY-2O
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 13:05:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMU-0000gc-DQ
	for lore@pengutronix.de; Mon, 09 Mar 2026 13:05:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pCX3oaAMueXntjdxtFZoO/Ncgo6Y5S4jwO72pDz2/qE=; b=iul2Sf1Pd1/URyijwO0F8zFJB3
	taEhlJBrrCEF1jaDzQRnk3KJObN88aW8hrWm+a3qbZihXX2jRugl89jKvehSbq62/mKvBsfRE5ZaJ
	zT89pG12N3xqOLETg8Id8u08Dk1GSgc6jkXfpOk2TqOIKr2g3uHW1edCQpKCC141ptjcHvDpibtbn
	OutMTQav0TdurpmfOhXFR5gGGkAL3vRxX4FrR6yFxBV3tfk4F//Q2V7SEpe1dxY3ufrP3Vs3SWTMh
	xiAZtPz5zXTHCiuS8mT1JPPapIWB3z1EgXc05tq7xgjdd7qDLLe26lDCyC0pu3hmfNS96ph64DzF3
	SyGib9TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLw-00000007FdK-3DXc;
	Mon, 09 Mar 2026 12:04:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLv-00000007Fbw-1wdG
	for barebox@bombadil.infradead.org;
	Mon, 09 Mar 2026 12:04:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=pCX3oaAMueXntjdxtFZoO/Ncgo6Y5S4jwO72pDz2/qE=; b=N5WtVyoJQMMNT4AuugKZ4kww+j
	SZgJrBLW+ImQCO2Bp7GcJdrC8BCL/os5U2z4wJ583n3oTJdhTp4AuW301ezekuW6Z24zZbl/oWq6E
	ZlF0LYpSucn2W6OvzL/DePRIF28wIiyV2wt0rXNt+VlXia2UlyUsHE4FY6W5VRdcXR56RAninrlNf
	fbiqncXM7KZnqCOG7Y+CVFehmZffXXmfLh2F+aY++h5yPStltIko1rT9v06ww+ACUpYBq+0whdsix
	A6c+2F74ZKrAD4T0yhkgPnfo+GpEocV+bFuE3NPOHmzyAnX+v+M64p/Z1mAw/hHEbTl3zEHiqa5Ek
	AK1+UKQg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLq-0000000C4MB-3TcG
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 12:04:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzZLn-0000K8-5E; Mon, 09 Mar 2026 13:04:43 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 13:04:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-2-fcc1f327acf8@pengutronix.de>
References: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
In-Reply-To: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_120446_985912_7F0D12AA 
X-CRM114-Status: GOOD (  13.62  )
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
Subject: [PATCH v2 2/6] mci: sdhci: add sdhci_send_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux uses a generic sdhci_send_cmd function for most sdhci host
drivers. Port the v6.18-rc1 version and mix and match with the
arasan_sdhci_send_cmd function already in barebox.

Also add sdhci_dumpregs for debugging errors.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/sdhci.c | 128 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/sdhci.h |  21 +++++++++
 2 files changed, 149 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 847c0dc516..371d3e4a4b 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -11,6 +11,8 @@
 
 #define MAX_TUNING_LOOP 40
 
+#define DRIVER_NAME "sdhci"
+
 enum sdhci_reset_reason {
 	SDHCI_RESET_FOR_INIT,
 	SDHCI_RESET_FOR_REQUEST_ERROR,
@@ -25,6 +27,69 @@ static inline struct device *sdhci_dev(struct sdhci *host)
 	return host->mci ? host->mci->hw_dev : NULL;
 }
 
+void sdhci_dumpregs(struct sdhci *sdhci)
+{
+	dev_err(sdhci_dev(sdhci), "============ SDHCI REGISTER DUMP ===========\n");
+
+	dev_err(sdhci_dev(sdhci), "Sys addr:  0x%08x | Version:  0x%08x\n",
+		   sdhci_read32(sdhci, SDHCI_DMA_ADDRESS),
+		   sdhci_read16(sdhci, SDHCI_HOST_VERSION));
+	dev_err(sdhci_dev(sdhci), "Blk size:  0x%08x | Blk cnt:  0x%08x\n",
+		   sdhci_read16(sdhci, SDHCI_BLOCK_SIZE),
+		   sdhci_read16(sdhci, SDHCI_BLOCK_COUNT));
+	dev_err(sdhci_dev(sdhci), "Argument:  0x%08x | Trn mode: 0x%08x\n",
+		   sdhci_read32(sdhci, SDHCI_ARGUMENT),
+		   sdhci_read16(sdhci, SDHCI_TRANSFER_MODE));
+	dev_err(sdhci_dev(sdhci), "Present:   0x%08x | Host ctl: 0x%08x\n",
+		   sdhci_read32(sdhci, SDHCI_PRESENT_STATE),
+		   sdhci_read8(sdhci, SDHCI_HOST_CONTROL));
+	dev_err(sdhci_dev(sdhci), "Power:     0x%08x | Blk gap:  0x%08x\n",
+		   sdhci_read8(sdhci, SDHCI_POWER_CONTROL),
+		   sdhci_read8(sdhci, SDHCI_BLOCK_GAP_CONTROL));
+	dev_err(sdhci_dev(sdhci), "Wake-up:   0x%08x | Clock:    0x%08x\n",
+		   sdhci_read8(sdhci, SDHCI_WAKE_UP_CONTROL),
+		   sdhci_read16(sdhci, SDHCI_CLOCK_CONTROL));
+	dev_err(sdhci_dev(sdhci), "Timeout:   0x%08x | Int stat: 0x%08x\n",
+		   sdhci_read8(sdhci, SDHCI_TIMEOUT_CONTROL),
+		   sdhci_read32(sdhci, SDHCI_INT_STATUS));
+	dev_err(sdhci_dev(sdhci), "Int enab:  0x%08x | Sig enab: 0x%08x\n",
+		   sdhci_read32(sdhci, SDHCI_INT_ENABLE),
+		   sdhci_read32(sdhci, SDHCI_SIGNAL_ENABLE));
+	dev_err(sdhci_dev(sdhci), "ACmd stat: 0x%08x | Slot int: 0x%08x\n",
+		   sdhci_read16(sdhci, SDHCI_ACMD12_ERR__HOST_CONTROL2),
+		   sdhci_read16(sdhci, SDHCI_SLOT_INT_STATUS));
+	dev_err(sdhci_dev(sdhci), "Caps:      0x%08x | Caps_1:   0x%08x\n",
+		   sdhci_read32(sdhci, SDHCI_CAPABILITIES),
+		   sdhci_read32(sdhci, SDHCI_CAPABILITIES_1));
+	dev_err(sdhci_dev(sdhci), "Cmd:       0x%08x | Max curr: 0x%08x\n",
+		   sdhci_read16(sdhci, SDHCI_COMMAND),
+		   sdhci_read32(sdhci, SDHCI_MAX_CURRENT));
+	dev_err(sdhci_dev(sdhci), "Resp[0]:   0x%08x | Resp[1]:  0x%08x\n",
+		   sdhci_read32(sdhci, SDHCI_RESPONSE_0),
+		   sdhci_read32(sdhci, SDHCI_RESPONSE_1));
+	dev_err(sdhci_dev(sdhci), "Resp[2]:   0x%08x | Resp[3]:  0x%08x\n",
+		   sdhci_read32(sdhci, SDHCI_RESPONSE_2),
+		   sdhci_read32(sdhci, SDHCI_RESPONSE_3));
+	dev_err(sdhci_dev(sdhci), "Host ctl2: 0x%08x\n",
+		   sdhci_read16(sdhci, SDHCI_HOST_CONTROL2));
+
+	if (sdhci->flags & SDHCI_USE_ADMA) {
+		if (sdhci->flags & SDHCI_USE_64_BIT_DMA) {
+			dev_err(sdhci_dev(sdhci), "ADMA Err:  0x%08x | ADMA Ptr: 0x%08x%08x\n",
+				   sdhci_read32(sdhci, SDHCI_ADMA_ERROR),
+				   sdhci_read32(sdhci, SDHCI_ADMA_ADDRESS_HI),
+				   sdhci_read32(sdhci, SDHCI_ADMA_ADDRESS));
+		} else {
+			dev_err(sdhci_dev(sdhci), "ADMA Err:  0x%08x | ADMA Ptr: 0x%08x\n",
+				   sdhci_read32(sdhci, SDHCI_ADMA_ERROR),
+				   sdhci_read32(sdhci, SDHCI_ADMA_ADDRESS));
+		}
+	}
+
+	dev_err(sdhci_dev(sdhci), "============================================\n");
+}
+EXPORT_SYMBOL_GPL(sdhci_dumpregs);
+
 static void sdhci_reset_for_reason(struct sdhci *host, enum sdhci_reset_reason reason)
 {
 	if (host->quirks2 & SDHCI_QUIRK2_ISSUE_CMD_DAT_RESET_TOGETHER) {
@@ -51,6 +116,69 @@ static void sdhci_reset_for_reason(struct sdhci *host, enum sdhci_reset_reason r
 
 #define sdhci_reset_for(h, r) sdhci_reset_for_reason((h), SDHCI_RESET_FOR_##r)
 
+int sdhci_send_command(struct sdhci *host, struct mci_cmd *cmd)
+{
+	u32 mask, command, xfer;
+	dma_addr_t dma;
+	int ret;
+
+	ret = sdhci_wait_idle(host, cmd, cmd->data);
+	if (ret)
+		return ret;
+
+	sdhci_write32(host, SDHCI_INT_STATUS, ~0);
+
+	mask = SDHCI_INT_CMD_COMPLETE;
+	if (cmd->resp_type & MMC_RSP_BUSY)
+		mask |= SDHCI_INT_XFER_COMPLETE;
+
+	sdhci_setup_data_dma(host, cmd->data, &dma);
+
+	sdhci_set_cmd_xfer_mode(host, cmd, cmd->data,
+				dma == SDHCI_NO_DMA ? false : true,
+				&command, &xfer);
+
+	sdhci_write8(host, SDHCI_TIMEOUT_CONTROL, 0xf);
+	if (xfer)
+		sdhci_write16(host, SDHCI_TRANSFER_MODE, xfer);
+	if (cmd->data) {
+		sdhci_write16(host, SDHCI_BLOCK_SIZE,
+			      SDHCI_DMA_BOUNDARY_512K |
+			      SDHCI_TRANSFER_BLOCK_SIZE(cmd->data->blocksize));
+		sdhci_write16(host, SDHCI_BLOCK_COUNT, cmd->data->blocks);
+	}
+	sdhci_write32(host, SDHCI_ARGUMENT, cmd->cmdarg);
+	sdhci_write16(host, SDHCI_COMMAND, command);
+
+	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
+	if (mmc_op_tuning(cmd->cmdidx))
+		mask = SDHCI_INT_DATA_AVAIL;
+
+	ret = sdhci_wait_for_done(host, mask);
+	if (ret) {
+		sdhci_teardown_data(host, cmd->data, dma);
+		sdhci_dumpregs(host);
+		goto error;
+	}
+
+	sdhci_read_response(host, cmd);
+	sdhci_write32(host, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
+
+	if (cmd->data)
+		ret = sdhci_transfer_data_dma(host, cmd, cmd->data, dma);
+
+	return ret;
+
+error:
+	if (ret) {
+		sdhci_reset(host, SDHCI_RESET_CMD);
+		sdhci_reset(host, SDHCI_RESET_DATA);
+	}
+
+	sdhci_write32(host, SDHCI_INT_STATUS, ~0);
+	return ret;
+}
+
 static int sdhci_send_command_retry(struct sdhci *host, struct mci_cmd *cmd)
 {
 	int timeout = 10;
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index ec82b1b8ff..e7c56d59f4 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -85,6 +85,11 @@
 #define  SDHCI_BUS_VOLTAGE_330			SDHCI_BUS_VOLTAGE(7)
 #define  SDHCI_BUS_VOLTAGE(v)			((v) << 1)
 #define  SDHCI_BUS_POWER_EN			BIT(0)
+#define SDHCI_BLOCK_GAP_CONTROL			0x2A
+#define SDHCI_WAKE_UP_CONTROL			0x2B
+#define  SDHCI_WAKE_ON_INT			0x01
+#define  SDHCI_WAKE_ON_INSERT			0x02
+#define  SDHCI_WAKE_ON_REMOVE			0x04
 #define SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET	0x2c
 #define SDHCI_CLOCK_CONTROL					0x2C
 #define  SDHCI_DIVIDER_SHIFT			8
@@ -177,6 +182,17 @@
 #define  SDHCI_CAN_DO_ADMA3			0x08000000
 #define  SDHCI_SUPPORT_HS400			0x80000000 /* Non-standard */
 
+#define SDHCI_MAX_CURRENT		0x48
+#define  SDHCI_MAX_CURRENT_LIMIT	GENMASK(7, 0)
+#define  SDHCI_MAX_CURRENT_330_MASK	GENMASK(7, 0)
+#define  SDHCI_MAX_CURRENT_300_MASK	GENMASK(15, 8)
+#define  SDHCI_MAX_CURRENT_180_MASK	GENMASK(23, 16)
+#define SDHCI_MAX_CURRENT_1		0x4C
+#define  SDHCI_MAX_CURRENT_VDD2_180_MASK	GENMASK(7, 0) /* UHS2 */
+#define   SDHCI_MAX_CURRENT_MULTIPLIER	4
+
+#define SDHCI_ADMA_ERROR	0x54
+
 #define SDHCI_PRESET_FOR_SDR12	0x66
 #define SDHCI_PRESET_FOR_SDR25	0x68
 #define SDHCI_PRESET_FOR_SDR50	0x6A
@@ -207,6 +223,8 @@
 
 #define SDHCI_MMC_BOOT						0xC4
 
+#define SDHCI_SLOT_INT_STATUS	0xFC
+
 #define SDHCI_MAX_DIV_SPEC_200	256
 #define SDHCI_MAX_DIV_SPEC_300	2046
 
@@ -357,6 +375,9 @@ static inline void sdhci_read_caps(struct sdhci *host)
 {
 	__sdhci_read_caps(host, NULL, NULL, NULL);
 }
+
+void sdhci_dumpregs(struct sdhci *host);
+int sdhci_send_command(struct sdhci *host, struct mci_cmd *cmd);
 void sdhci_set_bus_width(struct sdhci *host, int width);
 
 #define sdhci_read8_poll_timeout(sdhci, reg, val, cond, timeout_us) \

-- 
2.52.0



