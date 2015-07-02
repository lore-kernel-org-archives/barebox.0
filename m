Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAYFp-0005xC-NY
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:45:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 08:45:24 +0200
Message-Id: <1435819524-13516-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435819524-13516-1-git-send-email-s.hauer@pengutronix.de>
References: <1435819524-13516-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] treewide: replace __inline__ with inline
To: Barebox List <barebox@lists.infradead.org>

inline is preferred over __inline__

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/include/asm/swab.h | 8 ++++----
 arch/ppc/include/asm/bitops.h    | 2 +-
 arch/ppc/include/asm/swab.h      | 8 ++++----
 include/linux/bitops.h           | 4 ++--
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/blackfin/include/asm/swab.h b/arch/blackfin/include/asm/swab.h
index 89de650..1f645db 100644
--- a/arch/blackfin/include/asm/swab.h
+++ b/arch/blackfin/include/asm/swab.h
@@ -12,7 +12,7 @@
 
 #ifdef __GNUC__
 
-static __inline__ __attribute_const__ __u32 __arch_swahb32(__u32 xx)
+static inline __attribute_const__ __u32 __arch_swahb32(__u32 xx)
 {
 	__u32 tmp;
 	__asm__("%1 = %0 >> 8 (V);\n\t"
@@ -23,7 +23,7 @@ static __inline__ __attribute_const__ __u32 __arch_swahb32(__u32 xx)
 }
 #define __arch_swahb32 __arch_swahb32
 
-static __inline__ __attribute_const__ __u32 __arch_swahw32(__u32 xx)
+static inline __attribute_const__ __u32 __arch_swahw32(__u32 xx)
 {
 	__u32 rv;
 	__asm__("%0 = PACK(%1.L, %1.H);\n\t": "=d"(rv): "d"(xx));
@@ -31,13 +31,13 @@ static __inline__ __attribute_const__ __u32 __arch_swahw32(__u32 xx)
 }
 #define __arch_swahw32 __arch_swahw32
 
-static __inline__ __attribute_const__ __u32 __arch_swab32(__u32 xx)
+static inline __attribute_const__ __u32 __arch_swab32(__u32 xx)
 {
 	return __arch_swahb32(__arch_swahw32(xx));
 }
 #define __arch_swab32 __arch_swab32
 
-static __inline__ __attribute_const__ __u16 __arch_swab16(__u16 xx)
+static inline __attribute_const__ __u16 __arch_swab16(__u16 xx)
 {
 	__u32 xw = xx;
 	__asm__("%0 <<= 8;\n	%0.L = %0.L + %0.H (NS);\n": "+d"(xw));
diff --git a/arch/ppc/include/asm/bitops.h b/arch/ppc/include/asm/bitops.h
index f126b48..2fdd57e 100644
--- a/arch/ppc/include/asm/bitops.h
+++ b/arch/ppc/include/asm/bitops.h
@@ -153,7 +153,7 @@ static inline int ffz(unsigned int x)
 	return __ilog2(x & -x);
 }
 
-static __inline__ int __ffs(unsigned long x)
+static inline int __ffs(unsigned long x)
 {
 	return __ilog2(x & -x);
 }
diff --git a/arch/ppc/include/asm/swab.h b/arch/ppc/include/asm/swab.h
index c581e3e..110488e 100644
--- a/arch/ppc/include/asm/swab.h
+++ b/arch/ppc/include/asm/swab.h
@@ -19,7 +19,7 @@
 
 #ifdef __KERNEL__
 
-static __inline__ __u16 ld_le16(const volatile __u16 *addr)
+static inline __u16 ld_le16(const volatile __u16 *addr)
 {
 	__u16 val;
 
@@ -28,7 +28,7 @@ static __inline__ __u16 ld_le16(const volatile __u16 *addr)
 }
 #define __arch_swab16p ld_le16
 
-static __inline__ void st_le16(volatile __u16 *addr, const __u16 val)
+static inline void st_le16(volatile __u16 *addr, const __u16 val)
 {
 	__asm__ __volatile__ ("sthbrx %1,0,%2" : "=m" (*addr) : "r" (val), "r" (addr));
 }
@@ -39,7 +39,7 @@ static inline void __arch_swab16s(__u16 *addr)
 }
 #define __arch_swab16s __arch_swab16s
 
-static __inline__ __u32 ld_le32(const volatile __u32 *addr)
+static inline __u32 ld_le32(const volatile __u32 *addr)
 {
 	__u32 val;
 
@@ -48,7 +48,7 @@ static __inline__ __u32 ld_le32(const volatile __u32 *addr)
 }
 #define __arch_swab32p ld_le32
 
-static __inline__ void st_le32(volatile __u32 *addr, const __u32 val)
+static inline void st_le32(volatile __u32 *addr, const __u32 val)
 {
 	__asm__ __volatile__ ("stwbrx %1,0,%2" : "=m" (*addr) : "r" (val), "r" (addr));
 }
diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index be5fd38..f3a740c 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -54,7 +54,7 @@ extern unsigned long __sw_hweight64(__u64 w);
 	     (bit) < (size);					\
 	     (bit) = find_next_zero_bit((addr), (size), (bit) + 1))
 
-static __inline__ int get_bitmask_order(unsigned int count)
+static inline int get_bitmask_order(unsigned int count)
 {
 	int order;
 
@@ -62,7 +62,7 @@ static __inline__ int get_bitmask_order(unsigned int count)
 	return order;	/* We could be slightly more clever with -1 here... */
 }
 
-static __inline__ int get_count_order(unsigned int count)
+static inline int get_count_order(unsigned int count)
 {
 	int order;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
