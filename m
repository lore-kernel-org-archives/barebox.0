Delivery-date: Mon, 21 Feb 2022 11:54:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM6LF-005vUa-BF
	for lore@lore.pengutronix.de; Mon, 21 Feb 2022 11:54:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM6LD-0007Me-7M
	for lore@pengutronix.de; Mon, 21 Feb 2022 11:54:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MPhxh+iwhb+8qmyvOI+nW4kXsr0fl+zipRWK8dLwUGM=; b=QLjokRJfzp3Iwl
	ZtZN7AfnIUKAnNwNKUmZjwDCWOL+wjPYZc99BT8Med8ZwgmP+AQDr6bBBZqVUGzyORmlIT8oH1FrD
	0+FlvoiuL9Gj7CvGPnqI5v15xTiDJMd6UyedTO4+l3gez+7YkNGa9QHIhoL3rerRVW0aqivUrQ21C
	3NzGbdgrkA0i2+dcr+EM4qM339KtT9HOVSdw+fx+Gplmy9Br6Ulxl7v2SjjqBPS8UhZ10ZEau3F49
	uQ60SSv6kxpLAoLe36HJUEulg5DJxVMvwroxxFQVx0+NsP2d8R3u6cabV5nsS6Su5buv0/Gq9oA+R
	N2Pyi2em2iP338Uxggig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM6Jo-0058QD-R8; Mon, 21 Feb 2022 10:53:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM63Q-0050CU-HI
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 10:36:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nM63P-0004uV-5d; Mon, 21 Feb 2022 11:36:27 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nM63O-00FdrD-N6; Mon, 21 Feb 2022 11:36:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Feb 2022 11:36:24 +0100
Message-Id: <20220221103625.3728055-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_023628_631395_2D05DF44 
X-CRM114-Status: GOOD (  14.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: stm32mp: ddrctl: add STM32MP131 RAM size querying
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Full buswidth for STM32MP131 means 2 byte wide, not 4 as the memory bus
is restricted to 16-bit. Teach barebox the difference.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/ddrctrl.c               | 26 ++++++++++++++-----
 arch/arm/mach-stm32mp/include/mach/revision.h |  8 ++++++
 2 files changed, 27 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 93996d0afc79..7f0944d7e77c 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -9,6 +9,7 @@
 #include <mach/ddr_regs.h>
 #include <mach/entry.h>
 #include <mach/stm32.h>
+#include <mach/revision.h>
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
 #include <pbl.h>
@@ -62,7 +63,8 @@ enum ddrctrl_buswidth {
 };
 
 static unsigned long ddrctrl_addrmap_ramsize(struct stm32mp1_ddrctl __iomem *d,
-					     enum ddrctrl_buswidth buswidth)
+					     enum ddrctrl_buswidth buswidth,
+					     unsigned nb_bytes)
 {
 	unsigned banks = 3, cols = 12, rows = 16;
 	u32 reg;
@@ -99,21 +101,26 @@ static unsigned long ddrctrl_addrmap_ramsize(struct stm32mp1_ddrctl __iomem *d,
 	if (LINE_UNUSED(reg, ADDRMAP6_ROW_B13)) rows--;
 	if (LINE_UNUSED(reg, ADDRMAP6_ROW_B12)) rows--;
 
-	return memory_sdram_size(cols, rows, BIT(banks), 4 / BIT(buswidth));
+	return memory_sdram_size(cols, rows, BIT(banks), nb_bytes / BIT(buswidth));
 }
 
-static inline unsigned ddrctrl_ramsize(void __iomem *base)
+static inline unsigned ddrctrl_ramsize(void __iomem *base, unsigned nb_bytes)
 {
 	struct stm32mp1_ddrctl __iomem *ddrctl = base;
 	unsigned buswidth = readl(&ddrctl->mstr) & DDRCTRL_MSTR_DATA_BUS_WIDTH_MASK;
 	buswidth >>= DDRCTRL_MSTR_DATA_BUS_WIDTH_SHIFT;
 
-	return ddrctrl_addrmap_ramsize(ddrctl, buswidth);
+	return ddrctrl_addrmap_ramsize(ddrctl, buswidth, nb_bytes);
 }
 
 static inline unsigned stm32mp1_ddrctrl_ramsize(void)
 {
-	return ddrctrl_ramsize(IOMEM(STM32_DDRCTL_BASE));
+	u32 nb_bytes = 4;
+
+	if (cpu_stm32_is_stm32mp13())
+		nb_bytes /= 2;
+
+	return ddrctrl_ramsize(IOMEM(STM32_DDRCTL_BASE), nb_bytes);
 }
 
 void __noreturn stm32mp1_barebox_entry(void *boarddata)
@@ -126,17 +133,22 @@ static int stm32mp1_ddr_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	void __iomem *base;
+	unsigned long nb_bytes;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	base = IOMEM(iores->start);
 
-	return arm_add_mem_device("ram0", STM32_DDR_BASE, ddrctrl_ramsize(base));
+	nb_bytes = (unsigned long)device_get_match_data(dev);
+
+	return arm_add_mem_device("ram0", STM32_DDR_BASE,
+				  ddrctrl_ramsize(base, nb_bytes));
 }
 
 static __maybe_unused struct of_device_id stm32mp1_ddr_dt_ids[] = {
-	{ .compatible = "st,stm32mp1-ddr" },
+	{ .compatible = "st,stm32mp1-ddr", .data = (void *)4 },
+	{ .compatible = "st,stm32mp13-ddr", .data = (void *)2 },
 	{ /* sentinel */ }
 };
 
diff --git a/arch/arm/mach-stm32mp/include/mach/revision.h b/arch/arm/mach-stm32mp/include/mach/revision.h
index 2ef8ef30c3ae..c141b925a156 100644
--- a/arch/arm/mach-stm32mp/include/mach/revision.h
+++ b/arch/arm/mach-stm32mp/include/mach/revision.h
@@ -32,6 +32,14 @@
 #define CPU_STM32MP151Fxx	0x050000AE
 #define CPU_STM32MP151Dxx	0x050000AF
 
+#define cpu_stm32_is(mask, val) ({ \
+	u32 type; \
+	__stm32mp_get_cpu_type(&type) == 0 ? (type & mask) == val : 0; \
+})
+
+#define cpu_stm32_is_stm32mp15() cpu_stm32_is(0xFFFF0000, 0x05000000)
+#define cpu_stm32_is_stm32mp13() cpu_stm32_is(0xFFFF0000, 0x05010000)
+
 /* silicon revisions */
 #define CPU_REV_A	0x1000
 #define CPU_REV_B	0x2000
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

