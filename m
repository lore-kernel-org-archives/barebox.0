Delivery-date: Wed, 06 Nov 2024 20:03:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ7-005dZQ-38
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 20:03:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ8-0001vu-G3
	for lore@pengutronix.de; Wed, 06 Nov 2024 20:03:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XMeXFenaMJLdjLWNNQPayNQ1ShXshk5H8QMjHCRBQyo=; b=qjD+WIU4ESSsXGKtvX+B9K2EQv
	chZILxX4wIuj2qi9M9bXQURDu3ixGRyLVUjq8/c0FKWcd5v+2cnxsgBmwPXObC8J0Q0iaC2NhzNwN
	Ea4L8IE8kHr65k4z3y2gr1vziMEdnyZQXIL4Ndr2OrFekRnye5Sjj9Qi9yp2bCgJxTHHZ7ejrUKqi
	rGznDRQBK+Fra3LCm//YGCccFouiEjQChWXegI963HwMNANcKIDyuwgT9r60U9y5n9s5GaJsYT2dL
	DvHkqAhDLGvG7HrRkDbFfLYFxCGszgoJ4Pte0W9a4X4/IJHJ5+5qkeOxHedutFh9Suo3LL5htZohL
	G86NAygw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lIY-00000004R1u-0JsH;
	Wed, 06 Nov 2024 19:02:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lDc-00000004Puu-1p1Y
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 18:57:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-0000Vd-5v; Wed, 06 Nov 2024 19:57:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-002LMn-3B;
	Wed, 06 Nov 2024 19:57:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-0005bP-2s;
	Wed, 06 Nov 2024 19:57:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2024 19:57:22 +0100
Message-Id: <20241106185724.2526-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241106185724.2526-1-a.fatoum@pengutronix.de>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_105728_575331_01D45B9C 
X-CRM114-Status: GOOD (  14.03  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] ARM: Rockchip: save pointer to scratch memory in global variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This makes it easier to reference the scratch area in PBL without having
to compute the end of memory every time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c    | 22 ++++++++++++++--------
 include/mach/rockchip/bootrom.h | 13 +++++++------
 2 files changed, 21 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 4c16ec3bc66a..2649b80af9e2 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -12,6 +12,8 @@
 #include <mach/rockchip/rk3568-regs.h>
 #include <mach/rockchip/rk3588-regs.h>
 
+struct rockchip_scratch_space *rk_scratch;
+
 static unsigned long load_elf64_image_phdr(const void *elf)
 {
 	const Elf64_Ehdr *ehdr; /* Elf header structure pointer */
@@ -78,14 +80,16 @@ void rk3568_atf_load_bl31(void *fdt)
 
 void __noreturn rk3568_barebox_entry(void *fdt)
 {
-	unsigned long membase, memsize;
+	unsigned long membase, endmem;
 
 	membase = RK3568_DRAM_BOTTOM;
-	memsize = rk3568_ram0_size() - RK3568_DRAM_BOTTOM;
+	endmem = rk3568_ram0_size();
+
+	rk_scratch = (void *)arm_mem_scratch(endmem);
 
 	if (current_el() == 3) {
 		rk3568_lowlevel_init();
-		rockchip_store_bootrom_iram(membase, memsize, IOMEM(RK3568_IRAM_BASE));
+		rockchip_store_bootrom_iram(IOMEM(RK3568_IRAM_BASE));
 
 		/*
 		 * The downstream TF-A doesn't cope with our device tree when
@@ -102,7 +106,7 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
-	barebox_arm_entry(membase, memsize, fdt);
+	barebox_arm_entry(membase, endmem - membase, fdt);
 }
 
 void rk3588_atf_load_bl31(void *fdt)
@@ -112,14 +116,16 @@ void rk3588_atf_load_bl31(void *fdt)
 
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
-       unsigned long membase, memsize;
+       unsigned long membase, endmem;
 
        membase = RK3588_DRAM_BOTTOM;
-       memsize = rk3588_ram0_size() - RK3588_DRAM_BOTTOM;
+       endmem = rk3588_ram0_size();
+
+       rk_scratch = (void *)arm_mem_scratch(endmem);
 
        if (current_el() == 3) {
                rk3588_lowlevel_init();
-               rockchip_store_bootrom_iram(membase, memsize, IOMEM(RK3588_IRAM_BASE));
+               rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
 
                /*
                 * The downstream TF-A doesn't cope with our device tree when
@@ -136,5 +142,5 @@ void __noreturn rk3588_barebox_entry(void *fdt)
                /* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
        }
 
-       barebox_arm_entry(membase, memsize, fdt);
+       barebox_arm_entry(membase, endmem - membase, fdt);
 }
diff --git a/include/mach/rockchip/bootrom.h b/include/mach/rockchip/bootrom.h
index 5b999fc6068a..06450829b99a 100644
--- a/include/mach/rockchip/bootrom.h
+++ b/include/mach/rockchip/bootrom.h
@@ -5,23 +5,24 @@
 
 #include <linux/compiler.h>
 #include <linux/string.h>
+#include <pbl.h>
 #include <asm/barebox-arm.h>
 
 struct rockchip_scratch_space {
 	u32 irom[16];
 };
 
-static inline void rockchip_store_bootrom_iram(ulong membase,
-                                               ulong memsize,
-                                               const void *iram)
+extern struct rockchip_scratch_space *rk_scratch;
+
+static inline void rockchip_store_bootrom_iram(const void *iram)
 {
-	void *dst = (void *)arm_mem_scratch(membase + memsize);
-	memcpy(dst, iram, sizeof(struct rockchip_scratch_space));
+	if (rk_scratch)
+		memcpy(rk_scratch, iram, sizeof(struct rockchip_scratch_space));
 }
 
 static inline const struct rockchip_scratch_space *rockchip_scratch_space(void)
 {
-	return arm_mem_scratch_get();
+	return IN_PBL ? rk_scratch : arm_mem_scratch_get();
 }
 
 void rockchip_parse_bootrom_iram(const void *iram);
-- 
2.39.5



