Delivery-date: Wed, 11 Jan 2023 18:42:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf7j-0091eR-Fc
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:42:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf7g-0005wL-6Y
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:42:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9S6Jmj0OhuPTTVNUXP2CgmmHCMh0h1dr2gHCPdbuMyY=; b=upZWBGVP42CebzWdEy7mQuM/Jy
	7yeGjcE/6R27qQDY2U2FeZSWQr3kxqz1JO6Ab4TPfmBLozgzOdLW1uWWXU4iDMNR2m3vKmmXO8q4L
	loMrksraDnGViU24DpWcHGxj5VoDu5G6kvqK+WL+6rj9f60yH3WUwstauT5bykCgfvyVI1uZahwZ/
	Wzw/juEPNyue/iw7clPKSOOXYS3/vdxvBAa/gzamDfGjHqs2kNmHqz6LTVVSGL5UY1M8u6TaH7QSO
	L4IDGRh/MKJdguBAyepHvrQNgKa9uiZhUpGBopqo8pKZrtmAI5FrOQSzb30hMBk9KVTUQD9y+Slxg
	GTMe6Jog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf6E-00CTfJ-3v; Wed, 11 Jan 2023 17:41:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5S-00CTHO-Ps
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5Q-00052Z-Ae; Wed, 11 Jan 2023 18:40:28 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5P-005M6D-HR; Wed, 11 Jan 2023 18:40:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DG8-Ds; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:09 +0100
Message-Id: <20230111174023.1719129-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094031_063292_94C1B049 
X-CRM114-Status: GOOD (  13.94  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/15] asm-generic: io.h: sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We lack definitions for iowrite32_rep and friends, so sync partially
with Linux to get it.  While at, sync with Linux in the implementation of
insb: This is implemented in terms of readsb, while we had it the other
way round.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/io.h | 401 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 371 insertions(+), 30 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index 51f65ceb0a2e..acb70509d168 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -195,111 +195,370 @@ static inline void outl_p(u32 value, unsigned long addr)
 }
 #endif
 
-#ifndef insb
-static inline void insb(unsigned long addr, void *buffer, int count)
+/*
+ * {read,write}s{b,w,l,q}() repeatedly access the same memory address in
+ * native endianness in 8-, 16-, 32- or 64-bit chunks (@count times).
+ */
+#ifndef readsb
+#define readsb readsb
+static inline void readsb(const volatile void __iomem *addr, void *buffer,
+			  unsigned int count)
 {
 	if (count) {
 		u8 *buf = buffer;
+
 		do {
-			u8 x = inb(addr);
+			u8 x = __raw_readb(addr);
 			*buf++ = x;
 		} while (--count);
 	}
 }
 #endif
 
-#ifndef insw
-static inline void insw(unsigned long addr, void *buffer, int count)
+#ifndef readsw
+#define readsw readsw
+static inline void readsw(const volatile void __iomem *addr, void *buffer,
+			  unsigned int count)
 {
 	if (count) {
 		u16 *buf = buffer;
+
 		do {
-			u16 x = inw(addr);
+			u16 x = __raw_readw(addr);
 			*buf++ = x;
 		} while (--count);
 	}
 }
 #endif
 
-#ifndef insl
-static inline void insl(unsigned long addr, void *buffer, int count)
+#ifndef readsl
+#define readsl readsl
+static inline void readsl(const volatile void __iomem *addr, void *buffer,
+			  unsigned int count)
 {
 	if (count) {
 		u32 *buf = buffer;
+
 		do {
-			u32 x = inl(addr);
+			u32 x = __raw_readl(addr);
 			*buf++ = x;
 		} while (--count);
 	}
 }
 #endif
 
-#ifndef outsb
-static inline void outsb(unsigned long addr, const void *buffer, int count)
+#ifdef CONFIG_64BIT
+#ifndef readsq
+#define readsq readsq
+static inline void readsq(const volatile void __iomem *addr, void *buffer,
+			  unsigned int count)
+{
+	if (count) {
+		u64 *buf = buffer;
+
+		do {
+			u64 x = __raw_readq(addr);
+			*buf++ = x;
+		} while (--count);
+	}
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+#ifndef writesb
+#define writesb writesb
+static inline void writesb(volatile void __iomem *addr, const void *buffer,
+			   unsigned int count)
 {
 	if (count) {
 		const u8 *buf = buffer;
+
 		do {
-			outb(*buf++, addr);
+			__raw_writeb(*buf++, addr);
 		} while (--count);
 	}
 }
 #endif
 
-#ifndef outsw
-static inline void outsw(unsigned long addr, const void *buffer, int count)
+#ifndef writesw
+#define writesw writesw
+static inline void writesw(volatile void __iomem *addr, const void *buffer,
+			   unsigned int count)
 {
 	if (count) {
 		const u16 *buf = buffer;
+
 		do {
-			outw(*buf++, addr);
+			__raw_writew(*buf++, addr);
 		} while (--count);
 	}
 }
 #endif
 
-#ifndef outsl
-static inline void outsl(unsigned long addr, const void *buffer, int count)
+#ifndef writesl
+#define writesl writesl
+static inline void writesl(volatile void __iomem *addr, const void *buffer,
+			   unsigned int count)
 {
 	if (count) {
 		const u32 *buf = buffer;
+
 		do {
-			outl(*buf++, addr);
+			__raw_writel(*buf++, addr);
 		} while (--count);
 	}
 }
 #endif
 
-static inline void readsl(const void __iomem *addr, void *buf, int len)
+#ifdef CONFIG_64BIT
+#ifndef writesq
+#define writesq writesq
+static inline void writesq(volatile void __iomem *addr, const void *buffer,
+			   unsigned int count)
 {
-	insl(addr - PCI_IOBASE, buf, len);
+	if (count) {
+		const u64 *buf = buffer;
+
+		do {
+			__raw_writeq(*buf++, addr);
+		} while (--count);
+	}
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+/*
+ * {in,out}{b,w,l}() access little endian I/O. {in,out}{b,w,l}_p() can be
+ * implemented on hardware that needs an additional delay for I/O accesses to
+ * take effect.
+ */
+
+#if !defined(inb) && !defined(_inb)
+#define _inb _inb
+static inline u8 _inb(unsigned long addr)
+{
+	return __raw_readb(PCI_IOBASE + addr);
 }
+#endif
 
-static inline void readsw(const void __iomem *addr, void *buf, int len)
+#if !defined(inw) && !defined(_inw)
+#define _inw _inw
+static inline u16 _inw(unsigned long addr)
 {
-	insw(addr - PCI_IOBASE, buf, len);
+	return __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
 }
+#endif
 
-static inline void readsb(const void __iomem *addr, void *buf, int len)
+#if !defined(inl) && !defined(_inl)
+#define _inl _inl
+static inline u32 _inl(unsigned long addr)
 {
-	insb(addr - PCI_IOBASE, buf, len);
+	return __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
 }
+#endif
 
-static inline void writesl(const void __iomem *addr, const void *buf, int len)
+#if !defined(outb) && !defined(_outb)
+#define _outb _outb
+static inline void _outb(u8 value, unsigned long addr)
 {
-	outsl(addr - PCI_IOBASE, buf, len);
+	return __raw_writeb(value, PCI_IOBASE + addr);
 }
+#endif
 
-static inline void writesw(const void __iomem *addr, const void *buf, int len)
+#if !defined(outw) && !defined(_outw)
+#define _outw _outw
+static inline void _outw(u16 value, unsigned long addr)
 {
-	outsw(addr - PCI_IOBASE, buf, len);
+	return __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
 }
+#endif
 
-static inline void writesb(const void __iomem *addr, const void *buf, int len)
+#if !defined(outl) && !defined(_outl)
+#define _outl _outl
+static inline void _outl(u32 value, unsigned long addr)
 {
-	outsb(addr - PCI_IOBASE, buf, len);
+	return __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
 }
+#endif
 
+#ifndef inb
+#define inb _inb
+#endif
+
+#ifndef inw
+#define inw _inw
+#endif
+
+#ifndef inl
+#define inl _inl
+#endif
+
+#ifndef outb
+#define outb _outb
+#endif
+
+#ifndef outw
+#define outw _outw
+#endif
+
+#ifndef outl
+#define outl _outl
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
+
+/*
+ * {in,out}s{b,w,l}{,_p}() are variants of the above that repeatedly access a
+ * single I/O port multiple times.
+ */
+
+#ifndef insb
+#define insb insb
+static inline void insb(unsigned long addr, void *buffer, unsigned int count)
+{
+	readsb(PCI_IOBASE + addr, buffer, count);
+}
+#endif
+
+#ifndef insw
+#define insw insw
+static inline void insw(unsigned long addr, void *buffer, unsigned int count)
+{
+	readsw(PCI_IOBASE + addr, buffer, count);
+}
+#endif
+
+#ifndef insl
+#define insl insl
+static inline void insl(unsigned long addr, void *buffer, unsigned int count)
+{
+	readsl(PCI_IOBASE + addr, buffer, count);
+}
+#endif
+
+#ifndef outsb
+#define outsb outsb
+static inline void outsb(unsigned long addr, const void *buffer,
+			 unsigned int count)
+{
+	writesb(PCI_IOBASE + addr, buffer, count);
+}
+#endif
+
+#ifndef outsw
+#define outsw outsw
+static inline void outsw(unsigned long addr, const void *buffer,
+			 unsigned int count)
+{
+	writesw(PCI_IOBASE + addr, buffer, count);
+}
+#endif
+
+#ifndef outsl
+#define outsl outsl
+static inline void outsl(unsigned long addr, const void *buffer,
+			 unsigned int count)
+{
+	writesl(PCI_IOBASE + addr, buffer, count);
+}
+#endif
+
+#ifndef insb_p
+#define insb_p insb_p
+static inline void insb_p(unsigned long addr, void *buffer, unsigned int count)
+{
+	insb(addr, buffer, count);
+}
+#endif
+
+#ifndef insw_p
+#define insw_p insw_p
+static inline void insw_p(unsigned long addr, void *buffer, unsigned int count)
+{
+	insw(addr, buffer, count);
+}
+#endif
+
+#ifndef insl_p
+#define insl_p insl_p
+static inline void insl_p(unsigned long addr, void *buffer, unsigned int count)
+{
+	insl(addr, buffer, count);
+}
+#endif
+
+#ifndef outsb_p
+#define outsb_p outsb_p
+static inline void outsb_p(unsigned long addr, const void *buffer,
+			   unsigned int count)
+{
+	outsb(addr, buffer, count);
+}
+#endif
+
+#ifndef outsw_p
+#define outsw_p outsw_p
+static inline void outsw_p(unsigned long addr, const void *buffer,
+			   unsigned int count)
+{
+	outsw(addr, buffer, count);
+}
+#endif
+
+#ifndef outsl_p
+#define outsl_p outsl_p
+static inline void outsl_p(unsigned long addr, const void *buffer,
+			   unsigned int count)
+{
+	outsl(addr, buffer, count);
+}
+#endif
 
 #ifndef ioread8
 #define ioread8 ioread8
@@ -421,6 +680,88 @@ static inline void iowrite64be(u64 value, volatile void __iomem *addr)
 #endif
 #endif /* CONFIG_64BIT */
 
+#ifndef ioread8_rep
+#define ioread8_rep ioread8_rep
+static inline void ioread8_rep(const volatile void __iomem *addr, void *buffer,
+			       unsigned int count)
+{
+	readsb(addr, buffer, count);
+}
+#endif
+
+#ifndef ioread16_rep
+#define ioread16_rep ioread16_rep
+static inline void ioread16_rep(const volatile void __iomem *addr,
+				void *buffer, unsigned int count)
+{
+	readsw(addr, buffer, count);
+}
+#endif
+
+#ifndef ioread32_rep
+#define ioread32_rep ioread32_rep
+static inline void ioread32_rep(const volatile void __iomem *addr,
+				void *buffer, unsigned int count)
+{
+	readsl(addr, buffer, count);
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef ioread64_rep
+#define ioread64_rep ioread64_rep
+static inline void ioread64_rep(const volatile void __iomem *addr,
+				void *buffer, unsigned int count)
+{
+	readsq(addr, buffer, count);
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+#ifndef iowrite8_rep
+#define iowrite8_rep iowrite8_rep
+static inline void iowrite8_rep(volatile void __iomem *addr,
+				const void *buffer,
+				unsigned int count)
+{
+	writesb(addr, buffer, count);
+}
+#endif
+
+#ifndef iowrite16_rep
+#define iowrite16_rep iowrite16_rep
+static inline void iowrite16_rep(volatile void __iomem *addr,
+				 const void *buffer,
+				 unsigned int count)
+{
+	writesw(addr, buffer, count);
+}
+#endif
+
+#ifndef iowrite32_rep
+#define iowrite32_rep iowrite32_rep
+static inline void iowrite32_rep(volatile void __iomem *addr,
+				 const void *buffer,
+				 unsigned int count)
+{
+	writesl(addr, buffer, count);
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef iowrite64_rep
+#define iowrite64_rep iowrite64_rep
+static inline void iowrite64_rep(volatile void __iomem *addr,
+				 const void *buffer,
+				 unsigned int count)
+{
+	writesq(addr, buffer, count);
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+
+
 /*
  * Change virtual addresses to physical addresses and vv.
  * These are pretty trivial
-- 
2.30.2



