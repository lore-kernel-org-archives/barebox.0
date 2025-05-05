Delivery-date: Mon, 05 May 2025 14:08:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucY-002S56-0G
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucW-0007Ec-Ot
	for lore@pengutronix.de; Mon, 05 May 2025 14:08:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LlZVNVQSLpXRtkBK1ZP19+05ERjrQJMbf9dim5ifGYs=; b=VB8iQg4S1a0gxoxYRlZkI5Rh8g
	EfgfUm1k2SWyuR3j5QUAsZJ2e041ckKX869kN6tGZeNw2AQFaDtje44b14Kq84OCnyZQfvnwUvcFu
	wT/80jDoeOq2LlOvowNP0HA3xUp0GoWkr2h3db46jBIsMImkJgzhnJ+9tojdkz4me/xUVrCJ9BC1F
	drEpimCXyvqMA2OIS/oQBcAmEox8LjE5er1nu6euDwhtTgKQHXdo2UmHiX5FVIJUYJGiNzwFYkQ3h
	+Ei3hFCcmBlIHPHccXHf7bVsCv0nItnbatw4ej/522yKl65NkJXTdZZixsDUjnnsEkDmOY9FR3mXe
	GaJFn+OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBubv-00000007Fl4-1pl3;
	Mon, 05 May 2025 12:07:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuaj-00000007FaE-00JC
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:06:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-0006RW-Dw; Mon, 05 May 2025 14:06:34 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-001DxG-0l;
	Mon, 05 May 2025 14:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-00Fb9X-1x;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:06 +0200
Message-Id: <20250505120633.3717186-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_050637_044552_8AC2ED2B 
X-CRM114-Status: GOOD (  11.91  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/30] mci: use struct mci_host::ios inside mci_set_ios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have a struct mci_ios inside struct mci_host, let's make use
of it directly in mci_set_ios instead of copying out the struct members
one by one.

While at it, let's also add a debug print describing the configuration
being applied.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 48 +++++++++++++++++++++---------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 498ea71d96c6..54d3fab4f10c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1024,6 +1024,24 @@ static int sd_change_freq(struct mci *mci)
 	return 0;
 }
 
+static const char *mci_timing_tostr(unsigned timing)
+{
+	switch (timing) {
+	case MMC_TIMING_LEGACY:
+		return "legacy";
+	case MMC_TIMING_MMC_HS:
+		return "MMC HS";
+	case MMC_TIMING_SD_HS:
+		return "SD HS";
+	case MMC_TIMING_MMC_DDR52:
+		return "MMC DDR52";
+	case MMC_TIMING_MMC_HS200:
+		return "HS200";
+	default:
+		return "unknown"; /* shouldn't happen */
+	}
+}
+
 /**
  * Setup host's interface bus width and transfer frequency
  * @param mci MCI instance
@@ -1031,13 +1049,13 @@ static int sd_change_freq(struct mci *mci)
 static void mci_set_ios(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_ios ios = {
-		.bus_width = host->ios.bus_width,
-		.clock = host->ios.clock,
-		.timing = host->ios.timing,
-	};
+	struct mci_ios *ios = &host->ios;
 
-	host->ops.set_ios(host, &ios);
+	dev_dbg(&mci->dev, "clock %u.%uMHz width %u timing %s\n",
+		ios->clock / 1000000, ios->clock % 1000000,
+		1 << ios->bus_width, mci_timing_tostr(ios->timing));
+
+	host->ops.set_ios(host, ios);
 
 	host->actual_clock = host->ios.clock;
 }
@@ -2313,24 +2331,6 @@ static int mci_sd_read(struct block_device *blk, void *buffer, sector_t block,
 
 /* ------------------ attach to the device API --------------------------- */
 
-static const char *mci_timing_tostr(unsigned timing)
-{
-	switch (timing) {
-	case MMC_TIMING_LEGACY:
-		return "legacy";
-	case MMC_TIMING_MMC_HS:
-		return "MMC HS";
-	case MMC_TIMING_SD_HS:
-		return "SD HS";
-	case MMC_TIMING_MMC_DDR52:
-		return "MMC DDR52";
-	case MMC_TIMING_MMC_HS200:
-		return "HS200";
-	default:
-		return "unknown"; /* shouldn't happen */
-	}
-}
-
 static void mci_print_caps(unsigned caps)
 {
 	printf("  capabilities: %s%s%s%s%s%s%s%s\n",
-- 
2.39.5



