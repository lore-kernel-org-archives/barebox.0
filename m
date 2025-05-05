Delivery-date: Mon, 05 May 2025 14:39:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv65-002STv-1T
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv5y-0006Xf-8F
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iLnqfCsyF1DGWwU8wgFy9sMLsduIXkXdsCFx1b/Am+k=; b=Adrg7bjNP+qd1kXKrGX1dh3dye
	XTQpVdYS8GhKW5cAAPrEpI+8vobIrAbIbLTYDk4E6v4QbmhbTdMtk28frjdJ0Bu8mVk9fw3LgpQBp
	OPBBr+x+e7XKCwBrC4Pu4UnNbXE9qREU1H8dqQy1ptf3QLokm13rlIhoUYbzetfyvUaKRrSWdVk4G
	c73ku3WME5oxF1jTntZggA3GuHlf4hGoEvaR1ITNXzRP9LAtwhOuTXmLo4xFrwkW6vSS21gBglAuX
	llrsq7w2llknFpToke3jRCdojS4hLUxD5UYMCaJlaXBpzqhAmmpZNsZuWt6V3w1ojslDkYjDW0LIo
	kefuX/xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5H-00000007LUI-0n9O;
	Mon, 05 May 2025 12:38:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv29-00000007KaR-0UjI
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:34:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv27-0004pI-S4; Mon, 05 May 2025 14:34:55 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv27-001EPz-2B;
	Mon, 05 May 2025 14:34:55 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-1r;
	Mon, 05 May 2025 14:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:27 +0200
Message-Id: <20250505120633.3717186-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053457_159580_694D4D42 
X-CRM114-Status: GOOD (  12.51  )
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
X-Spam-Status: No, score=-2.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 24/30] mci: imx-esdhc: don't reconfigure clock unless required
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Linux SDHCI driver skips sdhci_ops::set_clock if the clock rate is
not going to change. Let's do the same in barebox with the slight
difference that we also check for whether DDR settings have changed,
because that influences the clock configuration on the eSDHC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 751b3703e579..eb24f49008f6 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -226,6 +226,7 @@ static void layerscape_set_timing(struct fsl_esdhc_host *host, enum mci_timing t
 static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
+	bool ddr_changed = false;
 
 	/*
 	 * call esdhc_set_timing() before update the clock rate,
@@ -235,14 +236,18 @@ static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	 * setting clock rate.
 	 */
 	if (host->sdhci.timing != ios->timing) {
+		if (mci_timing_is_ddr(host->sdhci.timing) != mci_timing_is_ddr(ios->timing))
+			ddr_changed = true;
+
 		if (esdhc_is_usdhc(host))
 			usdhc_set_timing(host, ios->timing);
 		else if (esdhc_is_layerscape(host))
 			layerscape_set_timing(host, ios->timing);
 	}
 
-	/* Set the clock speed */
-	set_sysctl(mci, ios->clock, mci_timing_is_ddr(ios->timing));
+	/* Reconfigure clock if requested speed changes */
+	if (!ios->clock || mci->actual_clock != ios->clock || ddr_changed)
+		set_sysctl(mci, ios->clock, mci_timing_is_ddr(ios->timing));
 
 	sdhci_set_drv_type(&host->sdhci, ios->drv_type);
 
-- 
2.39.5



