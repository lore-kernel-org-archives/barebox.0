Delivery-date: Mon, 07 Jun 2021 12:54:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCuC-0006Cm-EE
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:54:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCu7-0002sy-BP
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:54:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+ICsbib6XUpaiosrc52NT6qmaESyUYMIs+C8xVIuCE=; b=XzgD7bzJYDFbZM
	stai7fhKVR8moZW3bCIc1WHmBedc6Z3jLfIymMODled6Wj2BxkOXu6SK3JeVCAV+G3qeBvb8dar13
	ptBlnHtVrp3x+t5HITTyl22xg71GUWDyVenXLW7Rw/N8oHzVAsO0+4iAlP0g0Rb+ABQRw94DvjdJ7
	4vrh0Wkat1vocmXblzvoYlkQHzLsFHQFgFYLe+kUxyEVEjU0rXkQtMXKBaFScN5bCMlYQVR7w2K10
	NEzsX/5NcieAtQWX0jAdFMkeYdV2PGfkaxb3W2MHUzoNPYzbtbgr1Bh+NLW7lISb4/U58duZbePXv
	4Hg6Ak9COG/qv78T/yqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCsC-00350i-Av; Mon, 07 Jun 2021 10:52:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCk4-00326Q-0q
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:26 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dd-Di; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCjt-0008Jb-TO; Mon, 07 Jun 2021 12:44:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:00 +0200
Message-Id: <20210607104411.23071-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034424_284269_5F122E4A 
X-CRM114-Status: GOOD (  13.02  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/12] mci: sdhci: straighten capabilities register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far we read the host capabilites register as two 16bit registers
SDHCI_CAPABILITIES (0x40) and SDHCI_CAPABILITIES_1 (0x42). Read them
as one 32bit register like Linux does. While at it switch to the
register defines Linux uses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c       | 12 ++++++------
 drivers/mci/atmel-sdhci-common.c |  8 ++++----
 drivers/mci/dove-sdhci.c         | 15 +++++++--------
 drivers/mci/imx-esdhc.c          |  8 ++++----
 drivers/mci/imx-esdhc.h          |  7 -------
 drivers/mci/sdhci.h              | 23 +++++++++++++++++------
 6 files changed, 38 insertions(+), 35 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 520bf30ff9..53492e10d4 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -316,17 +316,17 @@ error:
 
 static void arasan_sdhci_set_mci_caps(struct arasan_sdhci_host *host)
 {
-	u16 caps = sdhci_read16(&host->sdhci, SDHCI_CAPABILITIES_1);
+	u32 caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
 
-	if ((caps & SDHCI_HOSTCAP_VOLTAGE_180) &&
+	if ((caps & SDHCI_CAN_VDD_180) &&
 	    !(host->quirks & SDHCI_ARASAN_QUIRK_NO_1_8_V))
 		host->mci.voltages |= MMC_VDD_165_195;
-	if (caps & SDHCI_HOSTCAP_VOLTAGE_300)
+	if (caps & SDHCI_CAN_VDD_300)
 		host->mci.voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
-	if (caps & SDHCI_HOSTCAP_VOLTAGE_330)
+	if (caps & SDHCI_CAN_VDD_330)
 		host->mci.voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
 
-	if (caps & SDHCI_HOSTCAP_HIGHSPEED)
+	if (caps & SDHCI_CAN_DO_HISPD)
 		host->mci.host_caps |= (MMC_CAP_MMC_HIGHSPEED_52MHZ |
 					MMC_CAP_MMC_HIGHSPEED |
 					MMC_CAP_SD_HIGHSPEED);
@@ -335,7 +335,7 @@ static void arasan_sdhci_set_mci_caps(struct arasan_sdhci_host *host)
 	mci_of_parse(&host->mci);
 
 	/* limit bus widths to controller capabilities */
-	if (!(caps & SDHCI_HOSTCAP_8BIT))
+	if (!(caps & SDHCI_CAN_DO_8BIT))
 		host->mci.host_caps &= ~MMC_CAP_8_BIT_DATA;
 }
 
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index a83610c3d0..92013feb95 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -42,13 +42,13 @@ void at91_sdhci_host_capability(struct at91_sdhci *host,
 {
 	u16 caps;
 
-	caps = sdhci_read16(&host->sdhci, SDHCI_CAPABILITIES_1);
+	caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
 
-	if (caps & SDHCI_HOSTCAP_VOLTAGE_330)
+	if (caps & SDHCI_CAN_VDD_330)
 		*voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
-	if (caps & SDHCI_HOSTCAP_VOLTAGE_300)
+	if (caps & SDHCI_CAN_VDD_300)
 		*voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
-	if (caps & SDHCI_HOSTCAP_VOLTAGE_180)
+	if (caps & SDHCI_CAN_VDD_180)
 		*voltages |= MMC_VDD_165_195;
 }
 
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index c734a6e0dd..945c4bb4b1 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -290,19 +290,18 @@ static int dove_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
 
 static void dove_sdhci_set_mci_caps(struct dove_sdhci *host)
 {
-	u16 caps[2];
+	u32 caps;
 
-	caps[0] = sdhci_read16(&host->sdhci, SDHCI_CAPABILITIES);
-	caps[1] = sdhci_read16(&host->sdhci, SDHCI_CAPABILITIES_1);
+	caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
 
-	if (caps[1] & SDHCI_HOSTCAP_VOLTAGE_180)
+	if (caps & SDHCI_CAN_VDD_180)
 		host->mci.voltages |= MMC_VDD_165_195;
-	if (caps[1] & SDHCI_HOSTCAP_VOLTAGE_300)
+	if (caps & SDHCI_CAN_VDD_300)
 		host->mci.voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
-	if (caps[1] & SDHCI_HOSTCAP_VOLTAGE_330)
+	if (caps & SDHCI_CAN_VDD_330)
 		host->mci.voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
 
-	if (caps[1] & SDHCI_HOSTCAP_HIGHSPEED)
+	if (caps & SDHCI_CAN_DO_HISPD)
 		host->mci.host_caps |= (MMC_CAP_MMC_HIGHSPEED_52MHZ |
 					MMC_CAP_MMC_HIGHSPEED |
 					MMC_CAP_SD_HIGHSPEED);
@@ -311,7 +310,7 @@ static void dove_sdhci_set_mci_caps(struct dove_sdhci *host)
 	mci_of_parse(&host->mci);
 
 	/* limit bus widths to controller capabilities */
-	if ((caps[1] & SDHCI_HOSTCAP_8BIT) == 0)
+	if ((caps & SDHCI_CAN_DO_8BIT) == 0)
 		host->mci.host_caps &= ~MMC_CAP_8_BIT_DATA;
 }
 
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 93f3c57d4e..fa858a9853 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -271,11 +271,11 @@ static int fsl_esdhc_probe(struct device_d *dev)
 
 	caps = sdhci_read32(&host->sdhci, SDHCI_CAPABILITIES);
 
-	if (caps & ESDHC_HOSTCAPBLT_VS18)
+	if (caps & SDHCI_CAN_VDD_180)
 		mci->voltages |= MMC_VDD_165_195;
-	if (caps & ESDHC_HOSTCAPBLT_VS30)
+	if (caps & SDHCI_CAN_VDD_300)
 		mci->voltages |= MMC_VDD_29_30 | MMC_VDD_30_31;
-	if (caps & ESDHC_HOSTCAPBLT_VS33)
+	if (caps & SDHCI_CAN_VDD_330)
 		mci->voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
 
 	if (pdata) {
@@ -284,7 +284,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 			mci->devname = pdata->devname;
 	}
 
-	if (caps & ESDHC_HOSTCAPBLT_HSS)
+	if (caps & SDHCI_CAN_DO_HISPD)
 		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_SD_HIGHSPEED;
 
 	host->mci.send_cmd = esdhc_send_cmd;
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 8abe1207d7..0de1e72e7b 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -37,13 +37,6 @@
 #define BLKATTR_SIZE(x)	(x & 0x1fff)
 #define MAX_BLK_CNT	0x7fff	/* so malloc will have enough room with 32M */
 
-#define ESDHC_HOSTCAPBLT_VS18	0x04000000
-#define ESDHC_HOSTCAPBLT_VS30	0x02000000
-#define ESDHC_HOSTCAPBLT_VS33	0x01000000
-#define ESDHC_HOSTCAPBLT_SRS	0x00800000
-#define ESDHC_HOSTCAPBLT_DMAS	0x00400000
-#define ESDHC_HOSTCAPBLT_HSS	0x00200000
-
 #define PIO_TIMEOUT		100000
 
 #define IMX_SDHCI_WML		0x44
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 7b3f64486f..9bd9749dd6 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -105,12 +105,23 @@
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
 #define SDHCI_CAPABILITIES					0x40
-#define SDHCI_CAPABILITIES_1					0x42
-#define  SDHCI_HOSTCAP_VOLTAGE_180		BIT(10)
-#define  SDHCI_HOSTCAP_VOLTAGE_300		BIT(9)
-#define  SDHCI_HOSTCAP_VOLTAGE_330		BIT(8)
-#define  SDHCI_HOSTCAP_HIGHSPEED		BIT(5)
-#define  SDHCI_HOSTCAP_8BIT			BIT(2)
+#define  SDHCI_TIMEOUT_CLK_MASK			GENMASK(5, 0)
+#define  SDHCI_TIMEOUT_CLK_UNIT			0x00000080
+#define  SDHCI_CLOCK_BASE_MASK			GENMASK(13, 8)
+#define  SDHCI_CLOCK_V3_BASE_MASK		GENMASK(15, 8)
+#define  SDHCI_MAX_BLOCK_MASK			0x00030000
+#define  SDHCI_MAX_BLOCK_SHIFT			16
+#define  SDHCI_CAN_DO_8BIT			0x00040000
+#define  SDHCI_CAN_DO_ADMA2			0x00080000
+#define  SDHCI_CAN_DO_ADMA1			0x00100000
+#define  SDHCI_CAN_DO_HISPD			0x00200000
+#define  SDHCI_CAN_DO_SDMA			0x00400000
+#define  SDHCI_CAN_DO_SUSPEND			0x00800000
+#define  SDHCI_CAN_VDD_330			0x01000000
+#define  SDHCI_CAN_VDD_300			0x02000000
+#define  SDHCI_CAN_VDD_180			0x04000000
+#define  SDHCI_CAN_64BIT_V4			0x08000000
+#define  SDHCI_CAN_64BIT			0x10000000
 
 #define  SDHCI_CLOCK_MUL_MASK	0x00FF0000
 #define  SDHCI_CLOCK_MUL_SHIFT	16
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

