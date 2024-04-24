Delivery-date: Wed, 24 Apr 2024 08:41:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKM-00EOPS-1U
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:41:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKK-0000a2-C1
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:41:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e2nOeSAYbv2usODwC9yn3eQvoxV7mOTiZrZGfNSxo90=; b=klmVc8GVVYv2dMRAPl72neGyI8
	7uaxZ+KXxCbWcmpVmiJCkSKI259xhfDqJ1fhnRdb1z4L/foODnbI2+DNP8GKtsGfcSrl0kx1oq6vD
	UiVhw282Hnt3PCnHbnde2GQb+qxxjgqhlwMgeIU6lSR1vRCVIv/caaWOyk8ULvZhZesN3rqaG4v2w
	1kfQgPEw2ERhYS2GFkHtZoLKPr/nfvZc/17QLG5eJfg7mB+CQpYWyW5T6n6zQJYUiVfwQ25ZMXpTd
	52iHkDRinsSu+K6SLwM5iO2i7qlF9Rvho1RdRCu+pXm5cneRuwCMqTz/YE4L0p+3eyfNOhZZVCPFd
	IpMIrmBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJp-00000002vDp-1IRp;
	Wed, 24 Apr 2024 06:41:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJd-00000002v6N-0ak0
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008BY-Ke; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1ye-72; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-0R;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:39 +0200
Message-Id: <20240424064058.3608016-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234113_412966_62FEA228 
X-CRM114-Status: GOOD (  13.44  )
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
Subject: [PATCH master 04/23] include: linux/kernel.h: factor out alignment macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has already factored these macros into a separate <linux/align.h>.
We now do the same for barebox to avoid a recursive dependency in
incoming patches via linux/pagemap.h, which just needs the align macros
and nothing else out of linux/kernel.h.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/align.h   | 13 +++++++++++++
 include/linux/kernel.h  |  9 +--------
 include/linux/pagemap.h |  2 +-
 3 files changed, 15 insertions(+), 9 deletions(-)
 create mode 100644 include/linux/align.h

diff --git a/include/linux/align.h b/include/linux/align.h
new file mode 100644
index 000000000000..8df1b3dcd749
--- /dev/null
+++ b/include/linux/align.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_ALIGN_H
+#define _LINUX_ALIGN_H
+
+#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
+#define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
+#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
+#define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
+#define PTR_ALIGN_DOWN(p, a)	((typeof(p))ALIGN_DOWN((unsigned long)(p), (a)))
+#define PTR_IS_ALIGNED(x, a)	IS_ALIGNED((unsigned long)(x), (a))
+#define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
+
+#endif
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 4e50f6075189..c411ac0860dd 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -10,6 +10,7 @@
 #include <linux/container_of.h>
 #include <linux/instruction_pointer.h>
 #include <linux/minmax.h>
+#include <linux/align.h>
 
 /**
  * REPEAT_BYTE - repeat the value @x multiple times as an unsigned long value
@@ -19,14 +20,6 @@
  */
 #define REPEAT_BYTE(x)	((~0ul / 0xff) * (x))
 
-#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
-#define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
-#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
-#define PTR_ALIGN(p, a)		((typeof(p))ALIGN((unsigned long)(p), (a)))
-#define PTR_ALIGN_DOWN(p, a)	((typeof(p))ALIGN_DOWN((unsigned long)(p), (a)))
-#define PTR_IS_ALIGNED(x, a)	IS_ALIGNED((unsigned long)(x), (a))
-#define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
-
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
 #define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
 
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 0db192e4d3ab..8bdaff4ebf1b 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -3,7 +3,7 @@
 #ifndef _LINUX_PAGEMAP_H
 #define _LINUX_PAGEMAP_H
 
-#include <linux/kernel.h>
+#include <linux/align.h>
 
 /*
  * Copyright 1995 Linus Torvalds
-- 
2.39.2



