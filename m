Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dihmY-000153-30
 for barebox@lists.infradead.org; Fri, 18 Aug 2017 13:57:55 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 18 Aug 2017 15:57:05 +0200
Message-Id: <20170818135707.17578-3-linux@rempel-privat.de>
In-Reply-To: <20170818135707.17578-1-linux@rempel-privat.de>
References: <20170818135707.17578-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 2/4] asm-generic: partially sync io.h with linux kernel
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 include/asm-generic/io.h | 229 +++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 201 insertions(+), 28 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 8d83d6806..a3192bae6 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -69,50 +69,114 @@ static inline void __raw_writeq(u64 b, volatile void __iomem *addr)
 #endif
 
 #ifndef PCI_IOBASE
-#define PCI_IOBASE ((void __iomem *) 0)
+#define PCI_IOBASE ((void __iomem *)0)
+#endif
+
+#ifndef IO_SPACE_LIMIT
+#define IO_SPACE_LIMIT 0xffff
 #endif
 
-/*****************************************************************************/
 /*
- * traditional input/output functions
+ * {in,out}{b,w,l}() access little endian I/O. {in,out}{b,w,l}_p() can be
+ * implemented on hardware that needs an additional delay for I/O accesses to
+ * take effect.
  */
 
+#ifndef inb
+#define inb inb
 static inline u8 inb(unsigned long addr)
 {
-	return readb(addr + PCI_IOBASE);
+	return readb(PCI_IOBASE + addr);
 }
+#endif
 
+#ifndef inw
+#define inw inw
 static inline u16 inw(unsigned long addr)
 {
-	return readw(addr + PCI_IOBASE);
+	return readw(PCI_IOBASE + addr);
 }
+#endif
 
+#ifndef inl
+#define inl inl
 static inline u32 inl(unsigned long addr)
 {
-	return readl(addr + PCI_IOBASE);
+	return readl(PCI_IOBASE + addr);
+}
+#endif
+
+#ifndef outb
+#define outb outb
+static inline void outb(u8 value, unsigned long addr)
+{
+	writeb(value, PCI_IOBASE + addr);
+}
+#endif
+
+#ifndef outw
+#define outw outw
+static inline void outw(u16 value, unsigned long addr)
+{
+	writew(value, PCI_IOBASE + addr);
+}
+#endif
+
+#ifndef outl
+#define outl outl
+static inline void outl(u32 value, unsigned long addr)
+{
+	writel(value, PCI_IOBASE + addr);
+}
+#endif
+
+#ifndef inb_p
+#define inb_p inb_p
+static inline u8 inb_p(unsigned long addr)
+{
+	return inb(addr);
+}
+#endif
+
+#ifndef inw_p
+#define inw_p inw_p
+static inline u16 inw_p(unsigned long addr)
+{
+	return inw(addr);
 }
+#endif
 
-static inline void outb(u8 b, unsigned long addr)
+#ifndef inl_p
+#define inl_p inl_p
+static inline u32 inl_p(unsigned long addr)
 {
-	writeb(b, addr + PCI_IOBASE);
+	return inl(addr);
 }
+#endif
 
-static inline void outw(u16 b, unsigned long addr)
+#ifndef outb_p
+#define outb_p outb_p
+static inline void outb_p(u8 value, unsigned long addr)
 {
-	writew(b, addr + PCI_IOBASE);
+	outb(value, addr);
 }
+#endif
 
-static inline void outl(u32 b, unsigned long addr)
+#ifndef outw_p
+#define outw_p outw_p
+static inline void outw_p(u16 value, unsigned long addr)
 {
-	writel(b, addr + PCI_IOBASE);
+	outw(value, addr);
 }
+#endif
 
-#define inb_p(addr)	inb(addr)
-#define inw_p(addr)	inw(addr)
-#define inl_p(addr)	inl(addr)
-#define outb_p(x, addr)	outb((x), (addr))
-#define outw_p(x, addr)	outw((x), (addr))
-#define outl_p(x, addr)	outl((x), (addr))
+#ifndef outl_p
+#define outl_p outl_p
+static inline void outl_p(u32 value, unsigned long addr)
+{
+	outl(value, addr);
+}
+#endif
 
 #ifndef insb
 static inline void insb(unsigned long addr, void *buffer, int count)
@@ -219,16 +283,125 @@ static inline void writesb(const void __iomem *addr, const void *buf, int len)
 	outsb(addr - PCI_IOBASE, buf, len);
 }
 
-#define ioread8(addr)		readb(addr)
-#define ioread16(addr)		readw(addr)
-#define ioread16be(addr)	__be16_to_cpu(__raw_readw(addr))
-#define ioread32(addr)		readl(addr)
-#define ioread32be(addr)	__be32_to_cpu(__raw_readl(addr))
 
-#define iowrite8(v, addr)	writeb((v), (addr))
-#define iowrite16(v, addr)	writew((v), (addr))
-#define iowrite16be(v, addr)	__raw_writew(__cpu_to_be16(v), addr)
-#define iowrite32(v, addr)	writel((v), (addr))
-#define iowrite32be(v, addr)	__raw_writel(__cpu_to_be32(v), addr)
+#ifndef ioread8
+#define ioread8 ioread8
+static inline u8 ioread8(const volatile void __iomem *addr)
+{
+	return readb(addr);
+}
+#endif
+
+#ifndef ioread16
+#define ioread16 ioread16
+static inline u16 ioread16(const volatile void __iomem *addr)
+{
+	return readw(addr);
+}
+#endif
+
+#ifndef ioread32
+#define ioread32 ioread32
+static inline u32 ioread32(const volatile void __iomem *addr)
+{
+	return readl(addr);
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef ioread64
+#define ioread64 ioread64
+static inline u64 ioread64(const volatile void __iomem *addr)
+{
+	return readq(addr);
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+#ifndef iowrite8
+#define iowrite8 iowrite8
+static inline void iowrite8(u8 value, volatile void __iomem *addr)
+{
+	writeb(value, addr);
+}
+#endif
+
+#ifndef iowrite16
+#define iowrite16 iowrite16
+static inline void iowrite16(u16 value, volatile void __iomem *addr)
+{
+	writew(value, addr);
+}
+#endif
+
+#ifndef iowrite32
+#define iowrite32 iowrite32
+static inline void iowrite32(u32 value, volatile void __iomem *addr)
+{
+	writel(value, addr);
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef iowrite64
+#define iowrite64 iowrite64
+static inline void iowrite64(u64 value, volatile void __iomem *addr)
+{
+	writeq(value, addr);
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+#ifndef ioread16be
+#define ioread16be ioread16be
+static inline u16 ioread16be(const volatile void __iomem *addr)
+{
+	return swab16(readw(addr));
+}
+#endif
+
+#ifndef ioread32be
+#define ioread32be ioread32be
+static inline u32 ioread32be(const volatile void __iomem *addr)
+{
+	return swab32(readl(addr));
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef ioread64be
+#define ioread64be ioread64be
+static inline u64 ioread64be(const volatile void __iomem *addr)
+{
+	return swab64(readq(addr));
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+#ifndef iowrite16be
+#define iowrite16be iowrite16be
+static inline void iowrite16be(u16 value, void volatile __iomem *addr)
+{
+	writew(swab16(value), addr);
+}
+#endif
+
+#ifndef iowrite32be
+#define iowrite32be iowrite32be
+static inline void iowrite32be(u32 value, volatile void __iomem *addr)
+{
+	writel(swab32(value), addr);
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef iowrite64be
+#define iowrite64be iowrite64be
+static inline void iowrite64be(u64 value, volatile void __iomem *addr)
+{
+	writeq(swab64(value), addr);
+}
+#endif
+#endif /* CONFIG_64BIT */
 
 #endif /* __ASM_GENERIC_IO_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
