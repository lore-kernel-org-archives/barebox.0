Delivery-date: Wed, 07 May 2025 11:27:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3l-0035Ut-2o
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3k-0006Iz-Ei
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HzJcAtPFuakisUW9T8pnkuHVshaIUovFJHitbq3cGxQ=; b=haNc88nZRJdXBotMHbWQY967mo
	o9C9rDJBo6JF8P2lOHFacjhL6A3026BSTgag5ArnztYRblpnphScHTJ4TvaHb06yVGO+9naX6ujfU
	Z0dRk9vjWXcm4i34VkXTvrJQMEL4Pbxm7cDpm3p4EkvZULSKEoH78Cy3KlP0a4RvSecKwpfXWQUvG
	qnlUGUNPcGq12Kg9iHrik1c+2rvtVgTQlChqh3q29liw2a4/nMS11LF5wj2YACjDjD1AdZRh9z9SI
	aLHSqoNOyQOTuZxO4Kq2+pcsDTflI65xTRl6+8Fhte4VnKi5kUUa8enmpVdygnTifOY1BO/3+NtXn
	bxlts1Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3G-0000000Ewt8-22b1;
	Wed, 07 May 2025 09:26:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFO-0000000ElqO-0UNa
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HzJcAtPFuakisUW9T8pnkuHVshaIUovFJHitbq3cGxQ=; b=b+9ewqKY8drvdDHPeGXUd637oM
	Ffg++GTSc55/6QXHR4gJiMw3NBZBdF4jpGsR41+HnsAj5NUo07fOzGS2pX74K777nJh2YODRZk6DL
	XyfZ798XHUnC8uS6lvMzEVoA5IkzD9u6guNRoOo2qwAo/Dyz6dXWyu4h3pkxb10j39q2k1ULvI6ou
	nAAT5p5WFgo1k/BJR7xAqv+OoJJ0K8jMMV7BWAXSs2TD9Mb4FQ7i9D2jFtevmDpmsQasPUnZvjsq2
	mrTso+ybsdnQk4XfywVs0CtYXkSJK9eTdBrgXQ0vPfjvWy02ibS2nhZBsehmRzZr0qBqBUTz6g8bw
	P41C/ZWg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCaFG-0000000FoIn-1duW
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003xq-KJ; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001WuX-1E;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-0a;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:51 +0200
Message-Id: <20250507082209.3289972-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093514_766004_2E2351EB 
X-CRM114-Status: GOOD (  11.55  )
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
Subject: [PATCH v2 12/30] mci: imx-esdhc: use unsigned types where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clock rate and register values are both unsigned quantities, so
use the proper types for them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 923dae9cf3b0..2e6066b20308 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -48,7 +48,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 {
 	int div, pre_div, ddr_pre_div = 1;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	int sdhc_clk = clk_get_rate(host->clk);
+	unsigned sdhc_clk = clk_get_rate(host->clk);
 	u32 clk;
 	unsigned long  cur_clock;
 
@@ -199,7 +199,7 @@ static int esdhc_card_present(struct mci_host *mci)
 
 static int esdhc_reset(struct fsl_esdhc_host *host)
 {
-	int val;
+	u32 val;
 
 	/* reset the controller */
 	sdhci_write32(&host->sdhci, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
-- 
2.39.5



