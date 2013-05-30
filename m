Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui4cK-0002Wv-PZ
 for barebox@lists.infradead.org; Thu, 30 May 2013 15:18:17 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 30 May 2013 16:17:25 +0100
Message-Id: <1369927045-24309-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1369927045-24309-1-git-send-email-renaud.barbier@ge.com>
References: <1369927045-24309-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/2] ppc: update I/O accessors
To: barebox@lists.infradead.org

The I/O accessors in_bexx, out_bexx, in_lexx and out_lexx are updated
to the latest Linux version.

The patch is tested on a MPC8544 based board and solved I/O access
issues on I2C devices.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/io.h |   61 +++++++++++++++++++++++---------------------
 1 files changed, 32 insertions(+), 29 deletions(-)

diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
index 62e6de2..d3473e5 100644
--- a/arch/ppc/include/asm/io.h
+++ b/arch/ppc/include/asm/io.h
@@ -135,73 +135,76 @@ static inline void __raw_writel(unsigned int v, volatile void __iomem *addr)
 /*
  * 8, 16 and 32 bit, big and little endian I/O operations, with barrier.
  */
-extern inline int in_8(volatile u8 *addr)
+extern inline u8 in_8(const volatile u8 __iomem *addr)
 {
-	int ret;
+	u8 ret;
 
-	__asm__ __volatile__("lbz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
+	__asm__ __volatile__("sync; lbz%U1%X1 %0,%1; twi 0,%0,0; isync"
+			: "=r" (ret) : "m" (*addr));
 	return ret;
 }
 
-extern inline void out_8(volatile u8 *addr, int val)
+extern inline void out_8(volatile u8 __iomem *addr, u8 val)
 {
-	__asm__ __volatile__("stb%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
+	__asm__ __volatile__("sync;stb%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
 }
 
-extern inline int in_le16(volatile u16 *addr)
+extern inline u16 in_le16(const volatile u16 __iomem *addr)
 {
-	int ret;
+	u16 ret;
 
-	__asm__ __volatile__("lhbrx %0,0,%1; eieio" : "=r" (ret) :
-			"r" (addr), "m" (*addr));
+	__asm__ __volatile__("sync; lhbrx %0,0,%1; twi 0,%0,0; isync"
+			: "=r" (ret) : "r" (addr), "m" (*addr));
 	return ret;
 }
 
-extern inline int in_be16(volatile u16 *addr)
+extern inline u16 in_be16(const volatile u16 __iomem *addr)
 {
-	int ret;
+	u16 ret;
 
-	__asm__ __volatile__("lhz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
+	__asm__ __volatile__("sync; lhz%U1%X1 %0,%1; twi 0,%0,0; isync"
+			: "=r" (ret) : "m" (*addr));
 	return ret;
 }
 
-extern inline void out_le16(volatile u16 *addr, int val)
+extern inline void out_le16(volatile u16 __iomem *addr, u16 val)
 {
-	__asm__ __volatile__("sthbrx %1,0,%2; eieio" : "=m" (*addr) :
-			"r" (val), "r" (addr));
+	__asm__ __volatile__("sync; sthbrx %1,0,%2"
+			: "=m" (*addr) : "r" (val), "r" (addr));
 }
 
-extern inline void out_be16(volatile u16 *addr, int val)
+extern inline void out_be16(volatile u16 __iomem *addr, u16 val)
 {
-	__asm__ __volatile__("sth%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
+	__asm__ __volatile__("sync;sth%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
 }
 
-extern inline unsigned in_le32(volatile u32 *addr)
+extern inline u32 in_le32(const volatile u32 __iomem *addr)
 {
-	unsigned ret;
+	u32 ret;
 
-	__asm__ __volatile__("lwbrx %0,0,%1; eieio" : "=r" (ret) :
-			"r" (addr), "m" (*addr));
+	__asm__ __volatile__("sync; lwbrx %0,0,%1; twi 0,%0,0; isync"
+			: "=r" (ret) : "r" (addr), "m" (*addr));
 	return ret;
 }
 
-extern inline unsigned in_be32(volatile u32 *addr)
+extern inline u32 in_be32(const volatile u32 __iomem *addr)
 {
-	unsigned ret;
+	u32 ret;
 
-	__asm__ __volatile__("lwz%U1%X1 %0,%1; eieio" : "=r" (ret) : "m" (*addr));
+	__asm__ __volatile__("sync; lwz%U1%X1 %0,%1; twi 0,%0,0; isync"
+			: "=r" (ret) : "m" (*addr));
 	return ret;
 }
 
-extern inline void out_le32(volatile unsigned *addr, int val)
+extern inline void out_le32(volatile u32 __iomem *addr, u32 val)
 {
-	__asm__ __volatile__("stwbrx %1,0,%2; eieio" : "=m" (*addr) :
-			"r" (val), "r" (addr));
+	__asm__ __volatile__("sync; stwbrx %1,0,%2"
+			: "=m" (*addr) : "r" (val), "r" (addr));
 }
 
-extern inline void out_be32(volatile unsigned *addr, int val)
+extern inline void out_be32(volatile u32 __iomem *addr, u32 val)
 {
-	__asm__ __volatile__("stw%U0%X0 %1,%0; eieio" : "=m" (*addr) : "r" (val));
+	__asm__ __volatile__("sync;stw%U0%X0 %1,%0" : "=m" (*addr) : "r" (val));
 }
 
 /*
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
