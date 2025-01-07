Delivery-date: Tue, 07 Jan 2025 12:33:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7pV-000IVD-12
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 12:33:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV7pR-0001u3-I7
	for lore@pengutronix.de; Tue, 07 Jan 2025 12:33:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d7+iJn1Li3mQCFyWgGBwLTvejoJPEYpwIL91Xi+3TmA=; b=bQI6bDEENr0hJR/BQIkL/0RkFo
	bPAWGwJu1gBD6A2zcNvg8oin2h9mu8w/CR8TgAKSGK1fDsDshMHtKoBbAfbogR1ltlg8/MiibOpe3
	jpbEkd2CP+bThgDDhc4243Bu7nYrjGvD6CfKMQpOBcP2q9FqNEpuW0clgzLgt/Z9Sr9barbVD7mgY
	jHr8Zuu8YaN4gwaqqeHO/0+I/9MXOguTreHUmzUG7JbiEJYN+DlDp3x59679zbuZzPAHuujiIWkw3
	fFgh35+OohIsK6hO3NqS7xPRqjIj+0OK+fOx2C7Hzq5DGGc2HNMuWuCwNSlleL3AEqBM3PEfFb6Er
	LKyvC7aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7on-00000004ZCh-0mHm;
	Tue, 07 Jan 2025 11:32:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV7oh-00000004Z7z-47Bl
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 11:32:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7og-0001dK-RG; Tue, 07 Jan 2025 12:32:10 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7of-007Kt3-2q;
	Tue, 07 Jan 2025 12:32:10 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tV7og-005APk-1w;
	Tue, 07 Jan 2025 12:32:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  7 Jan 2025 12:32:08 +0100
Message-Id: <20250107113209.1231661-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_033212_016478_79E02A51 
X-CRM114-Status: UNSURE (   9.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: stm32: move stm32-bsec-optee-ta.h to include/soc/stm32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move stm32-bsec-optee-ta.h header to make it directly available in board
drivers.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/bsec.c                                       | 3 +--
 drivers/nvmem/stm32-bsec-optee-ta.c                        | 3 +--
 {drivers/nvmem => include/soc/stm32}/stm32-bsec-optee-ta.h | 0
 3 files changed, 2 insertions(+), 4 deletions(-)
 rename {drivers/nvmem => include/soc/stm32}/stm32-bsec-optee-ta.h (100%)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 3fa73488f9f7..b92d925956ee 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -17,8 +17,7 @@
 #include <mach/stm32mp/bsec.h>
 #include <machine_id.h>
 #include <linux/nvmem-provider.h>
-
-#include "stm32-bsec-optee-ta.h"
+#include <soc/stm32/stm32-bsec-optee-ta.h>
 
 #define BSEC_OTP_SERIAL	13
 
diff --git a/drivers/nvmem/stm32-bsec-optee-ta.c b/drivers/nvmem/stm32-bsec-optee-ta.c
index f89ce791dd12..b4b58b9d737a 100644
--- a/drivers/nvmem/stm32-bsec-optee-ta.c
+++ b/drivers/nvmem/stm32-bsec-optee-ta.c
@@ -6,8 +6,7 @@
  */
 
 #include <linux/tee_drv.h>
-
-#include "stm32-bsec-optee-ta.h"
+#include <soc/stm32/stm32-bsec-optee-ta.h>
 
 /*
  * Read OTP memory
diff --git a/drivers/nvmem/stm32-bsec-optee-ta.h b/include/soc/stm32/stm32-bsec-optee-ta.h
similarity index 100%
rename from drivers/nvmem/stm32-bsec-optee-ta.h
rename to include/soc/stm32/stm32-bsec-optee-ta.h
-- 
2.39.5



