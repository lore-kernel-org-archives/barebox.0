Delivery-date: Tue, 26 Mar 2024 12:51:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp5LD-005BVn-0U
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 12:51:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp5LC-0004n8-F7
	for lore@pengutronix.de; Tue, 26 Mar 2024 12:51:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gAsoLiaG/4wVoGD3iqTW15mW8mU3wNmg9kwlZGT3n8w=; b=wfC0sMJiDMmU2uh07kiZFIOHaM
	WEjXGXPKTqpEpxoWoCh6p3NGVhzBuCNQI+CsPRgb3ocHlsPxvDvEatxyMZX4l1pI+z1227N1CGewg
	+OkD7SJWoajSheTrclKDB1Ukff0o90UQ5wgIf5I5VIXTMbRLjsZ/bzblb9jn/+uIOLE1BYgbvITbM
	OnjxPAC40JKuxxcootpgXInTp76XK61n9ax3+H6jVgwNZyflMyT0uqkFpiWLXbNkeZEGazUXJH7G5
	9pQ4r0u5lT+rLbwE7pAGu3Jijl5IuLYKKrbFGCTSdGrzxYK66Bop0kxnCCIVkMP0+g+rvFy9rgsQW
	em6wlkUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5Kd-00000004L3i-1UJI;
	Tue, 26 Mar 2024 11:51:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp5KX-00000004L1I-3l3G
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 11:51:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rp5KU-0004KL-9R
	for barebox@lists.infradead.org; Tue, 26 Mar 2024 12:50:58 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 26 Mar 2024 12:50:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240326-worktree-barebox-bosch-be-ppm4-v1-2-7ea75c487348@pengutronix.de>
References: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
In-Reply-To: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=816;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=xohJavCuGruDiVbWHWsGnyHyZCrwcfXkyhsdt4RHzOw=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGNKYts3l2/fBwffXiunGlpONPymvnmD+YSfHqRuutl/Lj
 dLeP4v80FHKwiDGxSArpsgSufaQxmbhzzpfjp9ngJnDygQyhIGLUwAm0tPFyHBvWYPdusTf18rC
 Pa+FrOxZ9y3mW5TV82dyDy5znxXd27CC4Z+mkdqu5EJht8gzH/LVP/FKflHWWB41/e3O4yfu7Yp
 n9OQBAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_045102_047923_2259219E 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mci: arasan: fix build for non-ZynqMP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Registering sdclk only makes sense on the ZynqMP architecture. Guard
calling the function with a IS_ENABLED()

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index f01396d7ee..b7dd98049f 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -772,7 +772,8 @@ static int arasan_sdhci_probe(struct device *dev)
 
 	mci->f_min = 50000000 / 256;
 
-	arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);
+	if (IS_ENABLED(CONFIG_ARCH_ZYNQMP))
+		arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);
 
 	arasan_dt_parse_clk_phases(dev, &arasan_sdhci->clk_data);
 

-- 
2.43.2



