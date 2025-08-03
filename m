Delivery-date: Sun, 03 Aug 2025 08:35:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiSJh-006WK5-0N
	for lore@lore.pengutronix.de;
	Sun, 03 Aug 2025 08:35:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiSJg-0001uo-JB
	for lore@pengutronix.de; Sun, 03 Aug 2025 08:35:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OwEBYHnwYct5xydn6YlFwmaRTYZU9L9wYgqmWLUe/C8=; b=pJVR8aEWqP0NRJLvV4yah5n9um
	IBYSJVluyycgwa7GzXBjEm3bHnXVjJIStdvmE6SwUFkCIsQRhF27Md6BH+5sodlwF6+WDT3M8yLjM
	pzkCgcY5d2T2SL4mi+ZwNUfZ0WpNH7NhguWjX2Zy9CaUT4r1OOxK/rCt7IcSEi/4Hft4gdB+13N2n
	z1aPHhsZiLNVulDG3FYzRFrdcad8qwcjc6aJ8l0h0qzoL/LTpGas9ql8oHReyuHKvpgZbTT4w4e25
	0gicmXpCLRMaShV02hc8M0RvetNI0FtWxYa3Ah6qabXpAJB6SRCHlC5FC1DE0dIfVe3YRe0xV4kUz
	rafHdgiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiSIx-00000008SK4-1DG9;
	Sun, 03 Aug 2025 06:34:47 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiRbR-00000008Pol-38Oz
	for barebox@lists.infradead.org;
	Sun, 03 Aug 2025 05:49:51 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id 5735spot016362;
	Sun, 3 Aug 2025 05:54:51 GMT
Received: (from akurz@localhost)
	by blala.de (8.15.2/8.15.2/Submit) id 5735so4m016361;
	Sun, 3 Aug 2025 05:54:50 GMT
From: Alexander Kurz <akurz@blala.de>
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Date: Sun,  3 Aug 2025 05:54:49 +0000
Message-Id: <20250803055449.16318-1-akurz@blala.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250802_224950_068037_19F23BBA 
X-CRM114-Status: UNSURE (   9.81  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: imx-esdhc-pbl: fix iMX50 prediv setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ESDHC3 instance is common between iMX50 and iMX53.
Extend the required quirk also to iMX50 fixing a problem that data could
not be written to an eMMC.

Fixes: 1713fa5bf0f9 ("mci: imx-esdhc-pbl: fix prediv setting")
Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/mci/imx-esdhc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 0ae0bb4ede..ae02d80443 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -22,6 +22,7 @@
 #include <gpio.h>
 #include <of_device.h>
 #include <mach/imx/generic.h>
+#include <mach/imx/imx50-regs.h>
 #include <mach/imx/imx53-regs.h>
 
 #include "sdhci.h"
@@ -97,8 +98,9 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 	if (esdhc_is_layerscape(host))
 		sdhc_clk >>= 1;
 
-	/* For i.MX53 eSDHCv3, SYSCTL.SDCLKFS may not be set to 0. */
-	if (cpu_is_mx53() && host->sdhci.base == (void *)MX53_ESDHC3_BASE_ADDR)
+	/* For i.MX50 and i.MX53 eSDHCv3, SYSCTL.SDCLKFS may not be set to 0. */
+	if ((cpu_is_mx50() && host->sdhci.base == (void *)MX50_ESDHC3_BASE_ADDR)
+	    || (cpu_is_mx53() && host->sdhci.base == (void *)MX53_ESDHC3_BASE_ADDR))
 		pre_div = 2;
 	else
 		pre_div = 1;
-- 
2.39.5



