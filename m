Delivery-date: Mon, 06 Jan 2025 11:38:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUkVI-00HRzM-0d
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 11:38:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUkVI-0007eP-3y
	for lore@pengutronix.de; Mon, 06 Jan 2025 11:38:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HHFPFgtG9Q+NJegZCCxhk9THCVmR/DhrvaGU10puClE=; b=BaS1jueXRekXfKQg6OYhTdwRp4
	lZZpYgp835YO4osSPBizP5AWc5u5mLAq/qzdFSFzF6qz485bPk9fTM9WcGIFQNwkzk+8r+NUNup1g
	vlQIXHGCIdCKFNYf9LI1KMp4aqzAwW3igyBszZB/r/CMkZYKorDCiEboq+iZdjJi0o1wwRejTyNLA
	z1qHbMiT1nKBgfaO79jkV3HoGie5daFSsaINb6aTZW8B0CeZGBg63XCgVQles1W9fJMAEbudcw+Wj
	Nkr83/Iv6J2HdpRqvyNp3s4KVGQ7MKA0aAxMXAJbkcs/rtcv+IL/dOhPCHaJ2IxgLckdoKFSZ5ype
	VcKe5v3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUkUt-00000000t12-1L81;
	Mon, 06 Jan 2025 10:38:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUkUS-00000000swJ-24et
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 10:37:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUkUQ-0007Vo-Qo; Mon, 06 Jan 2025 11:37:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUkUP-0079Rx-2q;
	Mon, 06 Jan 2025 11:37:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUkUQ-004Kd4-1k;
	Mon, 06 Jan 2025 11:37:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 11:37:41 +0100
Message-Id: <20250106103741.1022357-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <to=<20250106091906.3435166-1-a.fatoum@pengutronix.de>
References: <to=<20250106091906.3435166-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_023744_561967_30FA6EDC 
X-CRM114-Status: GOOD (  12.50  )
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
Subject: [PATCH] fixup! include: rename printk.h to printf.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Missing file...

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/printf.h | 63 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 include/printf.h

diff --git a/include/printf.h b/include/printf.h
new file mode 100644
index 000000000000..9a84850d02bf
--- /dev/null
+++ b/include/printf.h
@@ -0,0 +1,63 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __PRINTF_H
+#define __PRINTF_H
+
+#include <linux/types.h>
+
+struct device;
+
+#define KERN_EMERG      ""   /* system is unusable                   */
+#define KERN_ALERT      ""   /* action must be taken immediately     */
+#define KERN_CRIT       ""   /* critical conditions                  */
+#define KERN_ERR        ""   /* error conditions                     */
+#define KERN_WARNING    ""   /* warning conditions                   */
+#define KERN_NOTICE     ""   /* normal but significant condition     */
+#define KERN_INFO       ""   /* informational                        */
+#define KERN_DEBUG      ""   /* debug-level messages                 */
+#define KERN_CONT       ""
+
+#if (IN_PROPER && !defined(CONFIG_CONSOLE_NONE)) || \
+	(IN_PBL && defined(CONFIG_PBL_CONSOLE))
+int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+#else
+static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+static inline int printf(const char *fmt, ...)
+{
+	return 0;
+}
+#endif
+
+void __attribute__((noreturn)) panic(const char *fmt, ...);
+void __attribute__((noreturn)) panic_no_stacktrace(const char *fmt, ...);
+
+#define printk			printf
+
+enum {
+	DUMP_PREFIX_NONE,
+	DUMP_PREFIX_ADDRESS,
+	DUMP_PREFIX_OFFSET
+};
+extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
+			      int groupsize, char *linebuf, size_t linebuflen,
+			      bool ascii);
+extern void dev_print_hex_dump(struct device *dev, const char *level,
+			       const char *prefix_str, int prefix_type,
+			       int rowsize, int groupsize, const void *buf,
+			       size_t len, bool ascii);
+
+#define print_hex_dump(level, prefix_str, prefix_type, rowsize,		       \
+			     groupsize, buf, len, ascii)		       \
+	dev_print_hex_dump(NULL, level, prefix_str, prefix_type, rowsize,      \
+		       groupsize, buf, len, ascii)
+
+#ifdef CONFIG_ARCH_HAS_STACK_DUMP
+void dump_stack(void);
+#else
+static inline void dump_stack(void)
+{
+	printf("no stack data available\n");
+}
+#endif
+
+
+#endif
-- 
2.39.5



