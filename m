Delivery-date: Mon, 17 Apr 2023 18:45:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poRyz-006WjC-3U
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 18:45:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poRyy-0002VC-8H
	for lore@pengutronix.de; Mon, 17 Apr 2023 18:45:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=K1qMsQHqvCWTJ7+0XMy/ukREN1p/0o+TxGbDP/1yTY4=; b=WqLeOsHt8ygCZWPr1OkSuqp48e
	IeEK7WAsBoilbiIndabTj/y/PRd+szqg5X8+lKHx9W5rHwZeoaJHHz0TBj6F5aPJOqJ7HVcH8f2+2
	/bMlieVkU6WZSZ81pe2odj1xWLUkh9b2dKxZ4t1XQXhQTCodzkmEatcutFmLWqfxp4DpXTj7S7gA2
	Vvo7QyVE1myacu/R+75tl6nl3FpQ5m/7mp01fmvg+nOWuXBnfFfPSYClsoXYPxBcA5sgvNzd1ZH/A
	PTVxjchGbbqLnFrP7ocHFgynj/MsZ78tHIcnH3L+oSzaCWYCuup/hCJrFxI+2iHGBsMfneIbTH2rb
	ZTQ14A3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poRxc-00H5y7-06;
	Mon, 17 Apr 2023 16:44:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poRxY-00H5x4-1c
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 16:44:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1poRxX-0002GR-9H; Mon, 17 Apr 2023 18:44:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1poRxW-00Bv5j-KZ; Mon, 17 Apr 2023 18:44:06 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1poRxV-004UMi-BF; Mon, 17 Apr 2023 18:44:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Apr 2023 18:42:54 +0200
Message-Id: <20230417164255.1070012-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_094408_532288_94B0DE25 
X-CRM114-Status: GOOD (  20.60  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] mci: add eMMC DDR52 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The maximum card frequency that can be configured by barebox currently
is 50MHz for SD and 52MHz for eMMC. Higher speed modes require runtime
voltage switching or tuning sequences, which are not yet implemented.

Only exception is eMMC's DDR52: This mode was first introduced with
MMC 4.4 and can be used even at 3.3V.

This commit adds DDR52 support to the core. This introduces no functional
change, because host controllers must opt-in by setting the appropriate
host capabilities.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 54 +++++++++++++++++++++++++++++++++++-------
 include/mci.h          | 19 +++++++++++++++
 2 files changed, 64 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index f647cae8203b..86f468edfea6 100644
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
@@ -1170,15 +1177,20 @@ static int mci_startup_sd(struct mci *mci)
 static int mci_startup_mmc(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
+	enum mci_timing timing_orig;
 	int err;
 	int idx = 0;
 	static unsigned ext_csd_bits[] = {
 		EXT_CSD_BUS_WIDTH_4,
 		EXT_CSD_BUS_WIDTH_8,
+		EXT_CSD_DDR_BUS_WIDTH_4,
+		EXT_CSD_DDR_BUS_WIDTH_8,
 	};
 	static unsigned bus_widths[] = {
 		MMC_BUS_WIDTH_4,
 		MMC_BUS_WIDTH_8,
+		MMC_BUS_WIDTH_4,
+		MMC_BUS_WIDTH_8,
 	};
 
 	/* if possible, speed up the transfer */
@@ -1191,6 +1203,8 @@ static int mci_startup_mmc(struct mci *mci)
 		host->timing = MMC_TIMING_MMC_HS;
 	}
 
+	timing_orig = host->timing;
+
 	mci_set_clock(mci, mci->tran_speed);
 
 	if (!(host->host_caps & (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)))
@@ -1205,6 +1219,9 @@ static int mci_startup_mmc(struct mci *mci)
 	if (host->host_caps & MMC_CAP_8_BIT_DATA)
 		idx = 1;
 
+	if (mci_caps(mci) & MMC_CAP_MMC_1_8V_DDR)
+		idx += 2;
+
 	for (; idx >= 0; idx--) {
 
 		/*
@@ -1221,11 +1238,25 @@ static int mci_startup_mmc(struct mci *mci)
 			continue;
 		}
 
+		if (ext_csd_bits[idx] & EXT_CSD_DDR_FLAG)
+			host->timing = MMC_TIMING_MMC_DDR52;
+		else
+			host->timing = timing_orig;
+
+		dev_dbg(&mci->dev, "attempting buswidth %u%s\n", bus_widths[idx],
+			mci_timing_is_ddr(host->timing) ? " (DDR)" : "");
+
 		mci_set_bus_width(mci, bus_widths[idx]);
 
 		err = mmc_compare_ext_csds(mci, bus_widths[idx]);
-		if (!err)
-			break;
+		if (!err) {
+			if (host->timing == MMC_TIMING_MMC_DDR52) {
+				mci->read_bl_len = SECTOR_SIZE;
+				mci->write_bl_len = SECTOR_SIZE;
+			}
+
+			return 0;
+		}
 	}
 
 	return err;
@@ -1654,6 +1685,8 @@ static const char *mci_timing_tostr(unsigned timing)
 		return "MMC HS";
 	case MMC_TIMING_SD_HS:
 		return "SD HS";
+	case MMC_TIMING_MMC_DDR52:
+		return "MMC DDR52";
 	default:
 		return "unknown"; /* shouldn't happen */
 	}
@@ -1661,12 +1694,15 @@ static const char *mci_timing_tostr(unsigned timing)
 
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
index d356f071f7f2..88712c35492e 100644
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
 struct mci_ios {
 	unsigned int	clock;			/* clock rate */
 
-- 
2.39.2



