Delivery-date: Fri, 10 Nov 2023 22:45:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZK8-006U0I-1N
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 22:45:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZK8-0004pz-6V
	for lore@pengutronix.de; Fri, 10 Nov 2023 22:45:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vPhAedz4hajPwe9MvLdL41SevvXqxxitC88piAPxtc8=; b=3kJ60sHdI4dAZ+/6B2UDP0XFYr
	Lj55EnN4f8CjTOVFc4tVzSJGw+YRYLdziXaKiDIaEx+ssqYhHhx14pF/9A0oCXBgFl9z69PVc3VQR
	gc0tWEmbj9r8uP4l0SXal0NCedhT4u6kNflIXJIMaYQZzpkjncyy3LHBvLCqD00Zqhr7f2bYf+c4c
	CyUe0qOvtOEHt5KArvRdFvXPX0ke0GlhSuUn6MRLNHFzBMV1psJvj58Rv1YU5euLLGI71O+Tv7ilH
	u4hCoSEKh/uolhg+9El8b2W/kfkSbHOhrDbJq/VnacsiYjQ7rp0aCt0NQxs0ZfVGFzQCUKNTw4uhJ
	UBsiK2AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIt-009UGW-2M;
	Fri, 10 Nov 2023 21:44:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIl-009UCA-0d
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 21:44:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0004DM-PH; Fri, 10 Nov 2023 22:44:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0086yM-CL; Fri, 10 Nov 2023 22:44:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-0x;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:08 +0100
Message-Id: <20231110214421.2726093-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_134431_259592_0D39C8B9 
X-CRM114-Status: GOOD (  18.45  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/18] asm-generic: split off typeconfused readl and friends
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The MMIO accessors in barebox like readl have the error prone
peculiarity of accepting integer arguments to pointers automatically,
which makes it easy to confuse address and data.

We will add an alternative less error-probe way for new code, so first
split off the typeconfused code into a separate file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/io-typeconfused.h | 75 +++++++++++++++++++++++++++
 include/asm-generic/io.h              | 57 +-------------------
 2 files changed, 76 insertions(+), 56 deletions(-)
 create mode 100644 include/asm-generic/io-typeconfused.h

diff --git a/include/asm-generic/io-typeconfused.h b/include/asm-generic/io-typeconfused.h
new file mode 100644
index 000000000000..d25ed7db2473
--- /dev/null
+++ b/include/asm-generic/io-typeconfused.h
@@ -0,0 +1,75 @@
+/* Generic I/O port emulation, based on MN10300 code
+ *
+ * Copyright (C) 2007 Red Hat, Inc. All Rights Reserved.
+ * Written by David Howells (dhowells@redhat.com)
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public Licence
+ * as published by the Free Software Foundation; either version
+ * 2 of the Licence, or (at your option) any later version.
+ */
+#ifndef __ASM_GENERIC_IO_TYPECONFUSED_H
+#define __ASM_GENERIC_IO_TYPECONFUSED_H
+
+#include <linux/string.h> /* for memset() and memcpy() */
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <asm/byteorder.h>
+
+/*****************************************************************************/
+/*
+ * Unlike the definitions in <asm-generic/io.h>, these macros don't complain
+ * about integer arguments and just silently cast them to pointers. This is
+ * a common cause of bugs, but lots of existing code depends on this, so
+ * this header is provided as a transitory measure.
+ */
+
+#ifndef __raw_readb
+#define __raw_readb(a)		(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a))
+#endif
+
+#ifndef __raw_readw
+#define __raw_readw(a)		(__chk_io_ptr(a), *(volatile unsigned short __force *)(a))
+#endif
+
+#ifndef __raw_readl
+#define __raw_readl(a)		(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a))
+#endif
+
+#ifndef readb
+#define readb __raw_readb
+#endif
+
+#ifndef readw
+#define readw(addr) __le16_to_cpu(__raw_readw(addr))
+#endif
+
+#ifndef readl
+#define readl(addr) __le32_to_cpu(__raw_readl(addr))
+#endif
+
+#ifndef __raw_writeb
+#define __raw_writeb(v,a)	(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a) = (v))
+#endif
+
+#ifndef __raw_writew
+#define __raw_writew(v,a)	(__chk_io_ptr(a), *(volatile unsigned short __force *)(a) = (v))
+#endif
+
+#ifndef __raw_writel
+#define __raw_writel(v,a)	(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a) = (v))
+#endif
+
+#ifndef writeb
+#define writeb __raw_writeb
+#endif
+
+#ifndef writew
+#define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
+#endif
+
+#ifndef writel
+#define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
+#endif
+
+#endif /* __ASM_GENERIC_IO_TYPECONFUSED_H */
diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index ab439026928a..6383d71746f1 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -15,62 +15,7 @@
 #include <linux/compiler.h>
 #include <linux/types.h>
 #include <asm/byteorder.h>
-
-/*****************************************************************************/
-/*
- * readX/writeX() are used to access memory mapped devices. On some
- * architectures the memory mapped IO stuff needs to be accessed
- * differently. On the simple architectures, we just read/write the
- * memory location directly.
- */
-
-#ifndef __raw_readb
-#define __raw_readb(a)		(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a))
-#endif
-
-#ifndef __raw_readw
-#define __raw_readw(a)		(__chk_io_ptr(a), *(volatile unsigned short __force *)(a))
-#endif
-
-#ifndef __raw_readl
-#define __raw_readl(a)		(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a))
-#endif
-
-#ifndef readb
-#define readb __raw_readb
-#endif
-
-#ifndef readw
-#define readw(addr) __le16_to_cpu(__raw_readw(addr))
-#endif
-
-#ifndef readl
-#define readl(addr) __le32_to_cpu(__raw_readl(addr))
-#endif
-
-#ifndef __raw_writeb
-#define __raw_writeb(v,a)	(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a) = (v))
-#endif
-
-#ifndef __raw_writew
-#define __raw_writew(v,a)	(__chk_io_ptr(a), *(volatile unsigned short __force *)(a) = (v))
-#endif
-
-#ifndef __raw_writel
-#define __raw_writel(v,a)	(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a) = (v))
-#endif
-
-#ifndef writeb
-#define writeb __raw_writeb
-#endif
-
-#ifndef writew
-#define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
-#endif
-
-#ifndef writel
-#define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
-#endif
+#include <asm-generic/io-typeconfused.h>
 
 #ifdef CONFIG_64BIT
 static inline u64 __raw_readq(const volatile void __iomem *addr)
-- 
2.39.2



