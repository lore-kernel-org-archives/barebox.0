Delivery-date: Fri, 08 Mar 2024 12:18:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFO-00Dd96-10
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 12:18:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFK-0000Sf-6w
	for lore@pengutronix.de; Fri, 08 Mar 2024 12:18:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yol91Cnt5mWwRwO1pZQ54fLjjoRPMlluiX8HZoJtYs8=; b=424Df4h+9Zhs4HN6cceZD3crBe
	gjNVAAScRt1ieWgcrfi8gHG45OdOgW2fQKeuYYPG3O/kvPiOJvs7aJ1VF5fg7tbhHnI/XHcZhl176
	/cb+r6iVgd5rYMnUx8rO4oHgLdr5BaqPrk6iyYT26kU19wAroRtFTXGVTIrfYhlVArPLPNoBq7vJe
	2TayDGrDoTK99C40AdeUoowVNxzeoO1pb05DQb+pKeN2ei7ehHzc5ACG8YPxr+1xsVilqJ0xpqHeA
	WZYGPFsMCDT3y4VdorqIl+CVUzw1sgAaV0WQiPl2FOklmwtJeA0EC7JCLSEmAVY8E6b3jXO4foORJ
	bxszPOAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEp-00000008vYz-2MEI;
	Fri, 08 Mar 2024 11:18:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEd-00000008vQF-3O0G
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 11:17:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riYEY-0007Id-Lj
	for barebox@lists.infradead.org; Fri, 08 Mar 2024 12:17:50 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 12:17:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-3-6d50c90485f3@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2423;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=1WDY0qtlK09395ul6nJXBmeyUwxXC/+GebfdGH2bwbE=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJffd57P9L62FtH7zqmJYWCeTVrOd70CYd8tbsVsk3tX
 9lZpu/7O0pZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBE3pQxMszMmuqpxdl8h6mC
 u/ZX7LMfYbm3Th2a4yOtJbpu5t6EGyGMDFNU3GZILXx5/vDrhxl5x+bXnpFQZdicmD7hZcKO5Fx
 nFX4A
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_031756_016523_E10D9D38 
X-CRM114-Status: GOOD (  12.64  )
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
Subject: [PATCH 03/12] mci: arasan: implement 25MHz quirk for zynqmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Arasan on the zynqmp in version 8.9a doesn't meet the timing
requirements at 25MHz. It works at 19MHz instead.

Add the quirk from linux kernel v6.8-rc4.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 59afac7372..cc1bad8b62 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -37,6 +37,12 @@ struct arasan_sdhci_host {
 /* Controller does not have CD wired and will not function normally without */
 #define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
 #define SDHCI_ARASAN_QUIRK_NO_1_8_V		BIT(1)
+/*
+ * Some of the Arasan variations might not have timing requirements
+ * met at 25MHz for Default Speed mode, those controllers work at
+ * 19MHz instead
+ */
+#define SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN	BIT(2)
 };
 
 static inline
@@ -110,13 +116,30 @@ static int arasan_sdhci_init(struct mci_host *mci, struct device *dev)
 	return 0;
 }
 
+static void arasan_sdhci_set_clock(struct mci_host *mci, unsigned int clock)
+{
+	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+
+	if (host->quirks & SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN) {
+		/*
+		 * Some of the Arasan variations might not have timing
+		 * requirements met at 25MHz for Default Speed mode,
+		 * those controllers work at 19MHz instead.
+		 */
+		if (clock == 25000000)
+			clock = (25000000 * 19) / 25;
+	}
+
+	sdhci_set_clock(&host->sdhci, clock, host->sdhci.max_clk);
+}
+
 static void arasan_sdhci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
 	u16 val;
 
 	if (ios->clock)
-		sdhci_set_clock(&host->sdhci, ios->clock, host->sdhci.max_clk);
+		arasan_sdhci_set_clock(mci, ios->clock);
 
 	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
 
@@ -243,6 +266,9 @@ static int arasan_sdhci_probe(struct device *dev)
 	if (of_property_read_bool(np, "no-1-8-v"))
 		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_NO_1_8_V;
 
+	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
+		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN;
+
 	arasan_sdhci->sdhci.base = IOMEM(iores->start);
 	arasan_sdhci->sdhci.mci = mci;
 	mci->send_cmd = arasan_sdhci_send_cmd;

-- 
2.40.1



