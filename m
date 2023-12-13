Delivery-date: Wed, 13 Dec 2023 15:58:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDQgt-002GNG-1o
	for lore@lore.pengutronix.de;
	Wed, 13 Dec 2023 15:58:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDQgt-0001CF-RM
	for lore@pengutronix.de; Wed, 13 Dec 2023 15:58:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1k8DXGUWBNTRxQqs8MPRtR0Ygf3aGBy81EPOf9GPX0U=; b=gVNTh0IXrC0EgYdBorHvdkLGIz
	OFBslC6BAG4i6iV51FNQHkduR7NuBLSovJD1bC6hJFpVi67XH/mMRUIj6cUu7dMRROH0DcVybZoF0
	oKuNXMwkvbRr2y9bK0gUQayO+CeQQBRIggg0hF6tTEUIixA+ERNfv/S8phuYDiU8RuzMnJG/GFvhj
	FP6qvqD520UVatfPbcMyf2ZNwBP96eZeQUxd6XakZmgB3d7vjNKqeuUfTrYmpHCv29nxtsftB4njl
	VvNo5Mn7IA2ajDBp5q0+5b2g6oo0b7dmpZ3IMbsZy9h5x3LmWuYS/XsR95VuwTUL3qM8lHLeJtm0O
	HzU0jYSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQfk-00F77I-2U;
	Wed, 13 Dec 2023 14:57:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDQff-00F73r-1t
	for barebox@lists.infradead.org;
	Wed, 13 Dec 2023 14:57:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfZ-0008GN-1Q; Wed, 13 Dec 2023 15:57:05 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfY-00Faqp-Ky; Wed, 13 Dec 2023 15:57:04 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rDQfY-0081Fo-1v;
	Wed, 13 Dec 2023 15:57:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 13 Dec 2023 15:57:03 +0100
Message-Id: <20231213145703.1911415-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231213145703.1911415-1-s.hauer@pengutronix.de>
References: <20231213145703.1911415-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_065711_621069_360B38C4 
X-CRM114-Status: GOOD (  12.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] mci: imx-esdhc-pbl: fix prediv setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We use a hardcoded minimum pre_div value of 2. This leads to suboptimal
rates on some SoCs. The pre_div minimum of 2 is required only on one
controller found on the i.MX53, so limit this quirk to this controller
only and use pre_div minimum of 1 for all other controllers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index e1d4e3c2d4..d2a590a967 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -21,6 +21,8 @@
 #include <platform_data/mmc-esdhc-imx.h>
 #include <gpio.h>
 #include <of_device.h>
+#include <mach/imx/generic.h>
+#include <mach/imx/imx53-regs.h>
 
 #include "sdhci.h"
 #include "imx-esdhc.h"
@@ -57,15 +59,11 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 	if (esdhc_is_layerscape(host))
 		sdhc_clk >>= 1;
 
-	/*
-	 * With eMMC and imx53 (sdhc_clk=200MHz) a pre_div of 1 results in
-	 *	pre_div=1,div=4 (=50MHz)
-	 * which is valid and should work, but somehow doesn't.
-	 * Starting with pre_div=2 gives
-	 *	pre_div=2, div=2 (=50MHz)
-	 * and works fine.
-	 */
-	pre_div = 2;
+	/* For i.MX53 eSDHCv3, SYSCTL.SDCLKFS may not be set to 0. */
+	if (cpu_is_mx53() && host->sdhci.base == (void *)MX53_ESDHC3_BASE_ADDR)
+		pre_div = 2;
+	else
+		pre_div = 1;
 
 	if (sdhc_clk == clock)
 		pre_div = 1;
-- 
2.39.2



