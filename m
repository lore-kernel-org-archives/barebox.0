Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTffC-0004Uq-Dy
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 03:44:42 +0000
Received: by mail-pf0-x244.google.com with SMTP id b74-v6so4220244pfl.5
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 20:44:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 20:44:01 -0700
Message-Id: <20180615034409.22180-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180615034409.22180-1-andrew.smirnov@gmail.com>
References: <20180615034409.22180-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v7 02/10] Port <linux/iopoll.h> from U-Boot
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/clock.h        | 14 +++++++++
 include/linux/iopoll.h | 69 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 83 insertions(+)
 create mode 100644 include/linux/iopoll.h

diff --git a/include/clock.h b/include/clock.h
index 5f2f53ab6..58d84b912 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -25,13 +25,27 @@ static inline uint32_t cyc2ns(struct clocksource *cs, uint64_t cycles)
 
 int init_clock(struct clocksource *);
 
+#ifndef __PBL__
 uint64_t get_time_ns(void);
+#else
+static inline uint64_t get_time_ns(void)
+{
+	return 0;
+}
+#endif
 
 void clocks_calc_mult_shift(uint32_t *mult, uint32_t *shift, uint32_t from, uint32_t to, uint32_t maxsec);
 
 uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant);
 
+#ifndef __PBL__
 int is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
+#else
+static inline int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
+{
+	return 0;
+}
+#endif
 int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns);
 
 void ndelay(unsigned long nsecs);
diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
new file mode 100644
index 000000000..0213e5c8d
--- /dev/null
+++ b/include/linux/iopoll.h
@@ -0,0 +1,69 @@
+/*
+ * Copyright (c) 2012-2014 The Linux Foundation. All rights reserved.
+ *
+ * SPDX-License-Identifier:	GPL-2.0
+ */
+
+#ifndef _LINUX_IOPOLL_H
+#define _LINUX_IOPOLL_H
+
+#include <errno.h>
+#include <io.h>
+#include <clock.h>
+
+/**
+ * readx_poll_timeout - Periodically poll an address until a condition is met or a timeout occurs
+ * @op: accessor function (takes @addr as its only argument)
+ * @addr: Address to poll
+ * @val: Variable to read the value into
+ * @cond: Break condition (usually involving @val)
+ * @timeout_us: Timeout in us, 0 means never timeout
+ *
+ * Returns 0 on success and -ETIMEDOUT upon a timeout. In either
+ * case, the last read value at @addr is stored in @val.
+ *
+ * When available, you'll probably want to use one of the specialized
+ * macros defined below rather than this macro directly.
+ */
+#define readx_poll_timeout(op, addr, val, cond, timeout_us)	\
+({ \
+	uint64_t start = get_time_ns(); \
+	for (;;) { \
+		(val) = op(addr); \
+		if (cond) \
+			break; \
+		if (timeout_us && \
+		    is_timeout(start, ((timeout_us) * USECOND))) { \
+			(val) = op(addr); \
+			break; \
+		} \
+	} \
+	(cond) ? 0 : -ETIMEDOUT; \
+})
+
+
+#define readb_poll_timeout(addr, val, cond, timeout_us) \
+	readx_poll_timeout(readb, addr, val, cond, timeout_us)
+
+#define readw_poll_timeout(addr, val, cond, timeout_us) \
+	readx_poll_timeout(readw, addr, val, cond, timeout_us)
+
+#define readl_poll_timeout(addr, val, cond, timeout_us) \
+	readx_poll_timeout(readl, addr, val, cond, timeout_us)
+
+#define readq_poll_timeout(addr, val, cond, timeout_us) \
+	readx_poll_timeout(readq, addr, val, cond, timeout_us)
+
+#define readb_relaxed_poll_timeout(addr, val, cond, timeout_us) \
+	readx_poll_timeout(readb_relaxed, addr, val, cond, timeout_us)
+
+#define readw_relaxed_poll_timeout(addr, val, cond, timeout_us) \
+	readx_poll_timeout(readw_relaxed, addr, val, cond, timeout_us)
+
+#define readl_relaxed_poll_timeout(addr, val, cond, timeout_us) \
+	readx_poll_timeout(readl_relaxed, addr, val, cond, timeout_us)
+
+#define readq_relaxed_poll_timeout(addr, val, cond, timeout_us) \
+	readx_poll_timeout(readq_relaxed, addr, val, cond, timeout_us)
+
+#endif /* _LINUX_IOPOLL_H */
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
