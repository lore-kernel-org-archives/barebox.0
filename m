Delivery-date: Wed, 07 May 2025 11:27:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3q-0035Xc-1k
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3o-0006Lq-Hk
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wEyyKbNHGkHl5ELTwa5im+Sla0zpa+uQ5PXEzve6MiA=; b=lcxrvYx+H60ZExXoE4YS3LgK0Z
	vovuKh87x89kVKAyAvEPrKStCKBpxlAzuc8cNQp+ZCJw3av7hOcjOzDl6O3JIuDSFNM3l9tNSzoSP
	9Y4WCyUB6GZ9/DFgaTCc4TkXWw8CT/q6SGzghXJkhTGikwPr8gkCZLhS9L+dEW5CvbRkKkAkgCfq1
	Sw/CW1JUyPajGxn6u5mGGEEPPA2il6UgGh95U6ld9LvsOMBVgcAUWwQAmWbkM2ci+4qsdy6laTr9I
	t0391i9GDRRLfsbiXx1YJSqi/+cg/sILdIlQEu4Ikr4jktaWs4ujahaTGAd2jmchn+bEd/KtXZwkq
	xZYEC1sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3F-0000000Ews5-1HBU;
	Wed, 07 May 2025 09:26:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFB-0000000Elbt-1kXk
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-0003zm-2Z; Wed, 07 May 2025 10:35:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001Wuw-2o;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-1j;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:59 +0200
Message-Id: <20250507082209.3289972-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_013509_667348_9839001D 
X-CRM114-Status: GOOD (  22.66  )
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
Subject: [PATCH v2 20/30] mci: imx-esdhc: add support for setting drive strength
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With increasing clock rates, drive strength may need to be reduced. Add
support for that to the i.MX eSDHC driver and to the core.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |  2 ++
 drivers/mci/mci-core.c  | 40 ++++++++++++++++++++++++++++++++++++++--
 drivers/mci/sdhci.c     | 29 +++++++++++++++++++++++++++++
 drivers/mci/sdhci.h     |  6 ++++++
 include/mci.h           | 10 ++++++++++
 5 files changed, 85 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 5416d0648fa8..3871f85ea6d6 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -207,6 +207,8 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	/* Set the clock speed */
 	set_sysctl(mci, ios->clock, mci_timing_is_ddr(ios->timing));
 
+	sdhci_set_drv_type(&host->sdhci, ios->drv_type);
+
 	/* Set the bus width */
 	esdhc_clrbits32(host, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
 			PROCTL_DTW_4 | PROCTL_DTW_8);
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index f123fce59cb1..80b3496a280a 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1626,6 +1626,28 @@ int mci_send_abort_tuning(struct mci *mci, u32 opcode)
 }
 EXPORT_SYMBOL_GPL(mci_send_abort_tuning);
 
+static void mmc_select_driver_type(struct mci *mci)
+{
+	int card_drv_type, drive_strength;
+	int fixed_drv_type = mci->host->fixed_drv_type;
+
+	card_drv_type = mci->ext_csd[EXT_CSD_DRIVER_STRENGTH] |
+			mmc_driver_type_mask(0);
+
+	if (mci->host->fixed_drv_type_valid)
+		drive_strength = card_drv_type & mmc_driver_type_mask(fixed_drv_type)
+				 ? fixed_drv_type : 0;
+	else
+		drive_strength = 0;
+
+	mci->host->drive_strength = drive_strength;
+
+	/* Linux only sets the drive strength immediately if the driver
+	 * implements select_drive_strength, which none of our drivers
+	 * do yet
+	 */
+}
+
 static void mmc_select_max_dtr(struct mci *mci)
 {
 	u8 card_type = mci->ext_csd[EXT_CSD_DEVICE_TYPE];
@@ -1698,6 +1720,8 @@ static int mmc_select_hs200(struct mci *mci)
 	int err = -EINVAL;
 	u8 val;
 
+	mmc_select_driver_type(mci);
+
 	/*
 	 * Set the bus width(4 or 8) with host's support and
 	 * switch to HS200 mode if bus width is set successfully.
@@ -1705,8 +1729,7 @@ static int mmc_select_hs200(struct mci *mci)
 	/* find out maximum bus width and then try DDR if supported */
 	err = mci_mmc_select_bus_width(mci);
 	if (err > 0) {
-		/* TODO  actually set drive strength instead of 0. Currently unsupported. */
-		val = EXT_CSD_TIMING_HS200 | 0 << EXT_CSD_DRV_STR_SHIFT;
+		val = EXT_CSD_TIMING_HS200 | (mci->host->drive_strength << EXT_CSD_DRV_STR_SHIFT);
 		err = mci_switch(mci, EXT_CSD_HS_TIMING, val);
 		if (err == -EIO)
 			return -EBADMSG;
@@ -3095,6 +3118,8 @@ void mci_of_parse_node(struct mci_host *host,
 	if (of_property_read_bool(np, "no-mmc"))
 		host->caps2 |= MMC_CAP2_NO_MMC;
 	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
+		u32 drv_type;
+
 		if (of_property_read_bool(np, "mmc-hs200-1_8v"))
 			host->caps2 |= MMC_CAP2_HS200_1_8V_SDR;
 		if (of_property_read_bool(np, "mmc-hs200-1_2v"))
@@ -3119,6 +3144,17 @@ void mci_of_parse_node(struct mci_host *host,
 			 */
 			host->caps2 &= ~(MMC_CAP2_HSX00_1_8V | MMC_CAP2_HS400_ES);
 		}
+
+		/* Must be after "non-removable" check */
+		if (of_property_read_u32(np, "fixed-emmc-driver-type", &drv_type) == 0) {
+			if (host->non_removable) {
+				host->fixed_drv_type = drv_type;
+				host->fixed_drv_type_valid = true;
+			 } else {
+				dev_err(host->hw_dev,
+					"can't use fixed driver type, media is removable\n");
+			 }
+		}
 	}
 }
 
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 55709e831a28..b86b3f3d8d1c 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -887,6 +887,35 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 	sdhci_enable_clk(host, clk);
 }
 
+void sdhci_set_drv_type(struct sdhci *host, unsigned drv_type)
+{
+	u16 ctrl_2;
+
+	if (host->preset_enabled)
+		return;
+
+	/*
+	 * We only need to set Driver Strength if the
+	 * preset value enable is not set.
+	 */
+	ctrl_2 = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+	ctrl_2 &= ~SDHCI_CTRL_DRV_TYPE_MASK;
+	if (drv_type == MMC_SET_DRIVER_TYPE_A)
+		ctrl_2 |= SDHCI_CTRL_DRV_TYPE_A;
+	else if (drv_type == MMC_SET_DRIVER_TYPE_B)
+		ctrl_2 |= SDHCI_CTRL_DRV_TYPE_B;
+	else if (drv_type == MMC_SET_DRIVER_TYPE_C)
+		ctrl_2 |= SDHCI_CTRL_DRV_TYPE_C;
+	else if (drv_type == MMC_SET_DRIVER_TYPE_D)
+		ctrl_2 |= SDHCI_CTRL_DRV_TYPE_D;
+	else {
+		dev_warn(sdhci_dev(host), "invalid driver type, default to driver type B\n");
+		ctrl_2 |= SDHCI_CTRL_DRV_TYPE_B;
+	}
+
+	sdhci_write16(host, ctrl_2, SDHCI_HOST_CONTROL2);
+}
+
 static void sdhci_do_enable_v4_mode(struct sdhci *host)
 {
 	u16 ctrl2;
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 12ab8d148144..31edebab1262 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -133,6 +133,11 @@
 #define   SDHCI_CTRL_UHS_SDR104			0x3
 #define   SDHCI_CTRL_UHS_DDR50			0x4
 #define   SDHCI_CTRL_HS400			0x5 /* Non-standard */
+#define  SDHCI_CTRL_DRV_TYPE_MASK		GENMASK(5, 4)
+#define   SDHCI_CTRL_DRV_TYPE_B			0x0000
+#define   SDHCI_CTRL_DRV_TYPE_A			0x0010
+#define   SDHCI_CTRL_DRV_TYPE_C			0x0020
+#define   SDHCI_CTRL_DRV_TYPE_D			0x0030
 #define  SDHCI_CTRL_EXEC_TUNING			BIT(6)
 #define  SDHCI_CTRL_TUNED_CLK			BIT(7)
 #define  SDHCI_CTRL_64BIT_ADDR			BIT(13)
@@ -337,6 +342,7 @@ u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,
 		   unsigned int *actual_clock, unsigned int input_clock);
 void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_clock);
 void sdhci_enable_clk(struct sdhci *host, u16 clk);
+void sdhci_set_drv_type(struct sdhci *host, unsigned drv_type);
 void sdhci_enable_v4_mode(struct sdhci *host);
 int sdhci_setup_host(struct sdhci *host);
 void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
diff --git a/include/mci.h b/include/mci.h
index af56f453704e..29aaecb46305 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -208,6 +208,8 @@
 #define SD_ERASE_ARG			0x00000000
 #define SD_DISCARD_ARG			0x00000001
 
+#define mmc_driver_type_mask(n)		(1 << (n))
+
 /*
  * EXT_CSD fields
  */
@@ -560,6 +562,7 @@ struct mci_ios {
 	unsigned int		clock;			/* clock rate */
 	enum mci_bus_width	bus_width;		/* data bus width */
 	enum mci_timing		timing;			/* timing specification used */
+	unsigned char		drv_type;		/* driver type (A, B, C, D) */
 };
 
 struct mci;
@@ -632,6 +635,13 @@ struct mci_host {
 	int broken_cd;		/**< card detect is broken */
 	bool non_removable;	/**< device is non removable */
 	bool disable_wp;	/**< ignore write-protect detection logic */
+	bool fixed_drv_type_valid;
+	unsigned char fixed_drv_type;	/**< fixed driver type for non-removable media */
+	unsigned char	drive_strength;	/**< driver type (A, B, C, D) */
+#define MMC_SET_DRIVER_TYPE_B	0
+#define MMC_SET_DRIVER_TYPE_A	1
+#define MMC_SET_DRIVER_TYPE_C	2
+#define MMC_SET_DRIVER_TYPE_D	3
 	struct regulator *supply;
 	struct mci_ops ops;
 };
-- 
2.39.5



