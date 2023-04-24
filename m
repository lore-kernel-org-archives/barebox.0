Delivery-date: Mon, 24 Apr 2023 14:19:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAI-00FZ3k-91
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:19:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAI-0004Qy-2a
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:19:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7n28vY1aVQhvrsY9WFPyAB4lDXXznrcTVafIwRqrd1Q=; b=wg/8m5IVPjEwZJk2XeTI5yDsFN
	ZexsMQeXw2yS/v/QpXMnKog4LJg3vEclC/Ax/Ta9L79MT56PQkNpyrTwp4OE+VoomGtUC+a9bUjSO
	tJQi5Jj3yJuXb6SN71y9fb/3H/IM0M68cXaDQlrEO23ldhigNCxAoqLRN/60POg5mJSvx+ctZ/5sG
	9kkeFp/BbbtZyZt1E/XGs/4vlrJ5xYynISfUIBZc7zyNDc4fTeKoQQeavjoBFfaZ0ts6j4/IrqZrD
	W+ZA0AM3yAAh3RIYZO8a5dcnAcvaF9diQ/yr3swvYRQzK2OUHVI0IMkcZqgkDdtYhjJ2t2ygsl/G5
	KCOR/p7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv97-00GHYF-0v;
	Mon, 24 Apr 2023 12:18:17 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv93-00GHWp-1T
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 12:18:14 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 7776440010;
	Mon, 24 Apr 2023 12:18:11 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 14:18:00 +0200
Message-Id: <20230424121805.150434-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424121805.150434-1-ahmad@a3f.at>
References: <20230424121805.150434-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_051813_623160_ECBB6C2A 
X-CRM114-Status: GOOD (  11.40  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/7] sandbox: power: handle missing stickypage gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To enable simulation of $global.system.reset in sandbox, the power
driver writes the reset-source into the stickypage for readout during
subsequent barebox startup. This is an optional feature, so it should
happen before watchdog registration, but not break watchdog operation if
not available.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/power.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/sandbox/board/power.c b/arch/sandbox/board/power.c
index 51f0968447c4..4adc8d7455fc 100644
--- a/arch/sandbox/board/power.c
+++ b/arch/sandbox/board/power.c
@@ -5,7 +5,7 @@
 #include <poweroff.h>
 #include <restart.h>
 #include <mach/linux.h>
-#include <reset_source.h>
+#include <asm/reset_source.h>
 #include <linux/nvmem-consumer.h>
 
 struct sandbox_power {
@@ -18,7 +18,8 @@ static void sandbox_poweroff(struct poweroff_handler *poweroff)
 {
 	struct sandbox_power *power = container_of(poweroff, struct sandbox_power, poweroff);
 
-	nvmem_cell_write(power->reset_source_cell, &(u8) { RESET_POR }, 1);
+	sandbox_save_reset_source(power->reset_source_cell, RESET_POR);
+
 	linux_exit();
 }
 
@@ -29,11 +30,9 @@ static void sandbox_rst_hang(struct restart_handler *rst)
 
 static void sandbox_rst_reexec(struct restart_handler *rst)
 {
-	u8 reason = RESET_RST;
 	struct sandbox_power *power = container_of(rst, struct sandbox_power, rst_reexec);
 
-	if (!IS_ERR(power->reset_source_cell))
-		WARN_ON(nvmem_cell_write(power->reset_source_cell, &reason, 1) <= 0);
+	sandbox_save_reset_source(power->reset_source_cell, RESET_RST);
 
 	linux_reexec();
 }
@@ -69,7 +68,10 @@ static int sandbox_power_probe(struct device *dev)
 	power->reset_source_cell = of_nvmem_cell_get(dev->of_node,
 						     "reset-source");
 	if (IS_ERR(power->reset_source_cell)) {
-		dev_warn(dev, "No reset source info available: %pe\n", power->reset_source_cell);
+		if (PTR_ERR(power->reset_source_cell) != -EPROBE_DEFER)
+			dev_warn(dev, "No reset source info available: %pe\n",
+				 power->reset_source_cell);
+		power->reset_source_cell = NULL;
 		return 0;
 	}
 
-- 
2.38.4



