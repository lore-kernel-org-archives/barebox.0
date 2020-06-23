Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnohU-0000Py-Dc
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 19:35:25 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 23 Jun 2020 21:35:05 +0200
Message-Id: <20200623193506.13716-4-cleger@kalray.eu>
In-Reply-To: <20200623193506.13716-1-cleger@kalray.eu>
References: <20200623193506.13716-1-cleger@kalray.eu>
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
Subject: [PATCH 3/4] kvx: add D-cache inval and I-cache sync
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Before booting, we must make sure the I-cache is synchronized with the
D-cache to execute loaded instructions. In order to do that, add a
function which execute a fence to ensure every memory accesses have
been committed out of processor pipeline to memory and then invalidate
I-cache to reload from memory. Moreover add a D-cache invalidation
routine to cleanup cache before booting.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/include/asm/cache.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 arch/kvx/include/asm/cache.h

diff --git a/arch/kvx/include/asm/cache.h b/arch/kvx/include/asm/cache.h
new file mode 100644
index 000000000..efda37ebd
--- /dev/null
+++ b/arch/kvx/include/asm/cache.h
@@ -0,0 +1,24 @@
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
+static inline void dcache_inval(void)
+{
+	__builtin_kvx_fence();
+	__builtin_kvx_dinval();
+}
+
+#endif /* __KVX_CACHE_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
