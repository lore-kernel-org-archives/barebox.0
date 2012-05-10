Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og101.obsmtp.com ([64.18.0.141])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSTpM-0007cr-Hf
 for barebox@lists.infradead.org; Thu, 10 May 2012 13:54:45 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 10 May 2012 14:54:31 +0100
Message-Id: <1336658071-14428-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/1] ppc io.h: update following MMIO primitives fix
To: barebox@lists.infradead.org

Following the MMIO primitives fix, the definitions of __raw_* function
is sourced from Linux and added.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/io.h |   28 ++++++++++++++++++++++++++++
 1 files changed, 28 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
index 13187ca..0052989 100644
--- a/arch/ppc/include/asm/io.h
+++ b/arch/ppc/include/asm/io.h
@@ -105,6 +105,34 @@ extern void _outsl_ns(volatile u32 *port, const void *buf, int nl);
 #define iobarrier_w()  eieio()
 
 /*
+ * Non ordered and non-swapping "raw" accessors
+ */
+static inline unsigned char __raw_readb(const volatile void __iomem *addr)
+{
+	return *(volatile unsigned char __force *)(addr);
+}
+static inline unsigned short __raw_readw(const volatile void __iomem *addr)
+{
+	return *(volatile unsigned short __force *)(addr);
+}
+static inline unsigned int __raw_readl(const volatile void __iomem *addr)
+{
+	return *(volatile unsigned int __force *)(addr);
+}
+static inline void __raw_writeb(unsigned char v, volatile void __iomem *addr)
+{
+	*(volatile unsigned char __force *)(addr) = v;
+}
+static inline void __raw_writew(unsigned short v, volatile void __iomem *addr)
+{
+	*(volatile unsigned short __force *)(addr) = v;
+}
+static inline void __raw_writel(unsigned int v, volatile void __iomem *addr)
+{
+	*(volatile unsigned int __force *)(addr) = v;
+}
+
+/*
  * 8, 16 and 32 bit, big and little endian I/O operations, with barrier.
  */
 extern inline int in_8(volatile u8 *addr)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
