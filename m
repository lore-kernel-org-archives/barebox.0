Delivery-date: Mon, 01 Jul 2024 09:28:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBSI-000QKa-1R
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:28:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBSH-0006To-R7
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:28:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4+ypI3b+ECiBY63bg4rKJBNEeebNB9sbE0+EMg/p7hI=; b=0P7uBjaeiS+fbjYcG5Ql4hh4eR
	h7r02oZDtGhCU93qjb1jUMFYDS+93iU3cfoMCJ7GbczePvEb0DOPvUQGZR4JeFNSk/KyNZEje5iNy
	wRn77vJwjt7+iBDYurjEF3s9m/+JZfOlRWOnxwLlkzy3sWG2dkXVRq9gWtc8ioVN/LN6Jhb4jOD1N
	ymG5pKbyx4MGozQP1Y3RoSYOpQlci8CxxqtOjSxgRVNXujIKyioGTZXX1GoZN3uA+EziM8zQu2c2t
	9kqyLF+5EMu4IgInJnfecncDeFiBPh4NKBHHnJUy4cbjDpJHRAHhfHIxOWyY5dVutaITNVaAL/Gnu
	JQV6kkMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBRs-000000021dq-2vTR;
	Mon, 01 Jul 2024 07:27:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBRp-000000021ch-0N6b
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:27:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRn-0006Kq-Pp; Mon, 01 Jul 2024 09:27:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRn-006JiD-DO; Mon, 01 Jul 2024 09:27:35 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBRn-000gXu-13;
	Mon, 01 Jul 2024 09:27:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:27:32 +0200
Message-Id: <20240701072733.163431-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_002737_150893_DABA5285 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: [PATCH 1/2] sandbox: io: alias first page of I/O memory to I/O port space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already emulate 64KiB of port space by directing (in|out)[bwl] accesses
to the __pci_iobase static array.

By have (read|write)[bwlq] access the first 4K of that port space when
trying to access the NULL page.

That way generic drivers like e.g. pinctrl-single can be trivially
described in the device tree without having to worry about runtime fixup
of the base address in the DT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/io.h | 70 +++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index eec279b88834..81e9a78151c1 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -3,12 +3,82 @@
 #ifndef __ASM_SANDBOX_IO_H
 #define __ASM_SANDBOX_IO_H
 
+#include <linux/types.h>
+#include <linux/compiler.h>
+
 #define	IO_SPACE_LIMIT 0xffff
 /* pacify static analyzers */
 #define PCI_IOBASE     ((void __iomem *)__pci_iobase)
 
 extern unsigned char __pci_iobase[IO_SPACE_LIMIT];
 
+/*
+ * Alias first page of I/O memory to I/O port space
+ */
+static inline volatile void __iomem *
+__xlate_addr(const volatile void __iomem *addr)
+{
+	if ((uintptr_t)addr  < 0x1000)
+		addr += (uintptr_t)__pci_iobase;
+	return (volatile void __iomem *)addr;
+}
+
+#define __raw_readb __raw_readb
+static inline u8 __raw_readb(const volatile void __iomem *addr)
+{
+	return *(const volatile u8 __force *)__xlate_addr(addr);
+}
+
+#define __raw_readw __raw_readw
+static inline u16 __raw_readw(const volatile void __iomem *addr)
+{
+	return *(const volatile u16 __force *)__xlate_addr(addr);
+}
+
+#define __raw_readl __raw_readl
+static inline u32 __raw_readl(const volatile void __iomem *addr)
+{
+	return *(const volatile u32 __force *)__xlate_addr(addr);
+}
+
+#ifdef CONFIG_64BIT
+#define __raw_readq __raw_readq
+static inline u64 __raw_readq(const volatile void __iomem *addr)
+{
+	return *(const volatile u64 __force *)__xlate_addr(addr);
+}
+#endif /* CONFIG_64BIT */
+
+#define __raw_writeb __raw_writeb
+static inline void __raw_writeb(u8 value, volatile void __iomem *addr)
+{
+	*(volatile u8 __force *)__xlate_addr(addr) = value;
+}
+
+#define __raw_writew __raw_writew
+static inline void __raw_writew(u16 value, volatile void __iomem *addr)
+{
+	*(volatile u16 __force *)__xlate_addr(addr) = value;
+}
+
+#ifndef __raw_writel
+#define __raw_writel __raw_writel
+static inline void __raw_writel(u32 value, volatile void __iomem *addr)
+{
+	*(volatile u32 __force *)__xlate_addr(addr) = value;
+}
+#endif
+
+#ifdef CONFIG_64BIT
+#define __raw_writeq __raw_writeq
+static inline void __raw_writeq(u64 value, volatile void __iomem *addr)
+{
+	*(volatile u64 __force *)__xlate_addr(addr) = value;
+}
+#endif /* CONFIG_64BIT */
+
+#undef __xlate_addr
+
 #include <asm-generic/io.h>
 
 #endif /* __ASM_SANDBOX_IO_H */
-- 
2.39.2



