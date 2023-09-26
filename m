Delivery-date: Tue, 26 Sep 2023 20:40:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCye-00CK1k-Kh
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 20:40:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlCyc-0001s7-QP
	for lore@pengutronix.de; Tue, 26 Sep 2023 20:40:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mg/CqWU5NgXfuhD3itMJxtmUVvr8YmUP7KDVmSAn02M=; b=Ro7PWcp1eOaw3BTIuC6pGuk5Ge
	S6SAB5wWN0xoRLKjtqoGTjTpVqfQTg7fjcvlI/6C9GatMEjAJt4D2CXbl0OtZ8dTPRMEa/cefF37M
	2f9D0j0W8e3jwOLVKUsk4vmyJNbfdoUuDZFPW0rR9a3f1WDBEaHUFiDXiL1gLRQyPiS/meJausx6T
	3ao58a0blLng5JI27YCMMBGEsmD2vJdiR2/gD7siR1xbkdj55lJCyVvcKUyU/jAPcbWZBwf0z4heb
	bk5Pwx2zyh9kwvB8/GcqnxalkNpDOTEb2mkjbDMhRfNjThqa3WFZh0t/lZjlPeQ6LWfPdiJXxAHg5
	wiF55cpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxN-00GrNe-1U;
	Tue, 26 Sep 2023 18:38:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlCxK-00GrLy-0q
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 18:38:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxB-0000ok-3j; Tue, 26 Sep 2023 20:38:37 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-009AQG-Kj; Tue, 26 Sep 2023 20:38:36 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qlCxA-00Az31-1q;
	Tue, 26 Sep 2023 20:38:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: wsa@kernel.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Sep 2023 20:38:33 +0200
Message-Id: <20230926183835.2617909-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
References: <20230926183835.2617909-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_113846_298184_EA2E06B8 
X-CRM114-Status: GOOD (  13.97  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_SBL,
	URIBL_SBL_A autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] ARM: at91: at91sam9_rst: add DT support for at91sam9260
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

AT91SAM9260 needs a special reset sequence that we already implement
at91sam9_reset(). Make it easily available to DT-enabled boards by
adding it to the at91sam9_rst driver used for newer SoCs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/at91sam9_rst.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9_rst.c b/arch/arm/mach-at91/at91sam9_rst.c
index db7411a053d6..d2c008e3439a 100644
--- a/arch/arm/mach-at91/at91sam9_rst.c
+++ b/arch/arm/mach-at91/at91sam9_rst.c
@@ -10,6 +10,7 @@
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <mach/at91/at91_rstc.h>
+#include <mach/at91/at91sam9260.h>
 #include <reset_source.h>
 
 struct at91sam9x_rst {
@@ -56,6 +57,16 @@ static void __noreturn at91sam9x_restart_soc(struct restart_handler *rst)
 	hang();
 }
 
+void __noreturn at91sam9_reset(void __iomem *sdram, void __iomem *rstc_cr);
+
+static void __noreturn at91sam9260_restart_soc(struct restart_handler *rst)
+{
+	struct at91sam9x_rst *priv = container_of(rst, struct at91sam9x_rst, restart);
+
+	at91sam9_reset(IOMEM(AT91SAM9260_BASE_SDRAMC),
+		       IOMEM(priv->base + AT91_RSTC_CR));
+}
+
 static int at91sam9x_rst_probe(struct device *dev)
 {
 	struct at91sam9x_rst *priv;
@@ -83,14 +94,15 @@ static int at91sam9x_rst_probe(struct device *dev)
 	at91sam9x_set_reset_reason(dev, priv->base);
 
 	priv->restart.name = "at91sam9x-rst";
-	priv->restart.restart = at91sam9x_restart_soc;
+	priv->restart.restart = device_get_match_data(dev);
 
 	return restart_handler_register(&priv->restart);
 }
 
 static const __maybe_unused struct of_device_id at91sam9x_rst_dt_ids[] = {
-	{ .compatible = "atmel,at91sam9g45-rstc", },
-	{ .compatible = "atmel,sama5d3-rstc", },
+	{ .compatible = "atmel,at91sam9260-rstc", at91sam9260_restart_soc },
+	{ .compatible = "atmel,at91sam9g45-rstc", at91sam9x_restart_soc },
+	{ .compatible = "atmel,sama5d3-rstc", at91sam9x_restart_soc },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, at91sam9x_rst_dt_ids);
-- 
2.39.2



