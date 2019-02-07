Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOg-0003YC-Gz
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id g189so3763496pgc.5
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:22:00 -0800
Message-Id: <20190207012214.5060-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190207012214.5060-1-andrew.smirnov@gmail.com>
References: <20190207012214.5060-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/16] include: Import io-64-nonatomic-*.h from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import io-64-nonatomic-*.h from Linux to be able to use various
non-atomic 64-bit I/O accessors.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/io-64-nonatomic-hi-lo.h | 32 ++++++++++++++++++++++++++++++++
 include/io-64-nonatomic-lo-hi.h | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 64 insertions(+)
 create mode 100644 include/io-64-nonatomic-hi-lo.h
 create mode 100644 include/io-64-nonatomic-lo-hi.h

diff --git a/include/io-64-nonatomic-hi-lo.h b/include/io-64-nonatomic-hi-lo.h
new file mode 100644
index 000000000..3393e6317
--- /dev/null
+++ b/include/io-64-nonatomic-hi-lo.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_IO_64_NONATOMIC_HI_LO_H_
+#define _LINUX_IO_64_NONATOMIC_HI_LO_H_
+
+#include <io.h>
+
+static inline __u64 hi_lo_readq(const volatile void __iomem *addr)
+{
+	const volatile u32 __iomem *p = addr;
+	u32 low, high;
+
+	high = readl(p + 1);
+	low = readl(p);
+
+	return low + ((u64)high << 32);
+}
+
+static inline void hi_lo_writeq(__u64 val, volatile void __iomem *addr)
+{
+	writel(val >> 32, addr + 4);
+	writel(val, addr);
+}
+
+#ifndef readq
+#define readq hi_lo_readq
+#endif
+
+#ifndef writeq
+#define writeq hi_lo_writeq
+#endif
+
+#endif	/* _LINUX_IO_64_NONATOMIC_HI_LO_H_ */
diff --git a/include/io-64-nonatomic-lo-hi.h b/include/io-64-nonatomic-lo-hi.h
new file mode 100644
index 000000000..62b402279
--- /dev/null
+++ b/include/io-64-nonatomic-lo-hi.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_IO_64_NONATOMIC_LO_HI_H_
+#define _LINUX_IO_64_NONATOMIC_LO_HI_H_
+
+#include <io.h>
+
+static inline __u64 lo_hi_readq(const volatile void __iomem *addr)
+{
+	const volatile u32 __iomem *p = addr;
+	u32 low, high;
+
+	low = readl(p);
+	high = readl(p + 1);
+
+	return low + ((u64)high << 32);
+}
+
+static inline void lo_hi_writeq(__u64 val, volatile void __iomem *addr)
+{
+	writel(val, addr);
+	writel(val >> 32, addr + 4);
+}
+
+#ifndef readq
+#define readq lo_hi_readq
+#endif
+
+#ifndef writeq
+#define writeq lo_hi_writeq
+#endif
+
+#endif	/* _LINUX_IO_64_NONATOMIC_LO_HI_H_ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
