Delivery-date: Thu, 12 Dec 2024 23:22:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLrZr-007LfL-2H
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 23:22:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLrZr-000462-MO
	for lore@pengutronix.de; Thu, 12 Dec 2024 23:22:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=noWHZIX9CIAme/4tq+igaBYpLkkQsMNDmgt7ktXrM3s=; b=OX5i84IrIMANSnUAGmoG0RYo1t
	0/0dyQ6lESQeqf6i/BJ5JvY8bb+RKD5FrXXgFyOm6j18jisKEkxtPzSFK+i6qsSoAKEK8vin2Puzd
	LrCvcWT3qWkZVjlJbN1qyXEak7U2uIc2Y4tLiwBX9dCMl7l2xmCJpK683vY8u1BzZLJdzO7LvpsU4
	4r7K+1IPg9eUz/40PNp+Tiw8f8jfk2fVu4M1EERMa23SkDXeTSX0DuYo9MO51uZQ76kYK8RMcVgw4
	Al1iRg9IhpWDF5Qi0acgt/s08zmEjiZTtIM9OkOcXfyCVilvIB4kXA9cYvo8xw7vdee9rbbxUDJdc
	NerLNH1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLrZH-000000025AX-12FW;
	Thu, 12 Dec 2024 22:21:59 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLrZD-0000000257f-2gvl
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 22:21:57 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 76077E74071; Thu, 12 Dec 2024 23:10:39 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id 0F73CE7406C
	for <barebox@lists.infradead.org>; Thu, 12 Dec 2024 23:10:38 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Thu, 12 Dec 2024 23:10:34 +0100
Message-ID: <20241212221034.210933-2-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241212221034.210933-1-dev@lynxeye.de>
References: <20241212221034.210933-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_142155_836346_6D723E3C 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mci: sdhci: arasan: remove dead no 1.8V quirk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since 21e5f283cb72 ("mci: sdhci: arasan: Use sdhci_setup_host()"), the
no-1-8-v DT property is handled by the common mci_of_parse. Remove the
dead quirk from the driver.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/arasan-sdhci.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 2af9ad10bed7..112fb5a669d5 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -70,7 +70,6 @@ struct arasan_sdhci_host {
 	struct sdhci_arasan_clk_data clk_data;
 /* Controller does not have CD wired and will not function normally without */
 #define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
-#define SDHCI_ARASAN_QUIRK_NO_1_8_V		BIT(1)
 /*
  * Some of the Arasan variations might not have timing requirements
  * met at 25MHz for Default Speed mode, those controllers work at
@@ -768,9 +767,6 @@ static int arasan_sdhci_probe(struct device *dev)
 	if (of_property_read_bool(np, "xlnx,fails-without-test-cd"))
 		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_FORCE_CDTEST;
 
-	if (of_property_read_bool(np, "no-1-8-v"))
-		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_NO_1_8_V;
-
 	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a")) {
 		if (IS_ENABLED(CONFIG_MCI_TUNING))
 			mci->ops.execute_tuning = arasan_zynqmp_execute_tuning;
-- 
2.47.1



