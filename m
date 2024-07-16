Delivery-date: Tue, 16 Jul 2024 13:59:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpr-005Qtt-0H
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 13:59:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTgpq-0001l1-9o
	for lore@pengutronix.de; Tue, 16 Jul 2024 13:59:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cadIVYW6YFZnnJsYU7Q3Mg0I3BGNkKC4UkBKGxB19bA=; b=P9AElZ/yFzCefVNJY38U0rRLbU
	tdbmZJTbfSyfbb2ooR9KnWjPz/hqBeYUBNXmo09RT+/iiYUSYz5MFJ8N1Veyb9r334vyNc4vNh5mH
	Og1E6Od12yUANXUXPWwuaJHZELlJjVp/KQ052GlIKv0IZb5W77wV+Axz+f7gjtGUDXTOB4dhkZnBj
	NaY/rvF5efdw9MpZQbbcd1NDMRtkEDwtn+xpBR3swiDtTOm3RmSMLgFqCcAyweTUb8LlThzguykcm
	xH0Ah5KatARtFNoaipT0sMOt2AUfuNUQp6AhNrSwhxLmX/wio0YXVl1rHHzSyEXnS1uDKHoSMykgE
	AC1jXzSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpO-0000000AKfN-1Kkr;
	Tue, 16 Jul 2024 11:58:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgpJ-0000000AKc1-24Hi
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 11:58:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpI-0001OE-9I; Tue, 16 Jul 2024 13:58:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-0007Z8-RA; Tue, 16 Jul 2024 13:58:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgpH-008FTm-2R;
	Tue, 16 Jul 2024 13:58:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 13:58:31 +0200
Message-Id: <20240716115834.1958413-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
References: <20240716115834.1958413-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_045837_586624_38CF9701 
X-CRM114-Status: GOOD (  14.51  )
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
Subject: [PATCH 5/8] include: move MODULE_* macro definitions into own header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll remove the <linux/kernel.h> include from <linux/list.h> in a later
commit, so prepare for that by defining the MODULE_* macros via driver.h
as well, otherwise build of some drivers will break, because the relied
on the transitive inclusion of <linux/barebox-wrapper.h> via
<linux/list.h>.

While at it we also remove a duplicate __init definition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h                |  1 +
 include/linux/barebox-wrapper.h | 12 +-----------
 include/linux/module.h          | 17 +++++++++++++++++
 include/module.h                |  1 +
 4 files changed, 20 insertions(+), 11 deletions(-)
 create mode 100644 include/linux/module.h

diff --git a/include/driver.h b/include/driver.h
index d4687fd2c2d2..2b4db2221a6c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -10,6 +10,7 @@
 #include <linux/ioport.h>
 #include <linux/uuid.h>
 #include <linux/printk.h>
+#include <linux/module.h>
 #include <device.h>
 #include <of.h>
 #include <init.h>
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 5d311e1d70f4..8320a24b7bc1 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -4,6 +4,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 #include <linux/slab.h>
+#include <linux/module.h>
 #include <printk.h>
 
 #define vmalloc(len)		malloc(len)
@@ -14,17 +15,6 @@ static inline void vfree(const void *addr)
 	free((void *)addr);
 }
 
-#define __init
-
-#define MODULE_AUTHOR(x)
-#define MODULE_DESCRIPTION(x)
-#define MODULE_LICENSE(x)
-#define MODULE_VERSION(x)
-#define MODULE_ALIAS(x)
-#define MODULE_DEVICE_TABLE(bus, table)
-#define MODULE_ALIAS_DSA_TAG_DRIVER(drv)
-#define MODULE_ALIAS_CRYPTO(alias)
-
 #define __user
 #define __init
 #define __exit
diff --git a/include/linux/module.h b/include/linux/module.h
new file mode 100644
index 000000000000..6a8ef6d6eccc
--- /dev/null
+++ b/include/linux/module.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _LINUX_MODULE_H
+#define _LINUX_MODULE_H
+
+#include <linux/export.h>
+
+#define MODULE_AUTHOR(x)
+#define MODULE_DESCRIPTION(x)
+#define MODULE_LICENSE(x)
+#define MODULE_VERSION(x)
+#define MODULE_ALIAS(x)
+#define MODULE_DEVICE_TABLE(bus, table)
+#define MODULE_ALIAS_DSA_TAG_DRIVER(drv)
+#define MODULE_ALIAS_CRYPTO(alias)
+
+#endif
diff --git a/include/module.h b/include/module.h
index 0e81033b20d0..60ad6c3556d1 100644
--- a/include/module.h
+++ b/include/module.h
@@ -6,6 +6,7 @@
 #include <elf.h>
 #include <linux/compiler.h>
 #include <linux/export.h>
+#include <linux/module.h>
 #include <linux/list.h>
 
 #define MODULE_NAME_LEN (64 - sizeof(unsigned long))
-- 
2.39.2



