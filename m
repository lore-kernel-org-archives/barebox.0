Delivery-date: Wed, 22 Nov 2023 18:31:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4e-004dk8-3C
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:31:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4e-0008KZ-J2
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:31:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9/YsH4YB0YdGS1bM0hkWVbNkjcHJFPMQBX109fIv0v8=; b=YFXuRlBiTJ77biC2q5+obrtOC1
	qdgnwldI90XDWWqf+1umAH2R4PkA8Caa7bDjKgEBueh+d6joJyyj5m7vkj4JF9o0i2zwoSuBTGvlL
	F1iZd5XW9XX9mWQKfz4owtQppdG/Of3RjOQP8DbAwb4tZAC9BbNAqi9E6k0g7C92l8B53iHsQVcuu
	r/2wKJ6cq3iGC51j9/QlkyiPPyzuqiYJo/GFPUF8UJ0LrkcLo5bLx5aVRkAX9mQ3PDR+iT3qMSKEw
	cHfgk4nLDl8Gago+2GpN0IW82YnxN1EB+GHlB3qzqLnW+W3q/GMpVblqvez+mdDkv0Yp+z53PhswT
	/aibEVwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r3G-002fEK-2U;
	Wed, 22 Nov 2023 17:30:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r3D-002fBv-21
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:30:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-0007TK-Fq; Wed, 22 Nov 2023 18:30:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-00ArT1-1O; Wed, 22 Nov 2023 18:30:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r33-001lAy-33;
	Wed, 22 Nov 2023 18:30:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:38 +0100
Message-Id: <20231122172951.376531-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_093011_816930_B7D351C2 
X-CRM114-Status: GOOD (  15.56  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 07/20] include: add linux/io.h with strict prototypes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Kernel code uses <linux/io.h> instead of <io.h>, which defines readl and
friends as functions with type checks instead of macros that just cast
everything to pointers. Let's provide <linux/io.h> to ease porting as
well and have it have the same semantics.

Eventually, we should be able to get switch <io.h> to include
<linux/io.h> once all in-tree users are migrated.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - unchanged
---
 include/asm-generic/io.h | 217 +++++++++++++++++++++++++++++++++++++--
 include/linux/io.h       |   9 ++
 2 files changed, 218 insertions(+), 8 deletions(-)
 create mode 100644 include/linux/io.h

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index b118979ed1df..123ad5488ffc 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -13,23 +13,224 @@
 
 #include <linux/string.h> /* for memset() and memcpy() */
 #include <linux/compiler.h>
+#include <linux/instruction_pointer.h>
 #include <linux/types.h>
 #include <asm/byteorder.h>
+
+#ifndef __LINUX_IO_STRICT_PROTOTYPES__
 #include <asm-generic/io-typeconfused.h>
+#endif
+
+#define __io_br()      barrier()
+#define __io_ar(v)      barrier()
+#define __io_bw()      barrier()
+#define __io_pbw()     __io_bw()
+#define __io_paw()     __io_aw()
+#define __io_aw()      do { } while (0)
+#define __io_pbr()     __io_br()
+#define __io_par(v)     __io_ar(v)
+
+static inline void log_write_mmio(u64 val, u8 width, volatile void __iomem *addr,
+				  unsigned long caller_addr, unsigned long caller_addr0) {}
+static inline void log_post_write_mmio(u64 val, u8 width, volatile void __iomem *addr,
+				       unsigned long caller_addr, unsigned long caller_addr0) {}
+static inline void log_read_mmio(u8 width, const volatile void __iomem *addr,
+				 unsigned long caller_addr, unsigned long caller_addr0) {}
+static inline void log_post_read_mmio(u64 val, u8 width, const volatile void __iomem *addr,
+				      unsigned long caller_addr, unsigned long caller_addr0) {}
+
+/*
+ * __raw_{read,write}{b,w,l,q}() access memory in native endianness.
+ *
+ * On some architectures memory mapped IO needs to be accessed differently.
+ * On the simple architectures, we just read/write the memory location
+ * directly.
+ */
+
+#ifndef __raw_readb
+#define __raw_readb __raw_readb
+static inline u8 __raw_readb(const volatile void __iomem *addr)
+{
+	return *(const volatile u8 __force *)addr;
+}
+#endif
+
+#ifndef __raw_readw
+#define __raw_readw __raw_readw
+static inline u16 __raw_readw(const volatile void __iomem *addr)
+{
+	return *(const volatile u16 __force *)addr;
+}
+#endif
+
+#ifndef __raw_readl
+#define __raw_readl __raw_readl
+static inline u32 __raw_readl(const volatile void __iomem *addr)
+{
+	return *(const volatile u32 __force *)addr;
+}
+#endif
 
 #ifdef CONFIG_64BIT
+#ifndef __raw_readq
+#define __raw_readq __raw_readq
 static inline u64 __raw_readq(const volatile void __iomem *addr)
 {
-	return *(const volatile u64 __force *) addr;
+	return *(const volatile u64 __force *)addr;
 }
-#define readq(addr) __le64_to_cpu(__raw_readq(addr))
-
-static inline void __raw_writeq(u64 b, volatile void __iomem *addr)
-{
-	*(volatile u64 __force *) addr = b;
-}
-#define writeq(b,addr) __raw_writeq(__cpu_to_le64(b),addr)
 #endif
+#endif /* CONFIG_64BIT */
+
+#ifndef __raw_writeb
+#define __raw_writeb __raw_writeb
+static inline void __raw_writeb(u8 value, volatile void __iomem *addr)
+{
+	*(volatile u8 __force *)addr = value;
+}
+#endif
+
+#ifndef __raw_writew
+#define __raw_writew __raw_writew
+static inline void __raw_writew(u16 value, volatile void __iomem *addr)
+{
+	*(volatile u16 __force *)addr = value;
+}
+#endif
+
+#ifndef __raw_writel
+#define __raw_writel __raw_writel
+static inline void __raw_writel(u32 value, volatile void __iomem *addr)
+{
+	*(volatile u32 __force *)addr = value;
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef __raw_writeq
+#define __raw_writeq __raw_writeq
+static inline void __raw_writeq(u64 value, volatile void __iomem *addr)
+{
+	*(volatile u64 __force *)addr = value;
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+/*
+ * {read,write}{b,w,l,q}() access little endian memory and return result in
+ * native endianness.
+ */
+
+#ifndef readb
+#define readb readb
+static inline u8 readb(const volatile void __iomem *addr)
+{
+	u8 val;
+
+	log_read_mmio(8, addr, _THIS_IP_, _RET_IP_);
+	__io_br();
+	val = __raw_readb(addr);
+	__io_ar(val);
+	log_post_read_mmio(val, 8, addr, _THIS_IP_, _RET_IP_);
+	return val;
+}
+#endif
+
+#ifndef readw
+#define readw readw
+static inline u16 readw(const volatile void __iomem *addr)
+{
+	u16 val;
+
+	log_read_mmio(16, addr, _THIS_IP_, _RET_IP_);
+	__io_br();
+	val = __le16_to_cpu((__le16 __force)__raw_readw(addr));
+	__io_ar(val);
+	log_post_read_mmio(val, 16, addr, _THIS_IP_, _RET_IP_);
+	return val;
+}
+#endif
+
+#ifndef readl
+#define readl readl
+static inline u32 readl(const volatile void __iomem *addr)
+{
+	u32 val;
+
+	log_read_mmio(32, addr, _THIS_IP_, _RET_IP_);
+	__io_br();
+	val = __le32_to_cpu((__le32 __force)__raw_readl(addr));
+	__io_ar(val);
+	log_post_read_mmio(val, 32, addr, _THIS_IP_, _RET_IP_);
+	return val;
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef readq
+#define readq readq
+static inline u64 readq(const volatile void __iomem *addr)
+{
+	u64 val;
+
+	log_read_mmio(64, addr, _THIS_IP_, _RET_IP_);
+	__io_br();
+	val = __le64_to_cpu((__le64 __force)__raw_readq(addr));
+	__io_ar(val);
+	log_post_read_mmio(val, 64, addr, _THIS_IP_, _RET_IP_);
+	return val;
+}
+#endif
+#endif /* CONFIG_64BIT */
+
+#ifndef writeb
+#define writeb writeb
+static inline void writeb(u8 value, volatile void __iomem *addr)
+{
+	log_write_mmio(value, 8, addr, _THIS_IP_, _RET_IP_);
+	__io_bw();
+	__raw_writeb(value, addr);
+	__io_aw();
+	log_post_write_mmio(value, 8, addr, _THIS_IP_, _RET_IP_);
+}
+#endif
+
+#ifndef writew
+#define writew writew
+static inline void writew(u16 value, volatile void __iomem *addr)
+{
+	log_write_mmio(value, 16, addr, _THIS_IP_, _RET_IP_);
+	__io_bw();
+	__raw_writew((u16 __force)cpu_to_le16(value), addr);
+	__io_aw();
+	log_post_write_mmio(value, 16, addr, _THIS_IP_, _RET_IP_);
+}
+#endif
+
+#ifndef writel
+#define writel writel
+static inline void writel(u32 value, volatile void __iomem *addr)
+{
+	log_write_mmio(value, 32, addr, _THIS_IP_, _RET_IP_);
+	__io_bw();
+	__raw_writel((u32 __force)__cpu_to_le32(value), addr);
+	__io_aw();
+	log_post_write_mmio(value, 32, addr, _THIS_IP_, _RET_IP_);
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#ifndef writeq
+#define writeq writeq
+static inline void writeq(u64 value, volatile void __iomem *addr)
+{
+	log_write_mmio(value, 64, addr, _THIS_IP_, _RET_IP_);
+	__io_bw();
+	__raw_writeq((u64 __force)__cpu_to_le64(value), addr);
+	__io_aw();
+	log_post_write_mmio(value, 64, addr, _THIS_IP_, _RET_IP_);
+}
+#endif
+#endif /* CONFIG_64BIT */
 
 #ifndef PCI_IOBASE
 #define PCI_IOBASE ((void __iomem *)RELOC_HIDE((void *)0, 0))
diff --git a/include/linux/io.h b/include/linux/io.h
new file mode 100644
index 000000000000..9119e4e629d7
--- /dev/null
+++ b/include/linux/io.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef _LINUX_IO_H
+#define _LINUX_IO_H
+
+#define __LINUX_IO_STRICT_PROTOTYPES__
+#include <asm/io.h>
+
+#endif
-- 
2.39.2



