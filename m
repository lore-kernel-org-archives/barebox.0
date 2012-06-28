Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkJWS-0007oZ-3i
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 18:32:56 +0000
Received: by bkwj4 with SMTP id j4so2505965bkw.36
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2012 11:32:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2012 22:32:31 +0400
Message-Id: <1340908354-17895-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/5] byteorder: add sanity check
To: barebox@lists.infradead.org

The Linux Kernel defines only one of __LITTLE_ENDIAN and
__BIG_ENDIAN. Endianess can then be tested with #ifdef __xx_ENDIAN.

Userspace always defined both __LITTLE_ENDIAN and __BIG_ENDIAN
and byteorder can then be tested with #if __BYTE_ORDER == __xx_ENDIAN.

As we tend to use a lot of Kernel code in barebox we use
the kernel way of determing the byte order. Make sure here
 that architecture code properly defines it.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/common.h |   18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/common.h b/include/common.h
index 9745aeb..ece3d13 100644
--- a/include/common.h
+++ b/include/common.h
@@ -241,4 +241,22 @@ static inline void barebox_banner(void) {}
 		(__x < 0) ? -__x : __x;         \
 	})
 
+/*
+ * sanity check. The Linux Kernel defines only one of __LITTLE_ENDIAN and
+ * __BIG_ENDIAN. Endianess can then be tested with #ifdef __xx_ENDIAN.
+ * Userspace always defined both __LITTLE_ENDIAN and __BIG_ENDIAN and
+ * byteorder can then be tested with #if __BYTE_ORDER == __xx_ENDIAN.
+ *
+ * As we tend to use a lot of Kernel code in barebox we use the kernel way of
+ * determing the byte order. Make sure here that architecture code properly
+ * defines it.
+ */
+#include <asm/byteorder.h>
+#if defined(__LITTLE_ENDIAN) && defined(__BIG_ENDIAN)
+#error "both __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
+#endif
+#if !defined(__LITTLE_ENDIAN) && !defined(__BIG_ENDIAN)
+#error "None of __LITTLE_ENDIAN and __BIG_ENDIAN are defined"
+#endif
+
 #endif	/* __COMMON_H_ */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
