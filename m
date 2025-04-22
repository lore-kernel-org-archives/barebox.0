Delivery-date: Tue, 22 Apr 2025 10:39:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79A6-003ybd-1B
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79A0-0002Qx-0m
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z1dAb3FKxvKvqhZE+XOl4MqLxkKFDJELHIsgzGbZ4WM=; b=r2JP8xy/4tsuOLY7FGMvuNL9Mr
	Spo17ZpuqNGGM7Rgii+UWQsbsvcTZZWJcgBbdMQko9DZIHbiuO6cm4Ret2/G3p/i4s9W9kJQM2829
	nXlBNPnu7caWyUwjeqMDn0hDUzfFnMQouieiJlRZPrA5WC1OOqkXi1vVJJifzA/3UZ83p4dUfU7v1
	x1UmsYd1GD4lErnJDyR+G5oj+S3uznbGry+5W6oXBvqbAXFCVfm6gwk/ctAO3MpXr26GmYFHY7mBG
	MZWJnsodQBVeca1RMHfvXH8O4IEgb9NPTcApZyChk+TI4a4WXyEpUsw04PVsJdoM1GyWgA3MUlXUM
	VI2Q4ECg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7999-00000006MfV-25Z1;
	Tue, 22 Apr 2025 08:38:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Uh-00000006CRM-2I7B
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-0000iG-Eb
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-001VwK-0n
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-000vQy-0T
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:37 +0200
Message-Id: <20250422075637.220688-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075637.220688-1-a.fatoum@pengutronix.de>
References: <20250422075637.220688-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005639_598279_CB67E3BC 
X-CRM114-Status: GOOD (  11.41  )
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
Subject: [PATCH 7/7] clk: move struct clk_composite definition to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Linux defines struct clk_composite in a header, so clock drivers can
make direct use of it. Do the same for barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/clk-composite.c  | 12 +-----------
 include/linux/clk-provider.h | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index f69d90e72b4f..e8f1fa7a7250 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -8,19 +8,9 @@
 #include <common.h>
 #include <io.h>
 #include <malloc.h>
-#include <linux/clk.h>
+#include <linux/clk-provider.h>
 #include <linux/err.h>
 
-struct clk_composite {
-	struct clk_hw	hw;
-
-	struct clk_hw	*mux_hw;
-	struct clk_hw	*rate_hw;
-	struct clk_hw	*gate_hw;
-};
-
-#define to_clk_composite(_hw) container_of(_hw, struct clk_composite, hw)
-
 static int clk_composite_get_parent(struct clk_hw *hw)
 {
 	struct clk_composite *composite = to_clk_composite(hw);
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 602e772a54bb..07ccf1d67515 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -31,6 +31,24 @@ static inline long divider_ro_round_rate(struct clk_hw *hw, unsigned long rate,
 					    val);
 }
 
+/***
+ * struct clk_composite - aggregate clock of mux, divider and gate clocks
+ *
+ * @hw:		handle between common and hardware-specific interfaces
+ * @mux_hw:	handle between composite and hardware-specific mux clock
+ * @rate_hw:	handle between composite and hardware-specific rate clock
+ * @gate_hw:	handle between composite and hardware-specific gate clock
+ */
+struct clk_composite {
+	struct clk_hw	hw;
+
+	struct clk_hw	*mux_hw;
+	struct clk_hw	*rate_hw;
+	struct clk_hw	*gate_hw;
+};
+
+#define to_clk_composite(_hw) container_of(_hw, struct clk_composite, hw)
+
 /**
  * struct clk_rate_request - Structure encoding the clk constraints that
  * a clock user might require.
-- 
2.39.5



