Delivery-date: Fri, 28 Nov 2025 13:56:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOy1p-005mv5-0I
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 13:56:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOy1o-0004Er-Ec
	for lore@pengutronix.de; Fri, 28 Nov 2025 13:56:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bahv1JYJ8I5P3s50zxs+mM4PbfZRsLhdx/ed8Woy4mg=; b=BdV9/5cq14Iij7CQ7peI4VUoTF
	cVEkgAWXqNwhB0GqGT3gJgwSGpGaRfXkLrtHhxed4zv5YUNc97osRR4kdG5HUmizq1elOZBKCzgfK
	HE5ccxxYgoA3GOh7E7Bl7clP29eYl+e6CX2Gl/Cpv2QtmMqemKYNW+Zoc9Gawo5P8netngkI7WgJp
	Mt92dro7YPXufFrvKzXc8vm0qf8/NkOunQgdyUODCjdLUFEdI5iAf7gTgbDD4aS1G3AvHIAcJHFQE
	e7KoopTCXcPPNQdTYchxsCCBASQkk35oTJDHViljIL92FVJBbFX9X2oGm3fvgOM8ubs1h2qBB4U+y
	Bt4sW32g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOy1Q-00000000RfD-16TV;
	Fri, 28 Nov 2025 12:56:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOy1L-00000000Rcv-09vp
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:56:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-00042t-Ld
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 13:56:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-002xLi-1U
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 13:56:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOy1J-00000002TQM-1CeT
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 13:56:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 13:50:04 +0100
Message-ID: <20251128125616.136559-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128125616.136559-1-a.fatoum@pengutronix.de>
References: <20251128125616.136559-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_045619_119438_632B1562 
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] include: move sprintf prototypes to new linux/sprintf.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The <stdio.h> header mixes console and sprintf functionality. Get a
little closer to the Linux split by moving the sprintf family of
functions to <linux/sprintf.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/sprintf.h | 48 +++++++++++++++++++++++++++++++++++++++++
 include/stdio.h         | 39 +--------------------------------
 2 files changed, 49 insertions(+), 38 deletions(-)
 create mode 100644 include/linux/sprintf.h

diff --git a/include/linux/sprintf.h b/include/linux/sprintf.h
new file mode 100644
index 000000000000..349773d3e16a
--- /dev/null
+++ b/include/linux/sprintf.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_KERNEL_SPRINTF_H_
+#define _LINUX_KERNEL_SPRINTF_H_
+
+#include <linux/types.h>
+#include <stdarg.h>
+
+int sprintf(char *buf, const char *fmt, ...) __printf(2, 3);
+int snprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
+int scnprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
+int vsprintf(char *buf, const char *fmt, va_list args);
+int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
+int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
+
+#if IN_PROPER || defined(CONFIG_PBL_CONSOLE)
+int asprintf(char **strp, const char *fmt, ...) __printf(2, 3);
+char *bvasprintf(const char *fmt, va_list ap);
+int vasprintf(char **strp, const char *fmt, va_list ap);
+int vrasprintf(char **strp, const char *fmt, va_list ap);
+int rasprintf(char **strp, const char *fmt, ...) __printf(2, 3);
+#else
+static inline __printf(2, 3) int asprintf(char **strp, const char *fmt, ...)
+{
+	return -1;
+}
+static inline char *bvasprintf(const char *fmt, va_list ap)
+{
+	return NULL;
+}
+static inline int vasprintf(char **strp, const char *fmt, va_list ap)
+{
+	return -1;
+}
+static inline int vrasprintf(char **strp, const char *fmt, va_list ap)
+{
+	return -1;
+}
+static inline __printf(2, 3) int rasprintf(char **strp, const char *fmt, ...)
+{
+	return -1;
+}
+#endif
+
+#define basprintf xasprintf
+
+const char *size_human_readable(unsigned long long size);
+
+#endif	/* _LINUX_KERNEL_SPRINTF_H */
diff --git a/include/stdio.h b/include/stdio.h
index f3e430b3b3d5..c0043b08bcc5 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -6,47 +6,11 @@
 #include <console.h>
 #include <printf.h>
 #include <xfuncs.h>
+#include <linux/sprintf.h>
 
 /*
  * STDIO based functions (can always be used)
  */
-int sprintf(char *buf, const char *fmt, ...) __printf(2, 3);
-int snprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
-int scnprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
-int vsprintf(char *buf, const char *fmt, va_list args);
-int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
-int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
-
-#if IN_PROPER || defined(CONFIG_PBL_CONSOLE)
-int asprintf(char **strp, const char *fmt, ...) __printf(2, 3);
-char *bvasprintf(const char *fmt, va_list ap);
-int vasprintf(char **strp, const char *fmt, va_list ap);
-int vrasprintf(char **strp, const char *fmt, va_list ap);
-int rasprintf(char **strp, const char *fmt, ...) __printf(2, 3);
-#else
-static inline __printf(2, 3) int asprintf(char **strp, const char *fmt, ...)
-{
-	return -1;
-}
-static inline char *bvasprintf(const char *fmt, va_list ap)
-{
-	return NULL;
-}
-static inline int vasprintf(char **strp, const char *fmt, va_list ap)
-{
-	return -1;
-}
-static inline int vrasprintf(char **strp, const char *fmt, va_list ap)
-{
-	return -1;
-}
-static inline __printf(2, 3) int rasprintf(char **strp, const char *fmt, ...)
-{
-	return -1;
-}
-#endif
-
-#define basprintf xasprintf
 
 #ifdef CONFIG_ARCH_HAS_CTRLC
 int arch_ctrlc(void);
@@ -113,7 +77,6 @@ static inline void console_ctrlc_allow(void) { }
 static inline void console_ctrlc_forbid(void) { }
 #endif
 
-const char *size_human_readable(unsigned long long size);
 int readline(const char *prompt, char *buf, int len);
 
 #if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
-- 
2.47.3



