Delivery-date: Wed, 11 Jan 2023 09:02:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3g-008dnY-Bv
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:02:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3d-000064-Dg
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:02:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pePEKYM9zQbGJBP8eAbBuUjeZoGFc6sNXsn3yelKAlw=; b=l3NH1F73CK0/uDZ9HjCJw3xdXo
	f3UzJfPmMos/VL128xV8U2wL40BaA3q/L/qbu9PCWtl6N5yQ7jDxlLxuptcjn8Nqwoc8Dogu0x7yo
	ZXHfwJKDL0564FComXv0+k94krM8gcFOpp/UMxMPtBelVd1AR8ebDulPiiI9ldkwlYopdNGrFQdns
	kvM9LsrfoEpm1cYiw2u197+CB4QJgqiWRTd5W2GUFakmFnKPhoVMX1YkLCQ/xzHdhxN/+fZGgnEp4
	nCBh/X4VLe+kggaE1MwSzpqfwj8+/8EjI1ZZgeTXfMUPx9EvgR0PfjI9Pbrsy7bNOTouEReR6uazb
	W2y2f2lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW2D-00ADsN-46; Wed, 11 Jan 2023 08:00:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1T-00ADTE-IW
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:59:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1S-0007Xz-8b; Wed, 11 Jan 2023 08:59:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1R-005Fc8-Ko; Wed, 11 Jan 2023 08:59:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1Q-003uWL-F9; Wed, 11 Jan 2023 08:59:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 08:59:35 +0100
Message-Id: <20230111075940.922817-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111075940.922817-1-a.fatoum@pengutronix.de>
References: <20230111075940.922817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235947_853227_7882F660 
X-CRM114-Status: GOOD (  22.63  )
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
Subject: [PATCH 2/7] crypto: caam - sync 64-bit accessors with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox CAAM driver only ever ran on i.MX6 (32-bit little-endian
i.MX). There are also CAAM units on Layerscape and i.MX8. Prepare for
their support by syncing the current 64-bit accessors from Linux.

In addition to the existing caam_little_end, these can also consult
the caam_imx and caam_ptr_sz globals. They are for now initialized
to maintain i.MX6 compatibility, but may be initialized dynamically
in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/ctrl.c |   6 ++
 drivers/crypto/caam/regs.h | 192 +++++++++++++++++++++++++++----------
 2 files changed, 146 insertions(+), 52 deletions(-)

diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index f78940e1ac91..2e44f60c7f86 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -26,6 +26,12 @@
 bool caam_little_end;
 EXPORT_SYMBOL(caam_little_end);
 
+bool caam_imx = true;
+EXPORT_SYMBOL(caam_imx);
+
+size_t caam_ptr_sz = 4;
+EXPORT_SYMBOL(caam_ptr_sz);
+
 /*
  * Descriptor to instantiate RNG State Handle 0 in normal mode and
  * load the JDKEK, TDKEK and TDSK registers
diff --git a/drivers/crypto/caam/regs.h b/drivers/crypto/caam/regs.h
index f80ece94fde9..5c4b783e80fe 100644
--- a/drivers/crypto/caam/regs.h
+++ b/drivers/crypto/caam/regs.h
@@ -2,33 +2,93 @@
 /*
  * CAAM hardware register-level view
  *
- * Copyright 2008-2015 Freescale Semiconductor, Inc.
+ * Copyright 2008-2011 Freescale Semiconductor, Inc.
+ * Copyright 2018 NXP
  */
 
 #ifndef REGS_H
 #define REGS_H
 
 #include <linux/types.h>
+#include <linux/bitops.h>
 #include <io.h>
+#include <io-64-nonatomic-hi-lo.h>
 
-extern bool caam_little_end;
+/*
+ * Architecture-specific register access methods
+ *
+ * CAAM's bus-addressable registers are 64 bits internally.
+ * They have been wired to be safely accessible on 32-bit
+ * architectures, however. Registers were organized such
+ * that (a) they can be contained in 32 bits, (b) if not, then they
+ * can be treated as two 32-bit entities, or finally (c) if they
+ * must be treated as a single 64-bit value, then this can safely
+ * be done with two 32-bit cycles.
+ *
+ * For 32-bit operations on 64-bit values, CAAM follows the same
+ * 64-bit register access conventions as it's predecessors, in that
+ * writes are "triggered" by a write to the register at the numerically
+ * higher address, thus, a full 64-bit write cycle requires a write
+ * to the lower address, followed by a write to the higher address,
+ * which will latch/execute the write cycle.
+ *
+ * For example, let's assume a SW reset of CAAM through the master
+ * configuration register.
+ * - SWRST is in bit 31 of MCFG.
+ * - MCFG begins at base+0x0000.
+ * - Bits 63-32 are a 32-bit word at base+0x0000 (numerically-lower)
+ * - Bits 31-0 are a 32-bit word at base+0x0004 (numerically-higher)
+ *
+ * (and on Power, the convention is 0-31, 32-63, I know...)
+ *
+ * Assuming a 64-bit write to this MCFG to perform a software reset
+ * would then require a write of 0 to base+0x0000, followed by a
+ * write of 0x80000000 to base+0x0004, which would "execute" the
+ * reset.
+ *
+ * Of course, since MCFG 63-32 is all zero, we could cheat and simply
+ * write 0x8000000 to base+0x0004, and the reset would work fine.
+ * However, since CAAM does contain some write-and-read-intended
+ * 64-bit registers, this code defines 64-bit access methods for
+ * the sake of internal consistency and simplicity, and so that a
+ * clean transition to 64-bit is possible when it becomes necessary.
+ *
+ * There are limitations to this that the developer must recognize.
+ * 32-bit architectures cannot enforce an atomic-64 operation,
+ * Therefore:
+ *
+ * - On writes, since the HW is assumed to latch the cycle on the
+ *   write of the higher-numeric-address word, then ordered
+ *   writes work OK.
+ *
+ * - For reads, where a register contains a relevant value of more
+ *   that 32 bits, the hardware employs logic to latch the other
+ *   "half" of the data until read, ensuring an accurate value.
+ *   This is of particular relevance when dealing with CAAM's
+ *   performance counters.
+ *
+ */
 
-#define caam_to_cpu(len)				\
-static inline u##len caam##len ## _to_cpu(u##len val)	\
-{							\
-	if (caam_little_end)				\
-		return le##len ## _to_cpu(val);		\
-	else						\
-		return be##len ## _to_cpu(val);		\
+extern bool caam_little_end;
+extern bool caam_imx;
+extern size_t caam_ptr_sz;
+
+#define caam_to_cpu(len)						\
+static inline u##len caam##len ## _to_cpu(u##len val)			\
+{									\
+	if (caam_little_end)						\
+		return le##len ## _to_cpu((__force __le##len)val);	\
+	else								\
+		return be##len ## _to_cpu((__force __be##len)val);	\
 }
 
-#define cpu_to_caam(len)				\
-static inline u##len cpu_to_caam##len(u##len val)	\
-{							\
-	if (caam_little_end)				\
-		return cpu_to_le##len(val);		\
-	else						\
-		return cpu_to_be##len(val);		\
+#define cpu_to_caam(len)					\
+static inline u##len cpu_to_caam##len(u##len val)		\
+{								\
+	if (caam_little_end)					\
+		return (__force u##len)cpu_to_le##len(val);	\
+	else							\
+		return (__force u##len)cpu_to_be##len(val);	\
 }
 
 caam_to_cpu(16)
@@ -63,67 +123,95 @@ static inline void clrsetbits_32(void __iomem *reg, u32 clear, u32 set)
 }
 
 /*
- * The DMA address registers in the JR are a pair of 32-bit registers.
- * The layout is:
+ * The only users of these wr/rd_reg64 functions is the Job Ring (JR).
+ * The DMA address registers in the JR are handled differently depending on
+ * platform:
+ *
+ * 1. All BE CAAM platforms and i.MX platforms (LE CAAM):
  *
  *    base + 0x0000 : most-significant 32 bits
  *    base + 0x0004 : least-significant 32 bits
  *
  * The 32-bit version of this core therefore has to write to base + 0x0004
- * to set the 32-bit wide DMA address. This seems to be independent of the
- * endianness of the written/read data.
+ * to set the 32-bit wide DMA address.
+ *
+ * 2. All other LE CAAM platforms (LS1021A etc.)
+ *    base + 0x0000 : least-significant 32 bits
+ *    base + 0x0004 : most-significant 32 bits
  */
-
-#ifdef CONFIG_64BIT
 static inline void wr_reg64(void __iomem *reg, u64 data)
 {
-	if (caam_little_end)
-		iowrite64(data, reg);
-	else
+	if (caam_little_end) {
+		if (caam_imx) {
+			iowrite32(data >> 32, (u32 __iomem *)(reg));
+			iowrite32(data, (u32 __iomem *)(reg) + 1);
+		} else {
+			iowrite64(data, reg);
+		}
+	} else {
 		iowrite64be(data, reg);
+	}
 }
 
-static inline void rd_reg64(void __iomem *reg)
+static inline u64 rd_reg64(void __iomem *reg)
 {
-	if (caam_little_end)
-		ioread64(reg);
-	else
-		ioread64be(reg);
+	if (caam_little_end) {
+		if (caam_imx) {
+			u32 low, high;
+
+			high = ioread32(reg);
+			low  = ioread32(reg + sizeof(u32));
+
+			return low + ((u64)high << 32);
+		} else {
+			return ioread64(reg);
+		}
+	} else {
+		return ioread64be(reg);
+	}
 }
-#else /* CONFIG_64BIT */
-static inline void wr_reg64(void __iomem *reg, u64 data)
+
+static inline u64 cpu_to_caam_dma64(dma_addr_t value)
 {
-	wr_reg32((u32 __iomem *)(reg), data >> 32);
-	wr_reg32((u32 __iomem *)(reg) + 1, data);
+	if (caam_imx) {
+		u64 ret_val = (u64)cpu_to_caam32(lower_32_bits(value)) << 32;
+
+		if (IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT))
+			ret_val |= (u64)cpu_to_caam32(upper_32_bits(value));
+
+		return ret_val;
+	}
+
+	return cpu_to_caam64(value);
 }
 
-static inline u64 rd_reg64(void __iomem *reg)
+static inline u64 caam_dma64_to_cpu(u64 value)
 {
-	return ((u64)rd_reg32((u32 __iomem *)(reg)) << 32 |
-		(u64)rd_reg32((u32 __iomem *)(reg) + 1));
+	if (caam_imx)
+		return (((u64)caam32_to_cpu(lower_32_bits(value)) << 32) |
+			 (u64)caam32_to_cpu(upper_32_bits(value)));
+
+	return caam64_to_cpu(value);
 }
-#endif /* CONFIG_64BIT */
 
-static inline u64 cpu_to_caam_dma64(dma_addr_t value)
+static inline u64 cpu_to_caam_dma(u64 value)
 {
-	return (((u64)cpu_to_caam32(lower_32_bits(value)) << 32) |
-		 (u64)cpu_to_caam32(upper_32_bits(value)));
+	if (IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
+	    caam_ptr_sz == sizeof(u64))
+		return cpu_to_caam_dma64(value);
+	else
+		return cpu_to_caam32(value);
 }
 
-static inline u64 caam_dma64_to_cpu(u64 value)
+static inline u64 caam_dma_to_cpu(u64 value)
 {
-	return (((u64)caam32_to_cpu(lower_32_bits(value)) << 32) |
-		 (u64)caam32_to_cpu(upper_32_bits(value)));
+	if (IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
+	    caam_ptr_sz == sizeof(u64))
+		return caam_dma64_to_cpu(value);
+	else
+		return caam32_to_cpu(value);
 }
 
-#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
-#define cpu_to_caam_dma(value) cpu_to_caam_dma64(value)
-#define caam_dma_to_cpu(value) caam_dma64_to_cpu(value)
-#else
-#define cpu_to_caam_dma(value) cpu_to_caam32(value)
-#define caam_dma_to_cpu(value) caam32_to_cpu(value)
-#endif /* CONFIG_ARCH_DMA_ADDR_T_64BIT */
-
 /*
  * jr_outentry
  * Represents each entry in a JobR output ring
-- 
2.30.2



