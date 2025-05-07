Delivery-date: Wed, 07 May 2025 11:31:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7W-0035bu-30
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:31:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7W-0007ds-AO
	for lore@pengutronix.de; Wed, 07 May 2025 11:31:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wm6UL2UmFb7kL0lXTWbMi3T1n92FRo8c5cYOnmK7To8=; b=buptM/A84pgxQOG5KX7V2kWX1e
	4gRyiQrKUvt4TInpVC8ckkFMbXt0FWBUCVgw9GU+jGRzYLovaAI/LhH2/7Fsl7kIwDBdRZwG3he3/
	NCctrYJyYBen6d1Vc0JaOCQA3ob3Th12nwbSIWnZtRkZIY8pqh7q/4oKOw5JIUcJ9fEIzJiXjIROw
	rA4BxVsWRQ/iVf465PynC1oQYqstrf33brfgDrQmlv3PAY7YjGfoJeRZAf1eYIwWnbGRExXvubm9t
	GeWof92VoikxSs61stpqHDO0TR1zYwDH5t3mKSjZfZX6PMOFiI0v1P/C0bbaeThtjpoTGmxzaw6eN
	6q4J13aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb78-0000000EyAc-25sf;
	Wed, 07 May 2025 09:30:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaGK-0000000EmFG-1alM
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wm6UL2UmFb7kL0lXTWbMi3T1n92FRo8c5cYOnmK7To8=; b=bZM/L4jgRx7rIeRFodAr9L4uJ8
	W01KhlATxPAwrceoljxo21LGAXEdpjLObrVKzQI8tMNM8Jp69nuRrTfPVLjF+neLBjXvyvugoNIKJ
	ryXxb+qXPdX2aSfsy1VnrYr2/4MvMl2C52O36ueAS4Ug3ivrj54MqypGDUe2QQ1cUXmMQpDpNe8ST
	4wudHMgv04cFC1be16/27jgsXJjZ8NKbJ2KKMXQlIIKra6zkxzH42VMldV7BKYDmg9TqMjqbu8mUN
	4u+6WohVouS9yM10/bOGgROKFl7SDEvf8WkTmQTOkZAVuMTZajEqIBIxQE1G0gjSrqVirBoQWpNh0
	SBETId3g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFp-00000001ihA-3CT0
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003z3-Qj; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001Wuk-21;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-2J;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:22:03 +0200
Message-Id: <20250507082209.3289972-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093550_244049_393EF1C2 
X-CRM114-Status: GOOD (  11.79  )
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
Subject: [PATCH v2 24/30] mci: imx-esdhc: don't reconfigure clock unless required
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
index 18a5750ed0ed..2bdd1532fe74 100644
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



