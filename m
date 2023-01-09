Delivery-date: Mon, 09 Jan 2023 16:13:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtqK-006leY-BH
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:13:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtqH-0003p2-Jg
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:13:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r4bFmGLut0pl2udX7Ek6IZ2929VBILb7hJWGnDY1O9s=; b=m9meiAER7Cw2swKT0mZampRVYz
	xow63kQF7AgmRdZ6US1AHpx9etpshOAEj9Nhoe7Gg8Ya3sJUGIQV3d7+NyWljWlFdTMYfiYxqpxua
	5v/hh3aj/c7hKnNQAN80MlXHnmH3PkAOKVpUl0IS7ljsgUZFhMXaKWo5ijDgQOBA5XN8NL4bdIi7M
	OHItf+AVRpmVriM8Iuq/ene8AGHW81EH4uo8yRIGgP/aqWCtp3UUQHhSGhY+isV6pUV9FAj+QrRZh
	fCgK6n2LYnluQPTc3DAgRR36/6lw2h4zq5lOX9ET+icEwx//Kbe/19vMDjJ3xLEkyYUJavFHXiVKw
	/dxVogow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtot-0028JS-0K; Mon, 09 Jan 2023 15:12:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtoc-00289Z-IR
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:12:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtob-0003Md-9s; Mon, 09 Jan 2023 16:11:57 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoa-004sbI-KJ; Mon, 09 Jan 2023 16:11:56 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoZ-008bxu-MY; Mon, 09 Jan 2023 16:11:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:11:48 +0100
Message-Id: <20230109151152.2052493-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
References: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_071158_654945_03475F01 
X-CRM114-Status: GOOD (  10.09  )
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
Subject: [PATCH 3/7] include: sync io-64-nonatomic-*.h headers with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux headers additionally define readq/writeq_relaxed,
io(read|write)64(be|le|), which may come in handy when porting code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/io-64-nonatomic-hi-lo.h | 90 +++++++++++++++++++++++++++++++++
 include/io-64-nonatomic-lo-hi.h | 90 +++++++++++++++++++++++++++++++++
 2 files changed, 180 insertions(+)

diff --git a/include/io-64-nonatomic-hi-lo.h b/include/io-64-nonatomic-hi-lo.h
index 3393e6317e36..bac2bc6a74b9 100644
--- a/include/io-64-nonatomic-hi-lo.h
+++ b/include/io-64-nonatomic-hi-lo.h
@@ -3,6 +3,7 @@
 #define _LINUX_IO_64_NONATOMIC_HI_LO_H_
 
 #include <io.h>
+#include <asm-generic/int-ll64.h>
 
 static inline __u64 hi_lo_readq(const volatile void __iomem *addr)
 {
@@ -21,6 +22,23 @@ static inline void hi_lo_writeq(__u64 val, volatile void __iomem *addr)
 	writel(val, addr);
 }
 
+static inline __u64 hi_lo_readq_relaxed(const volatile void __iomem *addr)
+{
+	const volatile u32 __iomem *p = addr;
+	u32 low, high;
+
+	high = readl_relaxed(p + 1);
+	low = readl_relaxed(p);
+
+	return low + ((u64)high << 32);
+}
+
+static inline void hi_lo_writeq_relaxed(__u64 val, volatile void __iomem *addr)
+{
+	writel_relaxed(val >> 32, addr + 4);
+	writel_relaxed(val, addr);
+}
+
 #ifndef readq
 #define readq hi_lo_readq
 #endif
@@ -29,4 +47,76 @@ static inline void hi_lo_writeq(__u64 val, volatile void __iomem *addr)
 #define writeq hi_lo_writeq
 #endif
 
+#ifndef readq_relaxed
+#define readq_relaxed hi_lo_readq_relaxed
+#endif
+
+#ifndef writeq_relaxed
+#define writeq_relaxed hi_lo_writeq_relaxed
+#endif
+
+#ifndef ioread64_hi_lo
+#define ioread64_hi_lo ioread64_hi_lo
+static inline u64 ioread64_hi_lo(const void __iomem *addr)
+{
+	u32 low, high;
+
+	high = ioread32(addr + sizeof(u32));
+	low = ioread32(addr);
+
+	return low + ((u64)high << 32);
+}
+#endif
+
+#ifndef iowrite64_hi_lo
+#define iowrite64_hi_lo iowrite64_hi_lo
+static inline void iowrite64_hi_lo(u64 val, void __iomem *addr)
+{
+	iowrite32(val >> 32, addr + sizeof(u32));
+	iowrite32(val, addr);
+}
+#endif
+
+#ifndef ioread64be_hi_lo
+#define ioread64be_hi_lo ioread64be_hi_lo
+static inline u64 ioread64be_hi_lo(const void __iomem *addr)
+{
+	u32 low, high;
+
+	high = ioread32be(addr);
+	low = ioread32be(addr + sizeof(u32));
+
+	return low + ((u64)high << 32);
+}
+#endif
+
+#ifndef iowrite64be_hi_lo
+#define iowrite64be_hi_lo iowrite64be_hi_lo
+static inline void iowrite64be_hi_lo(u64 val, void __iomem *addr)
+{
+	iowrite32be(val >> 32, addr);
+	iowrite32be(val, addr + sizeof(u32));
+}
+#endif
+
+#ifndef ioread64
+#define ioread64_is_nonatomic
+#define ioread64 ioread64_hi_lo
+#endif
+
+#ifndef iowrite64
+#define iowrite64_is_nonatomic
+#define iowrite64 iowrite64_hi_lo
+#endif
+
+#ifndef ioread64be
+#define ioread64be_is_nonatomic
+#define ioread64be ioread64be_hi_lo
+#endif
+
+#ifndef iowrite64be
+#define iowrite64be_is_nonatomic
+#define iowrite64be iowrite64be_hi_lo
+#endif
+
 #endif	/* _LINUX_IO_64_NONATOMIC_HI_LO_H_ */
diff --git a/include/io-64-nonatomic-lo-hi.h b/include/io-64-nonatomic-lo-hi.h
index 62b40227949e..6d50204b8560 100644
--- a/include/io-64-nonatomic-lo-hi.h
+++ b/include/io-64-nonatomic-lo-hi.h
@@ -3,6 +3,7 @@
 #define _LINUX_IO_64_NONATOMIC_LO_HI_H_
 
 #include <io.h>
+#include <asm-generic/int-ll64.h>
 
 static inline __u64 lo_hi_readq(const volatile void __iomem *addr)
 {
@@ -21,6 +22,23 @@ static inline void lo_hi_writeq(__u64 val, volatile void __iomem *addr)
 	writel(val >> 32, addr + 4);
 }
 
+static inline __u64 lo_hi_readq_relaxed(const volatile void __iomem *addr)
+{
+	const volatile u32 __iomem *p = addr;
+	u32 low, high;
+
+	low = readl_relaxed(p);
+	high = readl_relaxed(p + 1);
+
+	return low + ((u64)high << 32);
+}
+
+static inline void lo_hi_writeq_relaxed(__u64 val, volatile void __iomem *addr)
+{
+	writel_relaxed(val, addr);
+	writel_relaxed(val >> 32, addr + 4);
+}
+
 #ifndef readq
 #define readq lo_hi_readq
 #endif
@@ -29,4 +47,76 @@ static inline void lo_hi_writeq(__u64 val, volatile void __iomem *addr)
 #define writeq lo_hi_writeq
 #endif
 
+#ifndef readq_relaxed
+#define readq_relaxed lo_hi_readq_relaxed
+#endif
+
+#ifndef writeq_relaxed
+#define writeq_relaxed lo_hi_writeq_relaxed
+#endif
+
+#ifndef ioread64_lo_hi
+#define ioread64_lo_hi ioread64_lo_hi
+static inline u64 ioread64_lo_hi(const void __iomem *addr)
+{
+	u32 low, high;
+
+	low = ioread32(addr);
+	high = ioread32(addr + sizeof(u32));
+
+	return low + ((u64)high << 32);
+}
+#endif
+
+#ifndef iowrite64_lo_hi
+#define iowrite64_lo_hi iowrite64_lo_hi
+static inline void iowrite64_lo_hi(u64 val, void __iomem *addr)
+{
+	iowrite32(val, addr);
+	iowrite32(val >> 32, addr + sizeof(u32));
+}
+#endif
+
+#ifndef ioread64be_lo_hi
+#define ioread64be_lo_hi ioread64be_lo_hi
+static inline u64 ioread64be_lo_hi(const void __iomem *addr)
+{
+	u32 low, high;
+
+	low = ioread32be(addr + sizeof(u32));
+	high = ioread32be(addr);
+
+	return low + ((u64)high << 32);
+}
+#endif
+
+#ifndef iowrite64be_lo_hi
+#define iowrite64be_lo_hi iowrite64be_lo_hi
+static inline void iowrite64be_lo_hi(u64 val, void __iomem *addr)
+{
+	iowrite32be(val, addr + sizeof(u32));
+	iowrite32be(val >> 32, addr);
+}
+#endif
+
+#ifndef ioread64
+#define ioread64_is_nonatomic
+#define ioread64 ioread64_lo_hi
+#endif
+
+#ifndef iowrite64
+#define iowrite64_is_nonatomic
+#define iowrite64 iowrite64_lo_hi
+#endif
+
+#ifndef ioread64be
+#define ioread64be_is_nonatomic
+#define ioread64be ioread64be_lo_hi
+#endif
+
+#ifndef iowrite64be
+#define iowrite64be_is_nonatomic
+#define iowrite64be iowrite64be_lo_hi
+#endif
+
 #endif	/* _LINUX_IO_64_NONATOMIC_LO_HI_H_ */
-- 
2.30.2



