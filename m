Delivery-date: Mon, 02 Jun 2025 15:29:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E7-002yVW-2v
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 15:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E6-0007g7-R7
	for lore@pengutronix.de; Mon, 02 Jun 2025 15:29:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KcWf1QPbaHMgUMezMzgH8iICd6rywkZiE5ghp4uU+QM=; b=Wrw7ZRxpCxnUayKvs0X0/ZFMWf
	eqpQxCkwgmZsVWvdLZkS7XtJr0g34oz5GO4lxBwF1rVwzqvC4UQKkXlEXs10dflIdFydBjX+egI7Y
	zNs6FCdVqVEb8ov4akohhUk9FkPa9LpyDa+WZXf1zrit33Kbg+Pyuly/rtDy8FbSnLoDxoDGPykiP
	XbjG4Rly2oIJc776zVCNNWHZ2XByxzimrPfMAOHZfnZvgs/siB+UHZTb4DScxTgWFZUoUNzYTe2XH
	240IEEgkC3ezzsWYm8x1K0edkp7LFKuaGsIHKOESTiZCWdwJeAA30Gj8dIjLalO4RJCUttp4jaY03
	0bEd6fXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5Dd-00000007Sv2-09ut;
	Mon, 02 Jun 2025 13:28:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5DS-00000007SrF-0sg6
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 13:28:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DR-0007AF-18; Mon, 02 Jun 2025 15:28:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-001Slr-2U;
	Mon, 02 Jun 2025 15:28:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-009BwG-2B;
	Mon, 02 Jun 2025 15:28:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Jun 2025 15:28:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250602-createnv-v1-5-c3239ff875d5@pengutronix.de>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
In-Reply-To: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748870916; l=3975;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=SDGSXjHdIwMkio5lqGaI4GTPv4V/Q39lDnUd1/e1g2c=;
 b=diFiVFhe6SxAzpY1W6jQONCJUv8YrAlsuXDNVE0x1PeLPccMcpHqGbZ04/eMU/kGQCOZeyK2e
 M59TjG43OqUCAy1xzv6PZYSTXVpsCFO2hDAlPiOZitXngbzkukLTLm6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_062838_289154_48AA64B0 
X-CRM114-Status: GOOD (  19.25  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] mci: add option to detect non-removable cards during
 startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We can optionally detect all MMC/SD cards during startup which might
cost some boot time, so this is best disabled. This adds another option
to detect only cards that are marked non-removable in the device tree
during startup. The rationale is that we will likely boot from that
device anyway, so detecting it during startup does not add to the boot
time.

We are aiming to find a good place for the barebox environment without
having to explicitly add it to the device tree. Putting the environment
into a regular partition is a good start, but the device that has the
environment needs to be available when we are searching for it. Enabling
this new option is one way to it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/Kconfig    | 21 +++++++++++++++++++--
 drivers/mci/mci-core.c |  6 +++++-
 include/mci.h          |  1 +
 3 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 44fd4716aade0882264d389cc08547c3f14986c9..417309cdf502cdf1c2b7e584c886dd94661bb0fb 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -19,14 +19,31 @@ config MCI_TUNING
 	  higher clock speeds than 52 MHz SDR. MMC only; SD-Card max
 	  frequency is 50MHz SDR at present.
 
+choice
+	prompt "MMC startup behaviour"
+
 config MCI_STARTUP
-	bool "Force probe on system start"
+	bool "detect cards on system start"
 	help
-	  Say 'y' here if the MCI framework should always probe for all attached
+	  Choose this if the MCI framework should always probe for all attached
 	  MCI cards on system start up. This may required for some legacy boards.
 	  When this is 'n', probing happens on demand either with "mci*.probe=1"
 	  or with driver/board code calling device_detect.
 
+config MCI_STARTUP_NONREMOVABLE
+	bool "detect non removable cards on system start"
+	help
+	  Choose this if the MCI framework should detect non removable cards (i.e.
+	  devices which have the non-removable device tree property).
+
+config MCI_STARTUP_NONE
+	bool "detect not detect cards during system start"
+	help
+	  Choose this if the MCI framework should never detect cards during system
+	  start
+
+endchoice
+
 config MCI_INFO
 	bool "MCI Info"
 	depends on CMD_DEVINFO
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 23cde58c0c5b1fae4e3692c9ac0989362376d06d..3984852a1d8d21226947aa59bc73a68e79f11d8c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -3101,7 +3101,9 @@ int mci_register(struct mci_host *host)
 		devinfo_add(&mci->dev, mci_info);
 
 	/* if enabled, probe the attached card immediately */
-	if (IS_ENABLED(CONFIG_MCI_STARTUP))
+	if (IS_ENABLED(CONFIG_MCI_STARTUP) ||
+	   (IS_ENABLED(CONFIG_MCI_STARTUP_NONREMOVABLE) &&
+	    (host->host_caps & MMC_CAP_NONREMOVABLE)))
 		mci_card_probe(mci);
 
 	if (!(host->caps2 & MMC_CAP2_NO_SD) && dev_of_node(host->hw_dev)) {
@@ -3195,6 +3197,8 @@ void mci_of_parse_node(struct mci_host *host,
 		host->caps2 |= MMC_CAP2_NO_SD;
 	if (of_property_read_bool(np, "no-mmc"))
 		host->caps2 |= MMC_CAP2_NO_MMC;
+	if (of_property_read_bool(np, "non-removable"))
+                host->host_caps |= MMC_CAP_NONREMOVABLE;
 	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
 		u32 drv_type;
 
diff --git a/include/mci.h b/include/mci.h
index 207fb9779a14495bdbed782c6d18245d95077055..05114fd72e6cc08025e86fe99021ff041e02101c 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -58,6 +58,7 @@
 #define MMC_CAP_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
 #define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
 					 MMC_CAP_1_2V_DDR)
+#define MMC_CAP_NONREMOVABLE	(1 << 8)	/* Nonremovable e.g. eMMC */
 #define MMC_CAP_UHS_SDR12	(1 << 16)	/* Host supports UHS SDR12 mode */
 #define MMC_CAP_UHS_SDR25	(1 << 17)	/* Host supports UHS SDR25 mode */
 #define MMC_CAP_UHS_SDR50	(1 << 18)	/* Host supports UHS SDR50 mode */

-- 
2.39.5



