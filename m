Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4T-0006Ne-4q
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:25 +0000
Received: by lagx9 with SMTP id x9so31437664lag.1
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:03 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.01
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:39 +0300
Message-Id: <1436991230-14251-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
References: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 01/12] picotcp: add barebox target support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/picotcp/include/arch/pico_barebox.h | 76 +++++++++++++++++++++++++++++++++
 net/picotcp/include/pico_config.h       |  2 +
 2 files changed, 78 insertions(+)

diff --git a/net/picotcp/include/arch/pico_barebox.h b/net/picotcp/include/arch/pico_barebox.h
new file mode 100644
index 0000000..11e6ed3
--- /dev/null
+++ b/net/picotcp/include/arch/pico_barebox.h
@@ -0,0 +1,76 @@
+#ifndef PICO_SUPPORT_BAREBOX
+#define PICO_SUPPORT_BAREBOX
+
+#include <string.h>
+#include <stdio.h>
+#include <malloc.h>
+#include <clock.h>
+#include <linux/math64.h>
+
+/*
+   #define MEMORY_MEASURE
+ */
+#define dbg printf
+
+#define stack_fill_pattern(...) do {} while(0)
+#define stack_count_free_words(...) do {} while(0)
+#define stack_get_free_words() (0)
+
+/* measure allocated memory */
+#ifdef MEMORY_MEASURE
+extern uint32_t max_mem;
+extern uint32_t cur_mem;
+
+static inline void *pico_zalloc(int x)
+{
+    uint32_t *ptr;
+    if ((cur_mem + x) > (10 * 1024))
+        return NULL;
+
+    ptr = (uint32_t *)calloc(x + 4, 1);
+    *ptr = (uint32_t)x;
+    cur_mem += x;
+    if (cur_mem > max_mem) {
+        max_mem = cur_mem;
+    }
+
+    return (void*)(ptr + 1);
+}
+
+static inline void pico_free(void *x)
+{
+    uint32_t *ptr = (uint32_t*)(((uint8_t *)x) - 4);
+    cur_mem -= *ptr;
+    free(ptr);
+}
+#else
+
+#define pico_zalloc(x) calloc(x, 1)
+#define pico_free(x) free(x)
+#endif
+
+static inline uint32_t PICO_TIME(void)
+{
+    uint64_t time;
+
+    time = get_time_ns();
+    do_div(time, 1000000000);
+
+    return (uint32_t) time;
+}
+
+static inline uint32_t PICO_TIME_MS(void)
+{
+    uint64_t time;
+
+    time = get_time_ns();
+    do_div(time, 1000000);
+
+    return (uint32_t) time;
+}
+
+static inline void PICO_IDLE(void)
+{
+}
+
+#endif /* PICO_SUPPORT_BAREBOX */
diff --git a/net/picotcp/include/pico_config.h b/net/picotcp/include/pico_config.h
index 6b9c040..79aaadc 100644
--- a/net/picotcp/include/pico_config.h
+++ b/net/picotcp/include/pico_config.h
@@ -211,6 +211,8 @@ static inline uint64_t long_long_be(uint64_t le)
 # include "arch/pico_none.h"
 #elif defined GENERIC
 # include "arch/pico_generic_gcc.h"
+#elif defined __BAREBOX__
+# include "arch/pico_barebox.h"
 #elif defined __KERNEL__
 # include "arch/pico_linux.h"
 /* #elif defined ... */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
