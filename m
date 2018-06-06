Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdRJ-0000JJ-W8
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:47 +0000
Received: by mail-pg0-x241.google.com with SMTP id e11-v6so3446368pgq.0
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:44:24 -0700
Message-Id: <20180606184431.10348-32-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 31/38] Port <linux/iopoll.h> from U-Boot
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/iopoll.h | 69 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 include/linux/iopoll.h

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
new file mode 100644
index 000000000..6e8a6fd71
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
+ * @timeout_ns: Timeout in ns, 0 means never timeout
+ *
+ * Returns 0 on success and -ETIMEDOUT upon a timeout. In either
+ * case, the last read value at @addr is stored in @val.
+ *
+ * When available, you'll probably want to use one of the specialized
+ * macros defined below rather than this macro directly.
+ */
+#define readx_poll_timeout(op, addr, val, cond, timeout_ns)	\
+({ \
+	uint64_t start = get_time_ns(); \
+	for (;;) { \
+		(val) = op(addr); \
+		if (cond) \
+			break; \
+		if (timeout_ns && \
+		    is_timeout(start, (timeout_ns))) {	\
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
