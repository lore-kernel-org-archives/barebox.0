Delivery-date: Mon, 05 May 2025 14:39:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6K-002SYc-20
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6D-0006qp-IX
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kh+g6fmM0X2t+oYeMe4uJwbh/LX4moevVqCyx3UNWdU=; b=Ano8WFLO9UuJKD7UXnefXPu9Bj
	jHoj/3xexpqijy2VrTVvFLJNH883uslc13Vg0LHpkR4q/UolaoOcCntdyKapa519zI2lFg4yqwMRF
	fov/o6pn3Tfuz2FgN7GGaDuD1l9HXHE+2WrlKDEJ7BdRgxe7ZkFtSEEZ/3gUEXZYbWiWyhBSvV+fA
	Ey+T54tYq7pWD+BupfTMjtBbcLE29k+SAKcHBEsLMiD3QdsQmhRI7giHJZKnBFxf5JzpxZ6fb3b5z
	2UOvUmb8Rlf+p9qJ+a87on+6ap+yLWqL+BgMLG0V7BvcFUBI6E4C5QVNQpSb/T8Ab8UEDHEg9iDvx
	j03DUQgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5P-00000007Le6-3SzP;
	Mon, 05 May 2025 12:38:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv29-00000007Kau-47u2
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-0004r8-Nt; Mon, 05 May 2025 14:34:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-001EQb-1k;
	Mon, 05 May 2025 14:34:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-2R;
	Mon, 05 May 2025 14:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:31 +0200
Message-Id: <20250505120633.3717186-29-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053458_200929_B12DD99A 
X-CRM114-Status: GOOD (  21.28  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 28/30] mci: imx-esdhc: fixup quirks in standard SDHCI registers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The eSDHC implementation differs from the spec sufficiently to break the
generic SDHCI tuning support. Linux works around this by intercepting
some particular register reads and faking the content.

Let's begrudgingly do the same for barebox.

Mildly interesting statistic: As of Linux v6.12, the generic SDHCI driver
defines 52 quirk bits and 32 callbacks to handle differences.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 229 +++++++++++++++++++++++++++++++++
 drivers/mci/imx-esdhc.h        |  30 +++++
 drivers/mci/sdhci.h            |   1 +
 3 files changed, 260 insertions(+)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index c3795aec5344..f51e5c6448a4 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -23,6 +23,10 @@
 #define  ESDHC_MIX_CTRL_FBCLK_SEL	(1 << 25)
 #define  ESDHC_MIX_CTRL_HS400_EN	(1 << 26)
 #define  ESDHC_MIX_CTRL_HS400_ES_EN	(1 << 27)
+/* Bits 3 and 6 are not SDHCI standard definitions */
+#define  ESDHC_MIX_CTRL_SDHCI_MASK	0xb7
+/* Tuning bits */
+#define  ESDHC_MIX_CTRL_TUNING_MASK	0x03c00000
 
 static u32 esdhc_op_read32_be(struct sdhci *sdhci, int reg)
 {
@@ -52,6 +56,224 @@ static void esdhc_op_write16_be(struct sdhci *sdhci, int reg, u16 val)
 	out_be16(host->sdhci.base + reg, val);
 }
 
+static u16 esdhc_op_read16_le_tuning(struct sdhci *sdhci, int reg)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+	u16 ret = 0;
+	u32 val;
+
+	if (unlikely(reg == SDHCI_HOST_VERSION)) {
+		/*
+		 * The usdhc register returns a wrong host version.
+		 * Correct it here.
+		 */
+		return SDHCI_SPEC_300;
+	}
+
+	if (unlikely(reg == SDHCI_HOST_CONTROL2)) {
+		val = readl(sdhci->base + ESDHC_VENDOR_SPEC);
+		if (val & ESDHC_VENDOR_SPEC_VSELECT)
+			ret |= SDHCI_CTRL_VDD_180;
+
+		if (host->socdata->flags & ESDHC_FLAG_MAN_TUNING)
+			val = readl(sdhci->base + ESDHC_MIX_CTRL);
+		else if (host->socdata->flags & ESDHC_FLAG_STD_TUNING)
+			/* the std tuning bits is in ACMD12_ERR for imx6sl */
+			val = readl(sdhci->base + SDHCI_ACMD12_ERR__HOST_CONTROL2);
+
+		if (val & ESDHC_MIX_CTRL_EXE_TUNE)
+			ret |= SDHCI_CTRL_EXEC_TUNING;
+		if (val & ESDHC_MIX_CTRL_SMPCLK_SEL)
+			ret |= SDHCI_CTRL_TUNED_CLK;
+
+		ret &= ~SDHCI_CTRL_PRESET_VAL_ENABLE;
+
+		return ret;
+	}
+
+	if (unlikely(reg == SDHCI_TRANSFER_MODE)) {
+		u32 m = readl(sdhci->base + ESDHC_MIX_CTRL);
+		ret = m & ESDHC_MIX_CTRL_SDHCI_MASK;
+		/* Swap AC23 bit */
+		if (m & ESDHC_MIX_CTRL_AC23EN) {
+			ret &= ~ESDHC_MIX_CTRL_AC23EN;
+			ret |= SDHCI_TRNS_AUTO_CMD23;
+		}
+
+		return ret;
+	}
+
+	return readw(sdhci->base + reg);
+}
+
+static inline void esdhc_wait_for_card_clock_gate_off(struct sdhci *sdhci)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+	u32 present_state;
+	int ret;
+
+	ret = readl_poll_timeout(sdhci->base + ESDHC_PRSSTAT, present_state,
+				(present_state & ESDHC_CLOCK_GATE_OFF), 100);
+	if (ret == -ETIMEDOUT)
+		dev_warn(host->dev, "%s: card clock still not gate off in 100us!.\n", __func__);
+}
+
+static inline void esdhc_clrset_le(struct sdhci *sdhci, u32 mask, u32 val, int reg)
+{
+	void __iomem *base = sdhci->base + (reg & ~0x3);
+	u32 shift = (reg & 0x3) * 8;
+
+	writel(((readl(base) & ~(mask << shift)) | (val << shift)), base);
+}
+
+static void esdhc_op_write16_le_tuning(struct sdhci *sdhci, int reg, u16 val)
+{
+	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
+	u32 new_val = 0;
+
+	switch (reg) {
+	case SDHCI_CLOCK_CONTROL:
+		new_val = readl(sdhci->base + ESDHC_VENDOR_SPEC);
+		if (val & SDHCI_CLOCK_CARD_EN)
+			new_val |= ESDHC_VENDOR_SPEC_FRC_SDCLK_ON;
+		else
+			new_val &= ~ESDHC_VENDOR_SPEC_FRC_SDCLK_ON;
+		writel(new_val, sdhci->base + ESDHC_VENDOR_SPEC);
+		if (!(new_val & ESDHC_VENDOR_SPEC_FRC_SDCLK_ON))
+			esdhc_wait_for_card_clock_gate_off(sdhci);
+		return;
+	case SDHCI_HOST_CONTROL2:
+		new_val = readl(sdhci->base + ESDHC_VENDOR_SPEC);
+		if (val & SDHCI_CTRL_VDD_180)
+			new_val |= ESDHC_VENDOR_SPEC_VSELECT;
+		else
+			new_val &= ~ESDHC_VENDOR_SPEC_VSELECT;
+		writel(new_val, sdhci->base + ESDHC_VENDOR_SPEC);
+		if (host->socdata->flags & ESDHC_FLAG_STD_TUNING) {
+			u32 v = readl(sdhci->base + SDHCI_ACMD12_ERR__HOST_CONTROL2);
+			u32 m = readl(sdhci->base + ESDHC_MIX_CTRL);
+			if (val & SDHCI_CTRL_TUNED_CLK) {
+				v |= ESDHC_MIX_CTRL_SMPCLK_SEL;
+			} else {
+				v &= ~ESDHC_MIX_CTRL_SMPCLK_SEL;
+				m &= ~ESDHC_MIX_CTRL_FBCLK_SEL;
+			}
+
+			if (val & SDHCI_CTRL_EXEC_TUNING) {
+				v |= ESDHC_MIX_CTRL_EXE_TUNE;
+				m |= ESDHC_MIX_CTRL_FBCLK_SEL;
+			} else {
+				v &= ~ESDHC_MIX_CTRL_EXE_TUNE;
+			}
+
+			writel(v, sdhci->base + SDHCI_ACMD12_ERR__HOST_CONTROL2);
+			writel(m, sdhci->base + ESDHC_MIX_CTRL);
+		}
+		return;
+	case SDHCI_COMMAND:
+		if (host->last_cmd == MMC_CMD_STOP_TRANSMISSION)
+			val |= SDHCI_COMMAND_CMDTYP_ABORT;
+
+		writel(val << 16,
+		       sdhci->base + SDHCI_TRANSFER_MODE);
+		return;
+	case SDHCI_BLOCK_SIZE:
+		val &= ~SDHCI_MAKE_BLKSZ(0x7, 0);
+		break;
+	}
+	esdhc_clrset_le(sdhci, 0xffff, val, reg);
+}
+
+static u8 esdhc_readb_le(struct sdhci *sdhci, int reg)
+{
+	u8 ret;
+	u8 val;
+
+	switch (reg) {
+	case SDHCI_HOST_CONTROL:
+		val = readl(sdhci->base + reg);
+
+		ret = val & SDHCI_CTRL_LED;
+		ret |= (val >> 5) & SDHCI_CTRL_DMA_MASK;
+		ret |= (val & ESDHC_CTRL_4BITBUS);
+		ret |= (val & ESDHC_CTRL_8BITBUS) << 3;
+		return ret;
+	}
+
+	return readb(sdhci->base + reg);
+}
+
+static void esdhc_writeb_le(struct sdhci *sdhci, int reg, u8 val)
+{
+	u32 new_val = 0;
+	u32 mask;
+
+	switch (reg) {
+	case SDHCI_POWER_CONTROL:
+		/*
+		 * FSL put some DMA bits here
+		 * If your board has a regulator, code should be here
+		 */
+		return;
+	case SDHCI_HOST_CONTROL:
+		/* FSL messed up here, so we need to manually compose it. */
+		new_val = val & SDHCI_CTRL_LED;
+		/* ensure the endianness */
+		new_val |= ESDHC_HOST_CONTROL_LE;
+		/* DMA mode bits are shifted */
+		new_val |= (val & SDHCI_CTRL_DMA_MASK) << 5;
+
+		/*
+		 * Do not touch buswidth bits here. This is done in
+		 * esdhc_pltfm_bus_width.
+		 * Do not touch the D3CD bit either which is used for the
+		 * SDIO interrupt erratum workaround.
+		 */
+		mask = 0xffff & ~(ESDHC_CTRL_BUSWIDTH_MASK | ESDHC_CTRL_D3CD);
+
+		esdhc_clrset_le(sdhci, mask, new_val, reg);
+		return;
+	case SDHCI_SOFTWARE_RESET:
+		if (val & SDHCI_RESET_DATA)
+			new_val = readl(sdhci->base + SDHCI_HOST_CONTROL);
+		break;
+	}
+	esdhc_clrset_le(sdhci, 0xff, val, reg);
+
+	if (reg == SDHCI_SOFTWARE_RESET) {
+		if (val & SDHCI_RESET_ALL) {
+			/*
+			 * The esdhc has a design violation to SDHC spec which
+			 * tells that software reset should not affect card
+			 * detection circuit. But esdhc clears its SYSCTL
+			 * register bits [0..2] during the software reset. This
+			 * will stop those clocks that card detection circuit
+			 * relies on. To work around it, we turn the clocks on
+			 * back to keep card detection circuit functional.
+			 */
+			esdhc_clrset_le(sdhci, 0x7, 0x7, ESDHC_SYSTEM_CONTROL);
+			/*
+			 * The reset on usdhc fails to clear MIX_CTRL register.
+			 * Do it manually here.
+			 */
+			/*
+			 * the tuning bits should be kept during reset
+			 */
+			new_val = readl(sdhci->base + ESDHC_MIX_CTRL);
+			writel(new_val & ESDHC_MIX_CTRL_TUNING_MASK,
+					sdhci->base + ESDHC_MIX_CTRL);
+		} else if (val & SDHCI_RESET_DATA) {
+			/*
+			 * The eSDHC DAT line software reset clears at least the
+			 * data transfer width on i.MX25, so make sure that the
+			 * Host Control register is unaffected.
+			 */
+			esdhc_clrset_le(sdhci, 0xff, new_val,
+					SDHCI_HOST_CONTROL);
+		}
+	}
+}
+
 void esdhc_populate_sdhci(struct fsl_esdhc_host *host)
 {
 	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN) {
@@ -59,6 +281,11 @@ void esdhc_populate_sdhci(struct fsl_esdhc_host *host)
 		host->sdhci.write16 = esdhc_op_write16_be;
 		host->sdhci.read32 = esdhc_op_read32_be;
 		host->sdhci.write32 = esdhc_op_write32_be;
+	} else if (esdhc_is_usdhc(host)){
+		host->sdhci.read8 = esdhc_readb_le;
+		host->sdhci.write8 = esdhc_writeb_le;
+		host->sdhci.read16 = esdhc_op_read16_le_tuning;
+		host->sdhci.write16 = esdhc_op_write16_le_tuning;
 	}
 }
 
@@ -113,6 +340,8 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	dma_addr_t dma = SDHCI_NO_DMA;
 	int ret;
 
+	host->last_cmd = cmd ? cmd->cmdidx : 0;
+
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
 	/* Wait at least 8 SD clock cycles before the next command */
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index e24d76d0c687..df8aca18ad32 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -66,6 +66,36 @@
 #define  IMX_SDHCI_DLL_CTRL_OVERRIDE_EN_SHIFT	8
 #define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	BIT(25)
 
+/* pltfm-specific */
+#define ESDHC_HOST_CONTROL_LE	0x20
+
+/*
+ * eSDHC register definition
+ */
+
+/* Present State Register */
+#define ESDHC_PRSSTAT			0x24
+#define ESDHC_CLOCK_GATE_OFF		0x00000080
+#define ESDHC_CLOCK_STABLE		0x00000008
+
+/* Protocol Control Register */
+#define ESDHC_PROCTL			0x28
+#define ESDHC_VOLT_SEL			0x00000400
+#define ESDHC_CTRL_4BITBUS		(0x1 << 1)
+#define ESDHC_CTRL_8BITBUS		(0x2 << 1)
+#define ESDHC_CTRL_BUSWIDTH_MASK	(0x3 << 1)
+#define ESDHC_HOST_CONTROL_RES		0x01
+
+/* System Control Register */
+#define ESDHC_SYSTEM_CONTROL		0x2c
+#define ESDHC_CLOCK_MASK		0x0000fff0
+#define ESDHC_PREDIV_SHIFT		8
+#define ESDHC_DIVIDER_SHIFT		4
+#define ESDHC_CLOCK_SDCLKEN		0x00000008
+#define ESDHC_CLOCK_PEREN		0x00000004
+#define ESDHC_CLOCK_HCKEN		0x00000002
+#define ESDHC_CLOCK_IPGEN		0x00000001
+
 /* tune control register */
 #define ESDHC_TUNE_CTRL_STATUS		0x68
 #define  ESDHC_TUNE_CTRL_STEP		1
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index c0ea15c11ec6..b38837caaec1 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -141,6 +141,7 @@
 #define  SDHCI_CTRL_TUNED_CLK			BIT(7)
 #define  SDHCI_CTRL_64BIT_ADDR			BIT(13)
 #define  SDHCI_CTRL_V4_MODE			BIT(12)
+#define  SDHCI_CTRL_PRESET_VAL_ENABLE		BIT(15)
 #define SDHCI_CAPABILITIES					0x40
 #define  SDHCI_TIMEOUT_CLK_MASK			GENMASK(5, 0)
 #define  SDHCI_TIMEOUT_CLK_UNIT			0x00000080
-- 
2.39.5



