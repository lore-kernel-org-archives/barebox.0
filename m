Delivery-date: Wed, 07 May 2025 11:19:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw3-0035Ll-1h
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:19:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw2-00040n-4o
	for lore@pengutronix.de; Wed, 07 May 2025 11:19:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0viEXcASYXPFWObE1HG/AUlSGK4pU0BlIX4Z/F8Zsjg=; b=nPkR+4pukGYwxAW5guJyDZ5Vac
	uFJp9/lJ83nu1BIpMPFaZYdkKPf58esu8bo+cXbwTEgn4vMeKLw/Ho1O3biMp1MQ1d9G+pPjJKdya
	xDM8YXBfX/d029YdOYKpQtReQhgcc+jUu0XE0iAyZXHMkXuG7sQ9ULlA1C1c3cGq0q1Zx/hV8jsaU
	LMEcGipOR+vCJTy28xkQjbTMGsxhNTl2J1ffvwRLwK85bfrlcEza0Uk3NTb82njDeeugpMtOgj5h7
	D1WoDRCxDya8ZmOkuVLroMNVsc9602LMyV/MxLnlUJEUNAa5ahQfh5/Lxiv6zwNZUap1R6GZpjtVn
	I/IjlYWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCavW-0000000EuB9-0AxL;
	Wed, 07 May 2025 09:18:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCa2e-0000000EibR-3qFX
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:22:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-0001dx-Jp; Wed, 07 May 2025 10:22:11 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-001Wo0-1I;
	Wed, 07 May 2025 10:22:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-00AQeI-2W;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:42 +0200
Message-Id: <20250507082209.3289972-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_012212_964872_AAEFE82C 
X-CRM114-Status: GOOD (  11.86  )
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
Subject: [PATCH v2 03/30] mci: use struct mci_host::ios inside mci_set_ios
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
index 262535d63006..7b33b4c8df88 100644
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



