Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkHbK-000784-EX
 for barebox@lists.infradead.org; Tue, 13 May 2014 18:38:54 +0000
Received: by mail-we0-f182.google.com with SMTP id t60so821259wes.13
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 11:38:31 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Tue, 13 May 2014 20:38:24 +0200
Message-Id: <1400006306-5540-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/3] asm-generic: add IO memory accessors
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 include/asm-generic/io.h |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 3f0f5a2..8d83d68 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -219,4 +219,16 @@ static inline void writesb(const void __iomem *addr, const void *buf, int len)
 	outsb(addr - PCI_IOBASE, buf, len);
 }
 
+#define ioread8(addr)		readb(addr)
+#define ioread16(addr)		readw(addr)
+#define ioread16be(addr)	__be16_to_cpu(__raw_readw(addr))
+#define ioread32(addr)		readl(addr)
+#define ioread32be(addr)	__be32_to_cpu(__raw_readl(addr))
+
+#define iowrite8(v, addr)	writeb((v), (addr))
+#define iowrite16(v, addr)	writew((v), (addr))
+#define iowrite16be(v, addr)	__raw_writew(__cpu_to_be16(v), addr)
+#define iowrite32(v, addr)	writel((v), (addr))
+#define iowrite32be(v, addr)	__raw_writel(__cpu_to_be32(v), addr)
+
 #endif /* __ASM_GENERIC_IO_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
