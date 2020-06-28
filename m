Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jpZat-0006A5-3b
 for barebox@lists.infradead.org; Sun, 28 Jun 2020 15:51:49 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Sun, 28 Jun 2020 17:51:07 +0200
Message-Id: <20200628155108.29083-4-cleger@kalray.eu>
In-Reply-To: <20200628155108.29083-1-cleger@kalray.eu>
References: <20200628155108.29083-1-cleger@kalray.eu>
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
Subject: [PATCH v2 3/4] kvx: add I-cache and D-cache synchronisation
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Before booting, we must make sure the I-cache is synchronized with the
D-cache to execute loaded instructions. In order to do that, add a
function which execute a fence to ensure every memory accesses have
been committed out of processor pipeline to memory and then invalidate
I-cache to reload from memory.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/include/asm/cache.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 arch/kvx/include/asm/cache.h

diff --git a/arch/kvx/include/asm/cache.h b/arch/kvx/include/asm/cache.h
new file mode 100644
index 000000000..a3314d157
--- /dev/null
+++ b/arch/kvx/include/asm/cache.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Kalray Inc.
+ */
+
+#ifndef __KVX_CACHE_H
+#define __KVX_CACHE_H
+
+#include <linux/types.h>
+
+static inline void sync_dcache_icache(void)
+{
+	__builtin_kvx_fence();
+	__builtin_kvx_iinval();
+	__builtin_kvx_barrier();
+}
+
+#endif /* __KVX_CACHE_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
