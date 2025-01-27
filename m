Delivery-date: Mon, 27 Jan 2025 12:03:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcMu6-0054og-0i
	for lore@lore.pengutronix.de;
	Mon, 27 Jan 2025 12:03:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcMu6-00037f-94
	for lore@pengutronix.de; Mon, 27 Jan 2025 12:03:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eDG4qQCK7TmMYcaZnKEc7GN+elc08k1ebIAw20wcL40=; b=0QvIhkQATlBvl96pAwBdw0p6uO
	wkc5pkUZLYpXYlcTm/n0dws+reqQW1vTLRJlrLM5K2sXDaDcCa+cQyoJ1J+7PbBzR4ogifv6IeO9R
	Gz1AnH1XbieQABhyi6YBobVVpodyvBZ613IPmX3QfzmmwU7KST+L1+5V+RztuMm/zEEeBc0BhNrWv
	qobZtxy4/aYIqHF0mMCPiRyBFwDuf+KLqftWHdjQHLQ8WzFog6/989DmyK1YxRMGjqbQtRL1kbRlC
	Mkx8JqAddbj15Bv1hbdMEHJGK3arYt9X+wGkwolWdtVM2BrxWF7uHT0cvZfu1uQow18+r5nEPzuaX
	7mMpISAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcMtQ-00000002BYz-0VCf;
	Mon, 27 Jan 2025 11:03:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcMtN-00000002BYZ-3Ay7
	for barebox@lists.infradead.org;
	Mon, 27 Jan 2025 11:02:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcMtK-0002q8-Qa; Mon, 27 Jan 2025 12:02:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcMtK-0026uY-1z;
	Mon, 27 Jan 2025 12:02:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tcMtK-0035Tv-1h;
	Mon, 27 Jan 2025 12:02:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Jan 2025 12:02:52 +0100
Message-Id: <20250127110252.735402-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_030257_797335_357F84AE 
X-CRM114-Status: GOOD (  14.29  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: boards: colibri-imx6: make BBU setting independent of DT alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Different baseboards may shuffle around the eMMC/SD aliases differently
and thus the barebox update handler registration may not be correct
across all of them.

Instead of hardcoding the eMMC device and SD device, let's derive the
correct index dynamically at runtime using the mapping that the barebox
bootsource code is already using.

Reported-by: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Jonas, can you give this a test and see if it works for you?
---
 arch/arm/boards/toradex-colibri-imx6/board.c | 24 +++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/toradex-colibri-imx6/board.c b/arch/arm/boards/toradex-colibri-imx6/board.c
index f3a6173e5064..5771b08cbacb 100644
--- a/arch/arm/boards/toradex-colibri-imx6/board.c
+++ b/arch/arm/boards/toradex-colibri-imx6/board.c
@@ -9,6 +9,14 @@
 #include <mach/imx/imx6.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
 
+/*
+ * The upstream device tree shuffles around the eMMC/SD indices, so the
+ * board code here takes care to use the numbering of the SoC reference
+ * manual
+ */
+#define COLIBRI_MMC_INSTANCE_SD		0
+#define COLIBRI_MMC_INSTANCE_EMMC	2
+
 static void eth_init(void)
 {
 	void __iomem *iomux = IOMEM(MX6_IOMUXC_BASE_ADDR);
@@ -22,9 +30,19 @@ static void eth_init(void)
 
 static int colibri_imx6_probe(struct device *dev)
 {
-	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc0",
-			BBU_HANDLER_FLAG_DEFAULT);
-	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc1", 0);
+	int emmc_alias, sd_alias;
+
+	emmc_alias = bootsource_of_alias_xlate(BOOTSOURCE_MMC, COLIBRI_MMC_INSTANCE_EMMC);
+	if (emmc_alias >= 0)
+		imx6_bbu_internal_mmcboot_register_handler("emmc",
+							   basprintf("/dev/mmc%u", emmc_alias),
+							   BBU_HANDLER_FLAG_DEFAULT);
+
+	sd_alias = bootsource_of_alias_xlate(BOOTSOURCE_MMC, COLIBRI_MMC_INSTANCE_SD);
+	if (sd_alias >= 0)
+		imx6_bbu_internal_mmc_register_handler("sd",
+						       basprintf("/dev/mmc%u", sd_alias),
+						       0);
 
 	barebox_set_hostname("colibri-imx6");
 
-- 
2.39.5



