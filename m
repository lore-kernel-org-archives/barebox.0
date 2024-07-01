Delivery-date: Mon, 01 Jul 2024 09:12:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBDd-000Q9t-2N
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:12:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBDd-0005A5-4C
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iOM5sSq4hCNfnz447JQLfdASbcbVAbFdQv9n+z27tFw=; b=PUeqHrJh3wykNHvhAQuaMP41TX
	snuGJnWrUJjn/LU9dYP9DI66LyN8uhKrohurS36Ur6kWtty0iO5kAgmiEcDPt4MwBjGjtcK0LilXe
	oVMO1hz6tz+8JjtDM9m9Q9gS4ZwHv5wQYMmxQwAOtYn5otkoVuWokU9yGE6MJm3xaazvy4Tt0jBeD
	375VGeavKnLYkqmETevn3KGW5C0uJEbmo7rLJpQT2NizWSj6TE0DGC2ihAbU/0GcPJC67cxKeGqem
	CdYz0XWA6YJf3/VAaXqStEx0+pB/xQZcZRGPwbQmw4JE1D4rwpKuq1RpTSrv0h1O1PePeS7enCmFF
	yEYsYLxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBDB-00000001zCI-35Cv;
	Mon, 01 Jul 2024 07:12:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBD8-00000001zBX-3aOC
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:12:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBD7-00054r-8S; Mon, 01 Jul 2024 09:12:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBD6-006Jc9-Rx; Mon, 01 Jul 2024 09:12:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBD6-000ZpI-2V;
	Mon, 01 Jul 2024 09:12:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:12:22 +0200
Message-Id: <20240701071223.137695-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_001227_098894_A2879C11 
X-CRM114-Status: GOOD (  13.63  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] include: gfp: move flags into <linux/gfp.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GFP arguments are unused in barebox and are only used to reduce
churn when porting kernel code. To make it easier to port code using
them in headers, move them to <linux/gfp.h> like Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/gfp.h  | 12 ++++++++++++
 include/linux/slab.h |  7 +------
 2 files changed, 13 insertions(+), 6 deletions(-)
 create mode 100644 include/linux/gfp.h

diff --git a/include/linux/gfp.h b/include/linux/gfp.h
new file mode 100644
index 000000000000..799c2e461278
--- /dev/null
+++ b/include/linux/gfp.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _LINUX_GFP_H
+#define _LINUX_GFP_H
+
+/* unused in barebox, just bogus values */
+#define GFP_KERNEL	0
+#define GFP_NOFS	0
+#define GFP_USER	0
+#define __GFP_NOWARN	0
+
+#endif
diff --git a/include/linux/slab.h b/include/linux/slab.h
index eba3593d758a..a63aad1c348c 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -6,6 +6,7 @@
 #include <dma.h>
 #include <linux/overflow.h>
 #include <linux/string.h>
+#include <linux/gfp.h>
 
 #define SLAB_CONSISTENCY_CHECKS	0
 #define SLAB_RED_ZONE		0
@@ -25,12 +26,6 @@
 #define SLAB_RECLAIM_ACCOUNT	0
 #define SLAB_TEMPORARY		0
 
-/* unused in barebox, just bogus values */
-#define GFP_KERNEL	0
-#define GFP_NOFS	0
-#define GFP_USER	0
-#define __GFP_NOWARN	0
-
 static inline void *kmalloc(size_t size, gfp_t flags)
 {
 	return dma_alloc(size);
-- 
2.39.2



