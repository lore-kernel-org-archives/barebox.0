Delivery-date: Wed, 09 Oct 2024 08:08:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPsS-0027eb-1O
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 08:08:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPsR-0007KM-Lf
	for lore@pengutronix.de; Wed, 09 Oct 2024 08:08:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tb2Vyubzd8wlW8fO836yi36NPwsIhesK+/xd2S9LjNM=; b=uzcylolF8cfr72mXPhqjdTiFbc
	WdX0cyhZK10366tOFNxB5BDr+hBjl6XXAoM402NzIX2NppyIPK9qp0bh9StYer0hh30kzAc7T+Ovr
	Fwb5I1hHyk+m5812hEgHNYGTXWm9JB2woifVudwin/ymv+4sVuHnjnsqU4X/7/NYaeHQ1CsxA9onx
	u5EToTwEdYs8Rc6dJQhtSJp3BcbpxlbZqFjzGha/vhc3eOzxJaPZGKz9Q5NjvqoEeg/DuSzs04vJW
	sgtDtx/+1TNiskpG/BoIm71Myf1TmT1wvi9W6HozkHvbDU8eeu3YWpLmgcaafstymwe4YLDh9gxbh
	UN5qTwpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPry-000000082mh-2kky;
	Wed, 09 Oct 2024 06:08:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPpI-000000082IW-3AEW
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 06:05:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpH-0006vD-9g; Wed, 09 Oct 2024 08:05:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-000XZt-Qy; Wed, 09 Oct 2024 08:05:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-00HI6s-2P;
	Wed, 09 Oct 2024 08:05:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Peter Maydell <peter.maydell@linaro.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 08:05:07 +0200
Message-Id: <20241009060511.4121157-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
References: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_230536_896985_C20DDC2C 
X-CRM114-Status: GOOD (  15.62  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] ARM64: io: implement I/O accessors in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently implement the I/O accessors in C with volatile accesses.
With I/O memory being mapped strongly ordered, we are thus ensured that
actual memory access size and order is as specified in the C code.

This was sufficient so far, but triggers problems when barebox is run
under KVM: KVM expects that MMIO regions are only accessed via
instructions that set the ISV bit in the ESR_EL1 register.

An example for an instruction that doesn't set the ISV bit is the
pre-index and post-index form of ldr/str, e.g.:

	ldr     x0, =0x9000fe0
	ldr     w1, [x0], #4

This will fail when virtualized with KVM, because KVM would have to
decode the instruction on trap to handle the post-increment of x0,
which is currently unimplemented.

Let's fix this by implementing readl/writel and friends in assembly
unconditionally like Linux does.

This introduces some slight overhead, because the post-index variants
reduce code size when reading multiple registers sequentially, but this
ought to be negligible.

Suggested-by: Peter Maydell <peter.maydell@linaro.org>
Link: https://lore.kernel.org/all/CAFEAcA_Yv2a=XCKw80y9iyBRoC27UL6Sfzgy4KwFDkC1gbzK7w@mail.gmail.com/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/io.h   |  5 +-
 arch/arm/include/asm/io64.h | 99 +++++++++++++++++++++++++++++++++++++
 2 files changed, 103 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/include/asm/io64.h

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index 9e9b13ad18c6..0b9bb9bfaf9a 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -5,7 +5,7 @@
 
 #include <linux/compiler.h>
 
-#ifndef CONFIG_CPU_64
+#ifdef CONFIG_ARM32
 /*
  * Generic IO read/write.  These perform native-endian accesses.  Note
  * that some architectures will want to re-define __raw_{read,write}w.
@@ -25,6 +25,9 @@ void __raw_readsl(const volatile void __iomem *addr, void *data, int longlen);
 #define writesb(p,d,l)		__raw_writesb(p,d,l)
 #define writesw(p,d,l)		__raw_writesw(p,d,l)
 #define writesl(p,d,l)		__raw_writesl(p,d,l)
+
+#elif defined(CONFIG_ARM64)
+#include <asm/io64.h>
 #endif
 
 #define	IO_SPACE_LIMIT	0
diff --git a/arch/arm/include/asm/io64.h b/arch/arm/include/asm/io64.h
new file mode 100644
index 000000000000..6e3cba97f7ca
--- /dev/null
+++ b/arch/arm/include/asm/io64.h
@@ -0,0 +1,99 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Based on arch/arm/include/asm/io.h
+ *
+ * Copyright (C) 1996-2000 Russell King
+ * Copyright (C) 2012 ARM Ltd.
+ */
+#ifndef __ASM_IO64_H
+#define __ASM_IO64_H
+
+#include <linux/types.h>
+#include <linux/compiler.h>
+#include <asm/byteorder.h>
+
+/*
+ * Generic IO read/write.  These perform native-endian accesses.
+ */
+static __always_inline void ___raw_writeb(u8 val, volatile void __iomem *addr)
+{
+	volatile u8 __iomem *ptr = addr;
+	asm volatile("strb %w0, %1" : : "rZ" (val), "Qo" (*ptr));
+}
+
+static __always_inline void ___raw_writew(u16 val, volatile void __iomem *addr)
+{
+	volatile u16 __iomem *ptr = addr;
+	asm volatile("strh %w0, %1" : : "rZ" (val), "Qo" (*ptr));
+}
+
+static __always_inline void ___raw_writel(u32 val, volatile void __iomem *addr)
+{
+	volatile u32 __iomem *ptr = addr;
+	asm volatile("str %w0, %1" : : "rZ" (val), "Qo" (*ptr));
+}
+
+static __always_inline void ___raw_writeq(u64 val, volatile void __iomem *addr)
+{
+	volatile u64 __iomem *ptr = addr;
+	asm volatile("str %x0, %1" : : "rZ" (val), "Qo" (*ptr));
+}
+
+static __always_inline u8 ___raw_readb(const volatile void __iomem *addr)
+{
+	u8 val;
+	asm volatile("ldrb %w0, [%1]" : "=r" (val) : "r" (addr));
+	return val;
+}
+
+static __always_inline u16 ___raw_readw(const volatile void __iomem *addr)
+{
+	u16 val;
+
+	asm volatile("ldrh %w0, [%1]" : "=r" (val) : "r" (addr));
+	return val;
+}
+
+static __always_inline u32 ___raw_readl(const volatile void __iomem *addr)
+{
+	u32 val;
+	asm volatile("ldr %w0, [%1]" : "=r" (val) : "r" (addr));
+	return val;
+}
+
+static __always_inline u64 ___raw_readq(const volatile void __iomem *addr)
+{
+	u64 val;
+	asm volatile("ldr %0, [%1]" : "=r" (val) : "r" (addr));
+	return val;
+}
+
+
+#ifdef __LINUX_IO_STRICT_PROTOTYPES__
+#define __IOMEM(a)	(a)
+#else
+#define __IOMEM(a)	((void __force __iomem *)(a))
+#endif
+
+#define __raw_writeb(v, a) ___raw_writeb(v, __IOMEM(a))
+#define __raw_writew(v, a) ___raw_writew(v, __IOMEM(a))
+#define __raw_writel(v, a) ___raw_writel(v, __IOMEM(a))
+#define __raw_writeq(v, a) ___raw_writeq(v, __IOMEM(a))
+
+#define __raw_readb(a) ___raw_readb(__IOMEM(a))
+#define __raw_readw(a) ___raw_readw(__IOMEM(a))
+#define __raw_readl(a) ___raw_readl(__IOMEM(a))
+#define __raw_readq(a) ___raw_readq(__IOMEM(a))
+
+/*
+ * io{read,write}{16,32,64}be() macros
+ */
+#define ioread16be(p)		({ __u16 __v = be16_to_cpu((__force __be16)__raw_readw(p)); __v; })
+#define ioread32be(p)		({ __u32 __v = be32_to_cpu((__force __be32)__raw_readl(p)); __v; })
+#define ioread64be(p)		({ __u64 __v = be64_to_cpu((__force __be64)__raw_readq(p)); __v; })
+
+#define iowrite16be(v,p)	({ __raw_writew((__force __u16)cpu_to_be16(v), p); })
+#define iowrite32be(v,p)	({ __raw_writel((__force __u32)cpu_to_be32(v), p); })
+#define iowrite64be(v,p)	({ __raw_writeq((__force __u64)cpu_to_be64(v), p); })
+
+#endif	/* __ASM_IO64_H */
-- 
2.39.5



