Delivery-date: Tue, 18 Apr 2023 11:31:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgo-007X1C-VM
	for lore@lore.pengutronix.de; Tue, 18 Apr 2023 11:31:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgo-0006xr-JE
	for lore@pengutronix.de; Tue, 18 Apr 2023 11:31:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GDQIS4FBNVAmdE2bTpBpHZ1K18LHBgmnWtoWS+EnTrg=; b=CAOIJi6m78ggM9CdkkfOSoXwP7
	6mkG/S65COljKxl1aq0ziZHqapk8sBV4T9gxKh8YFmXH4QL3rWMehRtFuLlh4pQzPmuRVER+BC6iU
	IMDfpeZG8/YNk6DrclCUH7RY7rNjeoPl6qMhJgLwod933K6rC2rBOH6VbPT5ln2CZ+TPhzWwzs13j
	++/KI9XCkSjgEB6ztfJ3B/XmW3jEkGCbq/uuAxt6lK7A97Z4Fn8+CRpTZy72D52XFT6zzkmEKD1WK
	xcN36xeG5HTpMyyWbpwAuGa/HjRJp5OoTzcGman4wEC90b3uf7KCwqKEZAZ5YO6deuKqwraAVmM26
	v0jhchNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfn-001TiL-2V;
	Tue, 18 Apr 2023 09:30:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfg-001TeR-0J
	for barebox@lists.infradead.org;
	Tue, 18 Apr 2023 09:30:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfe-0006bc-H0; Tue, 18 Apr 2023 11:30:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfd-00C4fy-Sl; Tue, 18 Apr 2023 11:30:41 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfd-007pUy-4E; Tue, 18 Apr 2023 11:30:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Apr 2023 11:30:39 +0200
Message-Id: <20230418093040.1865982-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
References: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_023044_304049_EDD3CCF6 
X-CRM114-Status: GOOD (  22.24  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] mci: add eMMC DDR52 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The maximum card frequency that can be configured by barebox currently
is 50MHz for SD and 52MHz for eMMC. Higher speed modes require runtime
voltage switching or tuning sequences, which are not yet implemented.

Only exception is eMMC's DDR52: This mode was first introduced with
MMC 4.4 and can be used even at 3.3V.

This commit adds DDR52 support to the core. This introduces no functional
change, because host controllers must opt-in by setting the appropriate
host capabilities. In cases where it's enabled, bus width determination
happens as usual and then if possible, the resulting bus width will be
attempted with DDR. If that fails, we revert back to SDR.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - don't attempt 8-bit DDR if 8-bit SDR is not supported
  - try SDR speed modes first before going DDR
  - refactor a bit, so extension for HS200/HS400 is easier
---
 drivers/mci/mci-core.c | 60 +++++++++++++++++++++++++++++++++++-------
 include/mci.h          | 19 +++++++++++++
 2 files changed, 70 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index bd5299e7a4f8..6d0d6473770c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -135,6 +135,9 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
 {
 	struct mci_cmd cmd;
 
+	if (mci->host->timing == MMC_TIMING_MMC_DDR52)
+		return 0;
+
 	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
 	return mci_send_cmd(mci, &cmd, NULL);
 }
@@ -649,11 +652,15 @@ static int mmc_change_freq(struct mci *mci)
 		return 0;
 	}
 
-	/* High Speed is set, there are two types: 52MHz and 26MHz */
-	if (cardtype & EXT_CSD_CARD_TYPE_52)
-		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ | MMC_CAP_MMC_HIGHSPEED;
-	else
-		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED;
+	mci->card_caps |= MMC_CAP_MMC_HIGHSPEED;
+
+	/* High Speed is set, there are three types: 26MHz, 52MHz, 52MHz DDR */
+	if (cardtype & EXT_CSD_CARD_TYPE_52) {
+		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
+
+		if (cardtype & EXT_CSD_CARD_TYPE_DDR_1_8V)
+			mci->card_caps |= MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR;
+	}
 
 	if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
 			mci->ext_csd[EXT_CSD_REV] >= 3 && mci->ext_csd[EXT_CSD_BOOT_SIZE_MULT]) {
@@ -1180,17 +1187,25 @@ static u32 mci_bus_width_ext_csd_bits(enum mci_bus_width bus_width)
 	}
 }
 
-static int mci_mmc_try_bus_width(struct mci *mci, enum mci_bus_width bus_width)
+static int mci_mmc_try_bus_width(struct mci *mci, enum mci_bus_width bus_width,
+				 enum mci_timing timing)
 {
 	u32 ext_csd_bits;
 	int err;
 
+	dev_dbg(&mci->dev, "attempting buswidth %u%s\n", 1 << bus_width,
+		mci_timing_is_ddr(timing) ? " (DDR)" : "");
+
 	ext_csd_bits = mci_bus_width_ext_csd_bits(bus_width);
 
+	if (mci_timing_is_ddr(timing))
+		ext_csd_bits |= EXT_CSD_DDR_FLAG;
+
 	err = mci_switch(mci, EXT_CSD_BUS_WIDTH, ext_csd_bits);
 	if (err < 0)
 		return err;
 
+	mci->host->timing = timing;
 	mci_set_bus_width(mci, bus_width);
 
 	err = mmc_compare_ext_csds(mci, bus_width);
@@ -1230,7 +1245,7 @@ static int mci_mmc_select_bus_width(struct mci *mci)
 		 * 4bit transfer mode. On success set the corresponding
 		 * bus width on the host.
 		 */
-		ret = mci_mmc_try_bus_width(mci, bus_widths[idx]);
+		ret = mci_mmc_try_bus_width(mci, bus_widths[idx], host->timing);
 		if (ret > 0)
 			break;
 	}
@@ -1238,6 +1253,24 @@ static int mci_mmc_select_bus_width(struct mci *mci)
 	return ret;
 }
 
+static int mci_mmc_select_hs_ddr(struct mci *mci)
+{
+	struct mci_host *host = mci->host;
+	int ret;
+
+	if (!(mci_caps(mci) & MMC_CAP_MMC_1_8V_DDR))
+		return 0;
+
+	ret = mci_mmc_try_bus_width(mci, host->bus_width, MMC_TIMING_MMC_DDR52);
+	if (ret < 0)
+		return mci_mmc_try_bus_width(mci, host->bus_width, MMC_TIMING_MMC_HS);
+
+	mci->read_bl_len = SECTOR_SIZE;
+	mci->write_bl_len = SECTOR_SIZE;
+
+	return 0;
+}
+
 static int mci_startup_mmc(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
@@ -1255,7 +1288,11 @@ static int mci_startup_mmc(struct mci *mci)
 
 	mci_set_clock(mci, mci->tran_speed);
 
+	/* find out maximum bus width and then try DDR if supported */
 	ret = mci_mmc_select_bus_width(mci);
+	if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
+		ret = mci_mmc_select_hs_ddr(mci);
+
 	if (ret < 0) {
 		dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
 		return ret;
@@ -1687,6 +1724,8 @@ static const char *mci_timing_tostr(unsigned timing)
 		return "MMC HS";
 	case MMC_TIMING_SD_HS:
 		return "SD HS";
+	case MMC_TIMING_MMC_DDR52:
+		return "MMC DDR52";
 	default:
 		return "unknown"; /* shouldn't happen */
 	}
@@ -1694,12 +1733,15 @@ static const char *mci_timing_tostr(unsigned timing)
 
 static void mci_print_caps(unsigned caps)
 {
-	printf("  capabilities: %s%s%s%s%s\n",
+	printf("  capabilities: %s%s%s%s%s%s%s%s\n",
 		caps & MMC_CAP_4_BIT_DATA ? "4bit " : "",
 		caps & MMC_CAP_8_BIT_DATA ? "8bit " : "",
 		caps & MMC_CAP_SD_HIGHSPEED ? "sd-hs " : "",
 		caps & MMC_CAP_MMC_HIGHSPEED ? "mmc-hs " : "",
-		caps & MMC_CAP_MMC_HIGHSPEED_52MHZ ? "mmc-52MHz " : "");
+		caps & MMC_CAP_MMC_HIGHSPEED_52MHZ ? "mmc-52MHz " : "",
+		caps & MMC_CAP_MMC_3_3V_DDR ? "ddr-3.3v " : "",
+		caps & MMC_CAP_MMC_1_8V_DDR ? "ddr-1.8v " : "",
+		caps & MMC_CAP_MMC_1_2V_DDR ? "ddr-1.2v " : "");
 }
 
 /**
diff --git a/include/mci.h b/include/mci.h
index a3f6d619b361..3e93f378e4a3 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -51,6 +51,11 @@
 #define MMC_CAP_SD_HIGHSPEED		(1 << 3)
 #define MMC_CAP_MMC_HIGHSPEED		(1 << 4)
 #define MMC_CAP_MMC_HIGHSPEED_52MHZ	(1 << 5)
+#define MMC_CAP_MMC_3_3V_DDR		(1 << 7)	/* Host supports eMMC DDR 3.3V */
+#define MMC_CAP_MMC_1_8V_DDR		(1 << 8)	/* Host supports eMMC DDR 1.8V */
+#define MMC_CAP_MMC_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
+#define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
+					 MMC_CAP_1_2V_DDR)
 /* Mask of all caps for bus width */
 #define MMC_CAP_BIT_DATA_MASK		(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)
 
@@ -308,6 +313,7 @@
 #define EXT_CSD_BUS_WIDTH_8	2	/* Card is in 8 bit mode */
 #define EXT_CSD_DDR_BUS_WIDTH_4	5	/* Card is in 4 bit DDR mode */
 #define EXT_CSD_DDR_BUS_WIDTH_8	6	/* Card is in 8 bit DDR mode */
+#define EXT_CSD_DDR_FLAG	BIT(2)	/* Flag for DDR mode */
 
 #define R1_ILLEGAL_COMMAND		(1 << 22)
 #define R1_STATUS(x)			(x & 0xFFF9A000)
@@ -410,6 +416,19 @@ enum mci_timing {
 	MMC_TIMING_MMC_HS400	= 8,
 };
 
+static inline bool mci_timing_is_ddr(enum mci_timing timing)
+{
+	switch (timing) {
+	case MMC_TIMING_UHS_DDR50:
+	case MMC_TIMING_MMC_HS200:
+	case MMC_TIMING_MMC_DDR52:
+	case MMC_TIMING_MMC_HS400:
+		return true;
+	default:
+		return false;
+	}
+}
+
 enum mci_bus_width {
 	MMC_BUS_WIDTH_1		= 0,
 	MMC_BUS_WIDTH_4		= 2,
-- 
2.39.2



