Delivery-date: Wed, 24 Apr 2024 08:42:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKO-00EOQO-0V
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:42:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKK-0000aX-ON
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:42:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bNiTb3IgmXu13eX4jVCCD5nvs8/Pnv34m0ViMPRx3eQ=; b=vaDG+cvC2uB9rRZVe5sKfTrbks
	D7nTm7I6lskyXp+pGGVND5/vcJFPTLbnNbNBxC+nzOu+7hsAi72XVZTSjA60e9muRQOupG1J04anA
	GUBcgenOFyB9lu9P+uEby8d0Cr8xtaylC5qGkxuSgYikvSYFryMtW/xE0076/NGJVJY3SVFgM2dig
	bN7umhO8qGuHMNxsgcVGxM30NE88nrA4BW1tapjMCLWlLekcMme1sHhNAZY4BwP0LSdgKeU7nNxDV
	qZnspyghlVyMdsR/1kjH2XHOGgKYWr7lC0PsJCvfbe2fqqGOcqh/9EOVnnPDqFMWJwEiki00QciNb
	uBm4D23Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJg-00000002v9C-2t8c;
	Wed, 24 Apr 2024 06:41:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJW-00000002uzi-2N9B
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008Bn-S7; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1yt-ES; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-1A;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:44 +0200
Message-Id: <20240424064058.3608016-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234106_790859_17BF5ED3 
X-CRM114-Status: UNSURE (   9.92  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 09/23] dma: remove linux/kernel.h dependency from dma.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To prepare having linux/kernel.h transitively depend on dma.h, remove
dependency of dma.h on linux/kernel.h.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/debug.c | 1 +
 drivers/dma/map.c   | 1 +
 include/dma.h       | 4 ++--
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
index e524dc4127ce..f4272e8f5822 100644
--- a/drivers/dma/debug.c
+++ b/drivers/dma/debug.c
@@ -2,6 +2,7 @@
 
 #include <dma.h>
 #include <linux/list.h>
+#include <linux/printk.h>
 #include "debug.h"
 
 static LIST_HEAD(dma_mappings);
diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index e2656a27f183..cd0f5c3d3497 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -1,5 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 #include <dma.h>
+#include <driver.h>
 #include "debug.h"
 
 void *dma_alloc(size_t size)
diff --git a/include/dma.h b/include/dma.h
index a69072280bd5..4fcd114bb6b5 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -8,12 +8,12 @@
 
 #include <malloc.h>
 #include <xfuncs.h>
-#include <linux/kernel.h>
+#include <linux/align.h>
 
 #include <dma-dir.h>
 #include <asm/dma.h>
 #include <asm/io.h>
-#include <driver.h>
+#include <device.h>
 
 #define DMA_ADDRESS_BROKEN	NULL
 
-- 
2.39.2



