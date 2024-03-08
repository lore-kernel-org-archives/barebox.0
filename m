Delivery-date: Fri, 08 Mar 2024 12:19:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFx-00DdDr-0R
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 12:19:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFv-0001Nn-TK
	for lore@pengutronix.de; Fri, 08 Mar 2024 12:19:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kA94e/FUsHxYkmurJt149wW+WtGyLR45HCeXvOR7Qz8=; b=pijO5Tbx9XaSMApv0uGwdk/oU2
	UTlhLF26hg8s0bO6wYeDBgclUkMdeuhBj7fTEYMQEl62CCtjrZ0QI7a+s3PeIaBl3v4/SbqyGc45r
	f5kK+WlgcbHbOAyoGeV9SLjU5+ppVFCyDZU73AtETlMcsVa9AiY8PXC5g4Bp/yU5zQ00SlEsqdTM7
	q3Mcfk7rKkA0CJGxGiFZeOmUWpK1U/14/yptotFmnReWla10pJ6mFh4loDC/FBA5HdFgdajny2Xff
	YuMh+YQfIQmi9jisx0rghK2BPHLjRUdhf3CfyvWg8S7KyiXba3Vgf2g+pXWASLZqK0Uy91QKq/0s5
	WsCZLVSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYFJ-00000008vvH-47sO;
	Fri, 08 Mar 2024 11:18:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEd-00000008vQQ-3OPK
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 11:18:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riYEZ-0007Id-Lo
	for barebox@lists.infradead.org; Fri, 08 Mar 2024 12:17:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 12:17:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-9-6d50c90485f3@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=12336;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=TR0ASG+sT8ao2IGeP9YwHpaPIuIO97r3Wu53fQRjd4I=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJffb5YxhMUWqKhGrnS7JqQRv4uxnudlUKrpykaHk+9c
 Gv+JbWvHaUsDGJcDLJiiiyRaw9pbBb+rPPl+HkGmDmsTCBDGLg4BWAiHLMZGV5HKkc5PX6b37fm
 k+jsXxctvnzewP2k/kJZuXb5Oe5pBdoMfziC77rsbFxWzLTtlLDZ2Xp3/UM8y24fOHbqrPe9qjN
 1AWwA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_031756_358180_31616361 
X-CRM114-Status: GOOD (  31.48  )
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
Subject: [PATCH 09/12] mci: mci-core: add HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

HS200 is a timing mode for eMMCs to work 8bit with 200MHz clocks.
To be used, drivers need to set the correct drive strength, clock phases
and then SDHCI can start tuning for HS200.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/Kconfig    |   7 ++
 drivers/mci/mci-core.c | 256 +++++++++++++++++++++++++++++++++++++++++++++++--
 include/mci.h          |  53 +++++++++-
 3 files changed, 304 insertions(+), 12 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index f569e24c0d..1e8c85643b 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -12,6 +12,13 @@ if MCI
 
 comment "--- Feature list ---"
 
+config MCI_TUNING
+	bool "EXPERIMENTAL - support MMC tuning for higher speeds"
+	help
+	  Say 'y' here if supporting drivers should do tuning to support
+	  higher clock speeds than 52 MHz SDR. MMC only; SD-Card max
+	  frequency is 50MHz SDR at present.
+
 config MCI_STARTUP
 	bool "Force probe on system start"
 	help
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index cd046149b4..b3a5884edd 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1228,6 +1228,17 @@ static int mci_mmc_try_bus_width(struct mci *mci, enum mci_bus_width bus_width,
 	mci->host->timing = timing;
 	mci_set_bus_width(mci, bus_width);
 
+	switch (bus_width) {
+		case MMC_BUS_WIDTH_8:
+			mci->card_caps |= MMC_CAP_8_BIT_DATA;
+			break;
+		case MMC_BUS_WIDTH_4:
+			mci->card_caps |= MMC_CAP_4_BIT_DATA;
+			break;
+		default:
+			break;
+	}
+
 	err = mmc_compare_ext_csds(mci, bus_width);
 	if (err < 0)
 		goto out;
@@ -1301,10 +1312,220 @@ static int mci_mmc_select_hs_ddr(struct mci *mci)
 	return 0;
 }
 
+#ifdef CONFIG_MCI_TUNING
+/*
+ * Switch to the high-speed mode
+ */
+static int mmc_select_hs(struct mci *mci)
+{
+	int err;
+
+	err = mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
+	if (err)
+		dev_warn(&mci->dev, "switch to high-speed failed, err:%d\n", err);
+
+	return err;
+}
+
+int mci_execute_tuning(struct mci *mci)
+{
+	struct mci_host *host = mci->host;
+	u32 opcode;
+	int err;
+
+	if (!host->execute_tuning)
+		return 0;
+
+	/* Tuning is only supported for MMC / HS200 */
+	if (mmc_card_hs200(mci))
+		opcode = MMC_SEND_TUNING_BLOCK_HS200;
+	else
+		return 0;
+
+	err = host->execute_tuning(host, opcode);
+	return err;
+}
+
+int mci_send_abort_tuning(struct mci *mci, u32 opcode)
+{
+	struct mci_cmd cmd = {};
+
+	/*
+	 * eMMC specification specifies that CMD12 can be used to stop a tuning
+	 * command, but SD specification does not, so do nothing unless it is
+	 * eMMC.
+	 */
+	if (opcode != MMC_SEND_TUNING_BLOCK_HS200)
+		return 0;
+
+	cmd.cmdidx = MMC_CMD_STOP_TRANSMISSION;
+	cmd.resp_type = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_AC;
+
+	return mci_send_cmd(mci, &cmd, NULL);
+}
+EXPORT_SYMBOL_GPL(mci_send_abort_tuning);
+
+static int mmc_select_max_dtr(struct mci *mci)
+{
+	u8 card_type = mci->ext_csd[EXT_CSD_DEVICE_TYPE];
+	u32 caps2 = mci->host->caps2;
+	u32 caps = mci->card_caps;
+	unsigned int hs_max_dtr = 0;
+	unsigned int hs200_max_dtr = 0;
+
+	if (caps & MMC_CAP_MMC_HIGHSPEED &&
+	    card_type & EXT_CSD_CARD_TYPE_26) {
+		hs_max_dtr = MMC_HIGH_26_MAX_DTR;
+	}
+
+	if (caps & MMC_CAP_MMC_HIGHSPEED &&
+	    card_type & EXT_CSD_CARD_TYPE_52) {
+		hs_max_dtr = MMC_HIGH_52_MAX_DTR;
+	}
+
+	if (caps2 & MMC_CAP2_HS200_1_8V_SDR &&
+	    card_type & EXT_CSD_CARD_TYPE_HS200_1_8V) {
+		hs200_max_dtr = MMC_HS200_MAX_DTR;
+	}
+
+	if (caps2 & MMC_CAP2_HS200_1_2V_SDR &&
+	    card_type & EXT_CSD_CARD_TYPE_HS200_1_2V) {
+		hs200_max_dtr = MMC_HS200_MAX_DTR;
+	}
+
+	mci->host->hs200_max_dtr = hs200_max_dtr;
+	mci->host->hs_max_dtr = hs_max_dtr;
+
+	return 0;
+}
+/*
+ * For device supporting HS200 mode, the following sequence
+ * should be done before executing the tuning process.
+ * 1. set the desired bus width(4-bit or 8-bit, 1-bit is not supported)
+ * 2. switch to HS200 mode
+ * 3. set the clock to > 52Mhz and <=200MHz
+ */
+static int mmc_select_hs200(struct mci *mci)
+{
+	unsigned int old_timing, old_clock;
+	int err = -EINVAL;
+	u8 val;
+
+	/*
+	 * Set the bus width(4 or 8) with host's support and
+	 * switch to HS200 mode if bus width is set successfully.
+	 */
+	/* find out maximum bus width and then try DDR if supported */
+	err = mci_mmc_select_bus_width(mci);
+	if (err > 0) {
+		u32 status;
+
+		/* TODO  actually set drive strength instead of 0. Currently unsupported. */
+		val = EXT_CSD_TIMING_HS200 | 0 << EXT_CSD_DRV_STR_SHIFT;
+		err = mci_switch(mci, EXT_CSD_HS_TIMING, val);
+		if (err)
+			goto err;
+
+		/*
+		 * Bump to HS timing and frequency. Some cards don't handle
+		 * SEND_STATUS reliably at the initial frequency.
+		 * NB: We can't move to full (HS200) speeds until after we've
+		 * successfully switched over.
+		 */
+		old_timing = mci->host->timing;
+		old_clock = mci->host->clock;
+
+		mci->host->timing = MMC_TIMING_MMC_HS200;
+		mci_set_ios(mci);
+		mci_set_clock(mci, mci->host->hs_max_dtr);
+
+		/*
+		 * For HS200, CRC errors are not a reliable way to know the
+		 * switch failed. If there really is a problem, we would expect
+		 * tuning will fail and the result ends up the same.
+		 */
+		err = mci_send_status(mci, &status);
+
+		/*
+		 * mmc_select_timing() assumes timing has not changed if
+		 * it is a switch error.
+		 */
+		if (err == -EBADMSG) {
+			mci->host->clock = old_clock;
+			mci->host->timing = old_timing;
+			mci_set_ios(mci);
+		}
+	}
+err:
+	if (err) {
+		dev_err(&mci->dev, "%s failed, error %d\n", __func__, err);
+	}
+	return err;
+}
+
+/*
+ * Set the bus speed for the selected speed mode.
+ */
+static void mmc_set_bus_speed(struct mci *mci)
+{
+	unsigned int max_dtr = (unsigned int)-1;
+
+	if (mmc_card_hs200(mci) &&
+		max_dtr > mci->host->hs200_max_dtr)
+		max_dtr = mci->host->hs200_max_dtr;
+	else if (mmc_card_hs(mci) && max_dtr > mci->host->hs_max_dtr)
+		max_dtr = mci->host->hs_max_dtr;
+	else if (max_dtr > 26000000)
+		max_dtr = 26000000;
+
+	mci_set_clock(mci, max_dtr);
+}
+
+/*
+ * Activate High Speed, HS200 or HS400ES mode if supported.
+ */
+int mmc_select_timing(struct mci *mci)
+{
+	unsigned int mmc_avail_type;
+	int err = 0;
+
+	mmc_select_max_dtr(mci);
+
+	mmc_avail_type = mci->ext_csd[EXT_CSD_DEVICE_TYPE] & EXT_CSD_CARD_TYPE_MASK;
+	if (mmc_avail_type & EXT_CSD_CARD_TYPE_HS200) {
+		err = mmc_select_hs200(mci);
+		if (err == -EBADMSG)
+			mmc_avail_type &= ~EXT_CSD_CARD_TYPE_HS200;
+		else
+			goto out;
+	}
+
+	if (mmc_avail_type & EXT_CSD_CARD_TYPE_HS)
+		err = mmc_select_hs(mci);
+
+out:
+	if (err && err != -EBADMSG)
+		return err;
+
+	/*
+	 * Set the bus speed to the selected bus timing.
+	 * If timing is not selected, backward compatible is the default.
+	 */
+	mmc_set_bus_speed(mci);
+
+	return 0;
+}
+
+int mmc_hs200_tuning(struct mci *mci)
+{
+	return mci_execute_tuning(mci);
+}
+#endif
+
 static int mci_startup_mmc(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	int ret;
+	int ret = 0;
 
 	/* if possible, speed up the transfer */
 	if (mci_caps(mci) & MMC_CAP_MMC_HIGHSPEED) {
@@ -1316,19 +1537,32 @@ static int mci_startup_mmc(struct mci *mci)
 		host->timing = MMC_TIMING_MMC_HS;
 	}
 
-	mci_set_clock(mci, mci->tran_speed);
+	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
+		/*
+		 * Select timing interface
+		 */
+		ret = mmc_select_timing(mci);
+		if (ret)
+			return ret;
 
-	/* find out maximum bus width and then try DDR if supported */
-	ret = mci_mmc_select_bus_width(mci);
-	if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
-		ret = mci_mmc_select_hs_ddr(mci);
+		if (mmc_card_hs200(mci))
+			ret = mmc_hs200_tuning(mci);
+	}
 
-	if (ret < 0) {
-		dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
-		return ret;
+	if (ret || !IS_ENABLED(CONFIG_MCI_TUNING)) {
+		mci_set_clock(mci, mci->tran_speed);
+
+		/* find out maximum bus width and then try DDR if supported */
+		ret = mci_mmc_select_bus_width(mci);
+		if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
+			ret = mci_mmc_select_hs_ddr(mci);
+
+		if (ret < 0) {
+			dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
+		}
 	}
 
-	return 0;
+	return ret;
 }
 
 /**
@@ -1756,6 +1990,8 @@ static const char *mci_timing_tostr(unsigned timing)
 		return "SD HS";
 	case MMC_TIMING_MMC_DDR52:
 		return "MMC DDR52";
+	case MMC_TIMING_MMC_HS200:
+		return "HS200";
 	default:
 		return "unknown"; /* shouldn't happen */
 	}
diff --git a/include/mci.h b/include/mci.h
index ed2967c889..734e1239fb 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -82,6 +82,8 @@
 #define MMC_CMD_SET_BLOCKLEN		16
 #define MMC_CMD_READ_SINGLE_BLOCK	17
 #define MMC_CMD_READ_MULTIPLE_BLOCK	18
+#define MMC_SEND_TUNING_BLOCK		19   /* adtc R1  */
+#define MMC_SEND_TUNING_BLOCK_HS200	21   /* adtc R1  */
 #define MMC_CMD_WRITE_SINGLE_BLOCK	24
 #define MMC_CMD_WRITE_MULTIPLE_BLOCK	25
 #define MMC_CMD_APP_CMD			55
@@ -293,8 +295,8 @@
 #define EXT_CSD_CARD_TYPE_MASK		0x3f
 #define EXT_CSD_CARD_TYPE_26		(1<<0)	/* Card can run at 26MHz */
 #define EXT_CSD_CARD_TYPE_52		(1<<1)	/* Card can run at 52MHz */
-#define EXT_CSD_CARD_TYPE_HS		(EXT_CSD_CARD_TYPE_HS_26 |	\
-					 EXT_CSD_CARD_TYPE_HS_52)
+#define EXT_CSD_CARD_TYPE_HS		(EXT_CSD_CARD_TYPE_26 |	\
+					 EXT_CSD_CARD_TYPE_52)
 #define EXT_CSD_CARD_TYPE_DDR_1_8V	(1<<2)	/* Card can run at 52MHz */
 						/* DDR mode @1.8V or 3V I/O */
 #define EXT_CSD_CARD_TYPE_DDR_1_2V	(1<<3)	/* Card can run at 52MHz */
@@ -330,6 +332,12 @@
 #define EXT_CSD_DDR_BUS_WIDTH_8	6	/* Card is in 8 bit DDR mode */
 #define EXT_CSD_DDR_FLAG	BIT(2)	/* Flag for DDR mode */
 
+#define EXT_CSD_TIMING_BC	0	/* Backwards compatility */
+#define EXT_CSD_TIMING_HS	1	/* High speed */
+#define EXT_CSD_TIMING_HS200	2	/* HS200 */
+#define EXT_CSD_TIMING_HS400	3	/* HS400 */
+#define EXT_CSD_DRV_STR_SHIFT	4	/* Driver Strength shift */
+
 #define R1_ILLEGAL_COMMAND		(1 << 22)
 #define R1_STATUS(x)			(x & 0xFFF9A000)
 #define R1_CURRENT_STATE(x)		((x & 0x00001E00) >> 9)	/* sx, b (4 bits) */
@@ -503,6 +511,8 @@ struct mci_host {
 	unsigned clock;		/**< Current clock used to talk to the card */
 	enum mci_bus_width bus_width;	/**< used data bus width to the card */
 	enum mci_timing timing;	/**< used timing specification to the card */
+	unsigned hs_max_dtr;
+	unsigned hs200_max_dtr;
 	unsigned max_req_size;
 	unsigned dsr_val;	/**< optional dsr value */
 	int use_dsr;		/**< optional dsr usage flag */
@@ -521,6 +531,9 @@ struct mci_host {
 	int (*card_present)(struct mci_host *);
 	/** check if a card is write protected */
 	int (*card_write_protected)(struct mci_host *);
+	/* The tuning command opcode value is different for SD and eMMC cards */
+	int (*execute_tuning)(struct mci_host *, u32);
+	int (*platform_execute_tuning)(struct mci_host *host, u32 opcode);
 };
 
 #define MMC_NUM_BOOT_PARTITION	2
@@ -603,4 +616,40 @@ static inline struct mci *mci_get_device_by_devpath(const char *devpath)
 	return mci_get_device_by_name(devpath_to_name(devpath));
 }
 
+#define MMC_HIGH_26_MAX_DTR	26000000
+#define MMC_HIGH_52_MAX_DTR	52000000
+#define MMC_HIGH_DDR_MAX_DTR	52000000
+#define MMC_HS200_MAX_DTR	200000000
+
+static inline int mmc_card_hs(struct mci *mci)
+{
+	return mci->host->timing == MMC_TIMING_SD_HS ||
+		mci->host->timing == MMC_TIMING_MMC_HS;
+}
+
+#ifdef CONFIG_MCI_TUNING
+/*
+ * Execute tuning sequence to seek the proper bus operating
+ * conditions for HS200 and HS400, which sends CMD21 to the device.
+ */
+int mmc_hs200_tuning(struct mci *mci);
+int mci_execute_tuning(struct mci *mci);
+int mci_send_abort_tuning(struct mci *mci, u32 opcode);
+int mmc_select_timing(struct mci *mci);
+#else
+static inline int mmc_hs200_tuning(struct mci *mci)
+{
+	return -ENOSYS;
+}
+static inline int mmc_select_timing(struct mci *mci)
+{
+	return -ENOSYS;
+}
+#endif
+
+static inline bool mmc_card_hs200(struct mci *mci)
+{
+	return mci->host->timing == MMC_TIMING_MMC_HS200;
+}
+
 #endif /* _MCI_H_ */

-- 
2.40.1



