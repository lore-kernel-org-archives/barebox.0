Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui4bw-0002WE-OK
 for barebox@lists.infradead.org; Thu, 30 May 2013 15:17:53 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 30 May 2013 16:17:24 +0100
Message-Id: <1369927045-24309-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/2] ppc io.h: fix indentation
To: barebox@lists.infradead.org

To prepare for an update of the I/O functions to the latest Linux
version, the indentation is fixed.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/io.h |   48 ++++++++++++++++++++++----------------------
 1 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
index 0052989..62e6de2 100644
--- a/arch/ppc/include/asm/io.h
+++ b/arch/ppc/include/asm/io.h
@@ -137,71 +137,71 @@ static inline void __raw_writel(unsigned int v, volatile void __iomem *addr)
  */
 extern inline int in_8(volatile u8 *addr)
 {
-    int ret;
+	int ret;
 
-    __asm__ __volatile__("lbz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
-    return ret;
+	__asm__ __volatile__("lbz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
+	return ret;
 }
 
 extern inline void out_8(volatile u8 *addr, int val)
 {
-    __asm__ __volatile__("stb%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
+	__asm__ __volatile__("stb%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
 }
 
 extern inline int in_le16(volatile u16 *addr)
 {
-    int ret;
+	int ret;
 
-    __asm__ __volatile__("lhbrx %0,0,%1; eieio" : "=r" (ret) :
-		  "r" (addr), "m" (*addr));
-    return ret;
+	__asm__ __volatile__("lhbrx %0,0,%1; eieio" : "=r" (ret) :
+			"r" (addr), "m" (*addr));
+	return ret;
 }
 
 extern inline int in_be16(volatile u16 *addr)
 {
-    int ret;
+	int ret;
 
-    __asm__ __volatile__("lhz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
-    return ret;
+	__asm__ __volatile__("lhz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
+	return ret;
 }
 
 extern inline void out_le16(volatile u16 *addr, int val)
 {
-    __asm__ __volatile__("sthbrx %1,0,%2; eieio" : "=m" (*addr) :
-		  "r" (val), "r" (addr));
+	__asm__ __volatile__("sthbrx %1,0,%2; eieio" : "=m" (*addr) :
+			"r" (val), "r" (addr));
 }
 
 extern inline void out_be16(volatile u16 *addr, int val)
 {
-    __asm__ __volatile__("sth%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
+	__asm__ __volatile__("sth%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
 }
 
 extern inline unsigned in_le32(volatile u32 *addr)
 {
-    unsigned ret;
+	unsigned ret;
 
-    __asm__ __volatile__("lwbrx %0,0,%1; eieio" : "=r" (ret) :
-		 "r" (addr), "m" (*addr));
-    return ret;
+	__asm__ __volatile__("lwbrx %0,0,%1; eieio" : "=r" (ret) :
+			"r" (addr), "m" (*addr));
+	return ret;
 }
 
 extern inline unsigned in_be32(volatile u32 *addr)
 {
-    unsigned ret;
+	unsigned ret;
 
-    __asm__ __volatile__("lwz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
-    return ret;
+	__asm__ __volatile__("lwz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
+	return ret;
 }
 
 extern inline void out_le32(volatile unsigned *addr, int val)
 {
-    __asm__ __volatile__("stwbrx %1,0,%2; eieio" : "=m" (*addr) :
-		 "r" (val), "r" (addr));
+	__asm__ __volatile__("stwbrx %1,0,%2; eieio" : "=m" (*addr) :
+			"r" (val), "r" (addr));
 }
 
 extern inline void out_be32(volatile unsigned *addr, int val)
 {
-    __asm__ __volatile__("stw%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
+	__asm__ __volatile__("stw%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
 }
 
 /*
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
