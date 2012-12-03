Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaRh-0004ra-AB
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:08:47 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:18 +0000
Message-Id: <1354558114-28799-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 02/18] UBIFS: preparation
To: barebox@lists.infradead.org

A new type is added (linux/types.h) in preparation to the introduction of
the UBIFS support. Also functions to do bit operations are added.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 include/linux/bitops.h |   32 ++++++++++++++++++++++++++++++++
 include/linux/types.h  |    2 ++
 2 files changed, 34 insertions(+), 0 deletions(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 127c161..a7125fb 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -12,4 +12,36 @@
 #include <asm/bitops.h>
 
 
+#ifndef PLATFORM__SET_BIT
+# define __set_bit generic_set_bit
+#endif
+
+#ifndef PLATFORM__CLEAR_BIT
+# define __clear_bit generic_clear_bit
+#endif
+
+/**
+ * __set_bit - Set a bit in memory
+ * @nr: the bit to set
+ * @addr: the address to start counting from
+ *
+ * Unlike set_bit(), this function is non-atomic and may be reordered.
+ * If it's called on the same region of memory simultaneously, the effect
+ * may be that only one operation succeeds.
+ */
+static inline void generic_set_bit(int nr, volatile unsigned long *addr)
+{
+	unsigned long mask = BIT_MASK(nr);
+	unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
+
+	*p  |= mask;
+}
+
+static inline void generic_clear_bit(int nr, volatile unsigned long *addr)
+{
+	unsigned long mask = BIT_MASK(nr);
+	unsigned long *p = ((unsigned long *)addr) + BIT_WORD(nr);
+
+	*p &= ~mask;
+}
 #endif
diff --git a/include/linux/types.h b/include/linux/types.h
index 76c6b67..888c60e 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -142,6 +142,8 @@ typedef __u64 __bitwise __be64;
 typedef __u16 __bitwise __sum16;
 typedef __u32 __bitwise __wsum;
 
+typedef unsigned __bitwise__ gfp_t;
+
 #ifdef CONFIG_PHYS_ADDR_T_64BIT
 typedef u64 phys_addr_t;
 typedef u64 phys_size_t;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
