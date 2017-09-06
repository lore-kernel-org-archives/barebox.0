Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpbZM-00023C-T1
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 14:44:50 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  6 Sep 2017 16:44:08 +0200
Message-Id: <20170906144410.525-3-linux@rempel-privat.de>
In-Reply-To: <20170906144410.525-1-linux@rempel-privat.de>
References: <20170906144410.525-1-linux@rempel-privat.de>
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
Subject: [PATCH 2/4] asm-generic: partially sync io.h with linux kernel
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/arm/include/asm/io.h     |   4 +-
 arch/ppc/include/asm/io.h     |   2 +
 arch/sandbox/include/asm/io.h |   3 +-
 include/asm-generic/io.h      | 245 +++++++++++++++++++++++++++++++++++++-----
 4 files changed, 223 insertions(+), 31 deletions(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index eebf0938b..d06ff8323 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -1,10 +1,10 @@
 #ifndef __ASM_ARM_IO_H
 #define __ASM_ARM_IO_H
 
-#include <asm-generic/io.h>
-
 #define	IO_SPACE_LIMIT	0
 
+#include <asm-generic/io.h>
+
 /*
  * String version of IO memory access ops:
  */
diff --git a/arch/ppc/include/asm/io.h b/arch/ppc/include/asm/io.h
index f83ab6ee0..025c06f3b 100644
--- a/arch/ppc/include/asm/io.h
+++ b/arch/ppc/include/asm/io.h
@@ -244,4 +244,6 @@ void		ppcDcbi(unsigned long value);
 void		ppcSync(void);
 void		ppcDcbz(unsigned long value);
 
+#include <asm-generic/io.h>
+
 #endif
diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index 35b578454..cb891df5c 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -1,7 +1,8 @@
 #ifndef __ASM_SANDBOX_IO_H
 #define __ASM_SANDBOX_IO_H
 
-#include <asm-generic/io.h>
 #define	IO_SPACE_LIMIT 0
 
+#include <asm-generic/io.h>
+
 #endif /* __ASM_SANDBOX_IO_H */
diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 8d83d6806..973b8b954 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -34,9 +34,17 @@
 #define __raw_readl(a)		(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a))
 #endif
 
+#ifndef readb
 #define readb __raw_readb
+#endif
+
+#ifndef readw
 #define readw(addr) __le16_to_cpu(__raw_readw(addr))
+#endif
+
+#ifndef readl
 #define readl(addr) __le32_to_cpu(__raw_readl(addr))
+#endif
 
 #ifndef __raw_writeb
 #define __raw_writeb(v,a)	(__chk_io_ptr(a), *(volatile unsigned char __force  *)(a) = (v))
@@ -50,9 +58,17 @@
 #define __raw_writel(v,a)	(__chk_io_ptr(a), *(volatile unsigned int __force   *)(a) = (v))
 #endif
 
+#ifndef writeb
 #define writeb __raw_writeb
+#endif
+
+#ifndef writew
 #define writew(b,addr) __raw_writew(__cpu_to_le16(b),addr)
+#endif
+
+#ifndef writel
 #define writel(b,addr) __raw_writel(__cpu_to_le32(b),addr)
+#endif
 
 #ifdef CONFIG_64BIT
 static inline u64 __raw_readq(const volatile void __iomem *addr)
@@ -69,50 +85,114 @@ static inline void __raw_writeq(u64 b, volatile void __iomem *addr)
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
 }
+#endif
 
-static inline void outb(u8 b, unsigned long addr)
+#ifndef outb
+#define outb outb
+static inline void outb(u8 value, unsigned long addr)
 {
-	writeb(b, addr + PCI_IOBASE);
+	writeb(value, PCI_IOBASE + addr);
 }
+#endif
 
-static inline void outw(u16 b, unsigned long addr)
+#ifndef outw
+#define outw outw
+static inline void outw(u16 value, unsigned long addr)
 {
-	writew(b, addr + PCI_IOBASE);
+	writew(value, PCI_IOBASE + addr);
 }
+#endif
 
-static inline void outl(u32 b, unsigned long addr)
+#ifndef outl
+#define outl outl
+static inline void outl(u32 value, unsigned long addr)
 {
-	writel(b, addr + PCI_IOBASE);
+	writel(value, PCI_IOBASE + addr);
 }
+#endif
 
-#define inb_p(addr)	inb(addr)
-#define inw_p(addr)	inw(addr)
-#define inl_p(addr)	inl(addr)
-#define outb_p(x, addr)	outb((x), (addr))
-#define outw_p(x, addr)	outw((x), (addr))
-#define outl_p(x, addr)	outl((x), (addr))
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
+}
+#endif
+
+#ifndef inl_p
+#define inl_p inl_p
+static inline u32 inl_p(unsigned long addr)
+{
+	return inl(addr);
+}
+#endif
+
+#ifndef outb_p
+#define outb_p outb_p
+static inline void outb_p(u8 value, unsigned long addr)
+{
+	outb(value, addr);
+}
+#endif
+
+#ifndef outw_p
+#define outw_p outw_p
+static inline void outw_p(u16 value, unsigned long addr)
+{
+	outw(value, addr);
+}
+#endif
+
+#ifndef outl_p
+#define outl_p outl_p
+static inline void outl_p(u32 value, unsigned long addr)
+{
+	outl(value, addr);
+}
+#endif
 
 #ifndef insb
 static inline void insb(unsigned long addr, void *buffer, int count)
@@ -219,16 +299,125 @@ static inline void writesb(const void __iomem *addr, const void *buf, int len)
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
