Delivery-date: Tue, 27 May 2025 22:14:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h0-000xLF-33
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 22:14:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h0-0002x3-8u
	for lore@pengutronix.de; Tue, 27 May 2025 22:14:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UzV4nO32O+CA3CA0WDHfIwKB4HLi5lBPyciB+stEMMg=; b=ye36S75MCRBqTDAb5zMx4E0WP5
	jRb4ZULnBdE5kBIobg3u5DSvaaNE0mOQqoPtpzLpnfwCzoq6LNh0+2hmdGsLFyfQhkR/4uGjjQqe/
	KQuVSUS4XUZx/SBNs9iSwCSXxTwFnRHPzIkSI/VgovAvGxThLaLPkxR+fGNA3YhXedArUnzlbKzLK
	ioa4ju5lhTIfS9BZp2dJmrF/LMos25Oi5S3QtJVww7KSEQC/LKcVknkqRY7HxCk4l9CqxmYfAgNfx
	qFszyms8Ga6lvFxXk4GwwkPD5UWYwGiewHDuvg3Q6qlH4vogLLbs56oyMmP6eTDG8vQ7gzQyc2JU0
	GAGnlRWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gZ-0000000BUS0-37sI;
	Tue, 27 May 2025 20:14:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gT-0000000BUMn-3cqP
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 20:14:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-0002Ho-LA; Tue, 27 May 2025 22:14:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-000TVR-1Q;
	Tue, 27 May 2025 22:14:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-003jQO-18;
	Tue, 27 May 2025 22:14:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 May 2025 22:13:55 +0200
Message-Id: <20250527201359.889550-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527201359.889550-1-a.fatoum@pengutronix.de>
References: <20250527201359.889550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_131401_904571_F0F7457D 
X-CRM114-Status: GOOD (  12.38  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] treewide: specify __printf attribute directly on static definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On a declaration, __printf can come at the end, but for a definition, it
is not accepted after argument list and before the curly brace, so
instead of having a declaration with the attribute as well as a
definition, just have a single definition and move the __printf to the
start.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c       |  6 ++----
 include/linux/printk.h | 11 ++++-------
 include/printf.h       |  3 +--
 3 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index ecb3e7b64cc1..342422ea1a11 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
+#include <linux/compiler.h>
 #include <efi.h>
 #include <efi/efi-util.h>
 #include <malloc.h>
@@ -15,10 +16,7 @@ struct string {
 	unsigned used;
 };
 
-char *cprintf(struct string *str, const char *fmt, ...)
-    __attribute__ ((format(__printf__, 2, 3)));
-
-char *cprintf(struct string *str, const char *fmt, ...)
+static __printf(2, 3) char *cprintf(struct string *str, const char *fmt, ...)
 {
 	void *buf = str->str;
 	unsigned bufsize = 0;
diff --git a/include/linux/printk.h b/include/linux/printk.h
index d4aafc84e2dd..f1f76fb71859 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -3,6 +3,7 @@
 #define __LINUX_PRINTK_H
 
 #include <linux/list.h>
+#include <linux/compiler.h>
 #include <linux/err.h>
 #include <printf.h>
 #include <stdarg.h>
@@ -40,9 +41,7 @@ int dev_printf(int level, const struct device *dev, const char *format, ...)
 int pr_print(int level, const char *format, ...)
 	__attribute__ ((format(__printf__, 2, 3)));
 #else
-static int pr_print(int level, const char *format, ...)
-	__attribute__ ((format(__printf__, 2, 3)));
-static inline int pr_print(int level, const char *format, ...)
+static inline __printf(2, 3) int pr_print(int level, const char *format, ...)
 {
 	return 0;
 }
@@ -104,10 +103,8 @@ static inline int pr_print(int level, const char *format, ...)
 int dev_err_probe(struct device *dev, int err, const char *fmt, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
 #elif !defined(dev_err_probe)
-static int dev_err_probe(struct device *dev, int err, const char *fmt, ...)
-	__attribute__ ((format(__printf__, 3, 4)));
-static inline int dev_err_probe(struct device *dev, int err, const char *fmt,
-				...)
+static inline __printf(3, 4) int dev_err_probe(struct device *dev,
+			       int err, const char *fmt, ...)
 {
 	return err;
 }
diff --git a/include/printf.h b/include/printf.h
index 9a84850d02bf..eac78aec92c1 100644
--- a/include/printf.h
+++ b/include/printf.h
@@ -20,8 +20,7 @@ struct device;
 	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
 int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 #else
-static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-static inline int printf(const char *fmt, ...)
+static inline __printf(1, 2) int printf(const char *fmt, ...)
 {
 	return 0;
 }
-- 
2.39.5



