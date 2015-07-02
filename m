Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAYFp-0005wP-NU
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:45:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 08:45:22 +0200
Message-Id: <1435819524-13516-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ppc: replace extern inline with static inline
To: Barebox List <barebox@lists.infradead.org>

Replaced in the kernel a long time ago, not compatible with gcc5.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/include/asm/atomic.h |  8 ++++----
 arch/ppc/include/asm/bitops.h | 18 +++++++++---------
 arch/ppc/include/asm/io.h     | 20 ++++++++++----------
 3 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/ppc/include/asm/atomic.h b/arch/ppc/include/asm/atomic.h
index 23f22df..a98d892 100644
--- a/arch/ppc/include/asm/atomic.h
+++ b/arch/ppc/include/asm/atomic.h
@@ -21,7 +21,7 @@ typedef struct { int counter; } atomic_t;
 extern void atomic_clear_mask(unsigned long mask, unsigned long *addr);
 extern void atomic_set_mask(unsigned long mask, unsigned long *addr);
 
-extern __inline__ int atomic_add_return(int a, atomic_t *v)
+static inline int atomic_add_return(int a, atomic_t *v)
 {
 	int t;
 
@@ -37,7 +37,7 @@ extern __inline__ int atomic_add_return(int a, atomic_t *v)
 	return t;
 }
 
-extern __inline__ int atomic_sub_return(int a, atomic_t *v)
+static inline int atomic_sub_return(int a, atomic_t *v)
 {
 	int t;
 
@@ -53,7 +53,7 @@ extern __inline__ int atomic_sub_return(int a, atomic_t *v)
 	return t;
 }
 
-extern __inline__ int atomic_inc_return(atomic_t *v)
+static inline int atomic_inc_return(atomic_t *v)
 {
 	int t;
 
@@ -69,7 +69,7 @@ extern __inline__ int atomic_inc_return(atomic_t *v)
 	return t;
 }
 
-extern __inline__ int atomic_dec_return(atomic_t *v)
+static inline int atomic_dec_return(atomic_t *v)
 {
 	int t;
 
diff --git a/arch/ppc/include/asm/bitops.h b/arch/ppc/include/asm/bitops.h
index e4572bc..f126b48 100644
--- a/arch/ppc/include/asm/bitops.h
+++ b/arch/ppc/include/asm/bitops.h
@@ -28,7 +28,7 @@
  * These used to be if'd out here because using : "cc" as a constraint
  * resulted in errors from egcs.  Things may be OK with gcc-2.95.
  */
-extern __inline__ void set_bit(int nr, volatile void * addr)
+static inline void set_bit(int nr, volatile void * addr)
 {
 	unsigned long old;
 	unsigned long mask = 1 << (nr & 0x1f);
@@ -45,7 +45,7 @@ extern __inline__ void set_bit(int nr, volatile void * addr)
 	: "cc" );
 }
 
-extern __inline__ void clear_bit(int nr, volatile void *addr)
+static inline void clear_bit(int nr, volatile void *addr)
 {
 	unsigned long old;
 	unsigned long mask = 1 << (nr & 0x1f);
@@ -62,7 +62,7 @@ extern __inline__ void clear_bit(int nr, volatile void *addr)
 	: "cc");
 }
 
-extern __inline__ void change_bit(int nr, volatile void *addr)
+static inline void change_bit(int nr, volatile void *addr)
 {
 	unsigned long old;
 	unsigned long mask = 1 << (nr & 0x1f);
@@ -79,7 +79,7 @@ extern __inline__ void change_bit(int nr, volatile void *addr)
 	: "cc");
 }
 
-extern __inline__ int test_and_set_bit(int nr, volatile void *addr)
+static inline int test_and_set_bit(int nr, volatile void *addr)
 {
 	unsigned int old, t;
 	unsigned int mask = 1 << (nr & 0x1f);
@@ -98,7 +98,7 @@ extern __inline__ int test_and_set_bit(int nr, volatile void *addr)
 	return (old & mask) != 0;
 }
 
-extern __inline__ int test_and_clear_bit(int nr, volatile void *addr)
+static inline int test_and_clear_bit(int nr, volatile void *addr)
 {
 	unsigned int old, t;
 	unsigned int mask = 1 << (nr & 0x1f);
@@ -117,7 +117,7 @@ extern __inline__ int test_and_clear_bit(int nr, volatile void *addr)
 	return (old & mask) != 0;
 }
 
-extern __inline__ int test_and_change_bit(int nr, volatile void *addr)
+static inline int test_and_change_bit(int nr, volatile void *addr)
 {
 	unsigned int old, t;
 	unsigned int mask = 1 << (nr & 0x1f);
@@ -138,7 +138,7 @@ extern __inline__ int test_and_change_bit(int nr, volatile void *addr)
 #endif /* __INLINE_BITOPS */
 
 /* Return the bit position of the most significant 1 bit in a word */
-extern __inline__ int __ilog2(unsigned int x)
+static inline int __ilog2(unsigned int x)
 {
 	int lz;
 
@@ -146,7 +146,7 @@ extern __inline__ int __ilog2(unsigned int x)
 	return 31 - lz;
 }
 
-extern __inline__ int ffz(unsigned int x)
+static inline int ffz(unsigned int x)
 {
 	if ((x = ~x) == 0)
 		return 32;
@@ -177,7 +177,7 @@ static inline int fls(unsigned int x)
  * the libc and compiler builtin ffs routines, therefore
  * differs in spirit from the above ffz (man ffs).
  */
-extern __inline__ int ffs(int x)
+static inline int ffs(int x)
 {
 	return __ilog2(x & -x) + 1;
 }
diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
index 98bf513..f83ab6e 100644
--- a/arch/ppc/include/asm/io.h
+++ b/arch/ppc/include/asm/io.h
@@ -136,7 +136,7 @@ static inline void __raw_writel(unsigned int v, volatile void __iomem *addr)
 /*
  * 8, 16 and 32 bit, big and little endian I/O operations, with barrier.
  */
-extern inline u8 in_8(const volatile u8 __iomem *addr)
+static inline u8 in_8(const volatile u8 __iomem *addr)
 {
 	u8 ret;
 
@@ -145,12 +145,12 @@ extern inline u8 in_8(const volatile u8 __iomem *addr)
 	return ret;
 }
 
-extern inline void out_8(volatile u8 __iomem *addr, u8 val)
+static inline void out_8(volatile u8 __iomem *addr, u8 val)
 {
 	__asm__ __volatile__("sync;stb%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
 }
 
-extern inline u16 in_le16(const volatile u16 __iomem *addr)
+static inline u16 in_le16(const volatile u16 __iomem *addr)
 {
 	u16 ret;
 
@@ -159,7 +159,7 @@ extern inline u16 in_le16(const volatile u16 __iomem *addr)
 	return ret;
 }
 
-extern inline u16 in_be16(const volatile u16 __iomem *addr)
+static inline u16 in_be16(const volatile u16 __iomem *addr)
 {
 	u16 ret;
 
@@ -168,18 +168,18 @@ extern inline u16 in_be16(const volatile u16 __iomem *addr)
 	return ret;
 }
 
-extern inline void out_le16(volatile u16 __iomem *addr, u16 val)
+static inline void out_le16(volatile u16 __iomem *addr, u16 val)
 {
 	__asm__ __volatile__("sync; sthbrx %1,0,%2"
 			: "=m" (*addr) : "r" (val), "r" (addr));
 }
 
-extern inline void out_be16(volatile u16 __iomem *addr, u16 val)
+static inline void out_be16(volatile u16 __iomem *addr, u16 val)
 {
 	__asm__ __volatile__("sync;sth%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
 }
 
-extern inline u32 in_le32(const volatile u32 __iomem *addr)
+static inline u32 in_le32(const volatile u32 __iomem *addr)
 {
 	u32 ret;
 
@@ -188,7 +188,7 @@ extern inline u32 in_le32(const volatile u32 __iomem *addr)
 	return ret;
 }
 
-extern inline u32 in_be32(const volatile u32 __iomem *addr)
+static inline u32 in_be32(const volatile u32 __iomem *addr)
 {
 	u32 ret;
 
@@ -197,13 +197,13 @@ extern inline u32 in_be32(const volatile u32 __iomem *addr)
 	return ret;
 }
 
-extern inline void out_le32(volatile u32 __iomem *addr, u32 val)
+static inline void out_le32(volatile u32 __iomem *addr, u32 val)
 {
 	__asm__ __volatile__("sync; stwbrx %1,0,%2"
 			: "=m" (*addr) : "r" (val), "r" (addr));
 }
 
-extern inline void out_be32(volatile u32 __iomem *addr, u32 val)
+static inline void out_be32(volatile u32 __iomem *addr, u32 val)
 {
 	__asm__ __volatile__("sync;stw%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
