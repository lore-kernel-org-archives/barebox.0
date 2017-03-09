Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clvG6-0004Wq-ID
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 10:25:24 +0000
Received: from player730.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id E99E75E495
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 11:24:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Mar 2017 11:31:10 +0100
Message-Id: <1489055471-12836-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1489055471-12836-1-git-send-email-plagnioj@jcrosoft.com>
References: <1489055471-12836-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] x86: add __raw_read{b,w,l,q} and __raw_write{b,w,l,q}
To: barebox@lists.infradead.org

so we can use __iowrite{32/64} to speedup the framebuffer console scrolling

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/include/asm/io.h | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/x86/include/asm/io.h b/arch/x86/include/asm/io.h
index df4bc99ec..189eb9aae 100644
--- a/arch/x86/include/asm/io.h
+++ b/arch/x86/include/asm/io.h
@@ -21,6 +21,10 @@ build_mmio_read(readb, "b", unsigned char, "=q", :"memory")
 build_mmio_read(readw, "w", unsigned short, "=r", :"memory")
 build_mmio_read(readl, "l", unsigned int, "=r", :"memory")
 
+build_mmio_read(__readb, "b", unsigned char, "=q", )
+build_mmio_read(__readw, "w", unsigned short, "=r", )
+build_mmio_read(__readl, "l", unsigned int, "=r", )
+
 #define build_mmio_write(name, size, type, reg, barrier) \
  static inline void name(type val, volatile void *addr) \
  { asm volatile("mov" size " %0,%1": :reg (val), \
@@ -30,6 +34,10 @@ build_mmio_write(writeb, "b", unsigned char, "q", :"memory")
 build_mmio_write(writew, "w", unsigned short, "r", :"memory")
 build_mmio_write(writel, "l", unsigned int, "r", :"memory")
 
+build_mmio_write(__writeb, "b", unsigned char, "q", )
+build_mmio_write(__writew, "w", unsigned short, "r", )
+build_mmio_write(__writel, "l", unsigned int, "r", )
+
 #define BUILDIO(bwl, bw, type)						\
 static inline void out##bwl(unsigned type value, int port)		\
 {									\
@@ -61,6 +69,31 @@ BUILDIO(b, b, char)
 BUILDIO(w, w, short)
 BUILDIO(l, , int)
 
+#define __raw_readb __readb
+#define __raw_readw __readw
+#define __raw_readl __readl
+
+#define __raw_writeb __writeb
+#define __raw_writew __writew
+#define __raw_writel __writel
+
+#ifdef CONFIG_X86_64
+
+build_mmio_read(readq, "q", unsigned long, "=r", :"memory")
+build_mmio_write(writeq, "q", unsigned long, "r", :"memory")
+
+#define readq_relaxed(a)	readq(a)
+#define writeq_relaxed(v, a)	writeq(v, a)
+
+#define __raw_readq(a)		readq(a)
+#define __raw_writeq(val, addr)	writeq(val, addr)
+
+/* Let people know that we have them */
+#define readq			readq
+#define writeq			writeq
+
+#endif
+
 #define  IO_SPACE_LIMIT  0xffff
 
 /* do a tiny io delay */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
