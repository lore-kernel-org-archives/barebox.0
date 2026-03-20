Delivery-date: Fri, 20 Mar 2026 09:32:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VH8-002xuV-39
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:32:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VH8-0003Sg-9I
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:32:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iQWVRjmUNgjfIfT34gm059L0GbTnF1/xEwsXmww1Zjs=; b=z0xQNGJa57UNvj50qUPUM/4kbk
	CmB4NqpsMMh1BRR5HDYLkGjxSWzUPEAxCTBVnawmcl0kGXYyQH4YHcWyxevf4Yij0n0C1CZ266l3n
	HHNeobi5r0fxYA7b2QieMJNGsXtHQHh1CklMb2wN2VSROgv/viGt2FChIvwe63J3B0sLm1KA4etQm
	iH0z6Rg9VlEq2X3cmVjY8K6dobDlG5gS0vokxl2E8JF/CGyf4gk58LeXLaRMlGv5M7CyaTG8/hI7E
	e7qYgwfgKl7nxr0bAd0atu/LPrQpRpZFcm0VQxkyzK2HmB6lL+V5kmJASbsxTPtoLt9O9dAJfVoz2
	csNTDBAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGl-0000000CM3e-43iE;
	Fri, 20 Mar 2026 08:31:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGj-0000000CM20-1xZV
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:31:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGK-00031X-1j; Fri, 20 Mar 2026 09:31:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-001DBR-2A;
	Fri, 20 Mar 2026 09:31:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-0000000DiE9-2NyZ;
	Fri, 20 Mar 2026 09:31:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2026 09:31:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-compressed-firmware-rockchip-v1-4-7d03c7e39d2f@pengutronix.de>
References: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
In-Reply-To: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773995479; l=5490;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qr5WP0arnna9hn/vIjOefaHu5dTl8hcXxz9Kr39WmrQ=;
 b=EqkgLQ8YQH7SHoXTJh+cT6dToFp4HC5WEe/NiK9XL2AxJsG/aFXY1fbKrjgrwez4I/Smcmbe1
 nfED4J5tIOaDY+NKZxPPJ2tXMk2jdfFDZLjBJgrikCs80v24TkCBNw1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_013145_512678_5B27B329 
X-CRM114-Status: GOOD (  10.63  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] ARM: Rockchip: Drop rk3xxx_atf_load_bl31()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rk3xxx_atf_load_bl31() are exported but only used in atf.c. Drop these
functions and inline the code in rk3xxx_barebox_entry().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 36 ++++++++----------------------------
 include/mach/rockchip/atf.h  | 14 --------------
 2 files changed, 8 insertions(+), 42 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 37802bfade..4e1b9f6a21 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -185,12 +185,6 @@ static void rockchip_atf_load_bl31(void *fdt)
 		   barebox_load_address, (uintptr_t)fdt);
 }
 
-void rk3562_atf_load_bl31(void *fdt)
-{
-	ROCKCHIP_GET_ADDRESSES(RK3562, rk3562_bl31_bin, rk3562_bl32_bin);
-	rockchip_atf_load_bl31(fdt);
-}
-
 void __noreturn rk3562_barebox_entry(void *fdt)
 {
 	phys_addr_t memend;
@@ -204,6 +198,7 @@ void __noreturn rk3562_barebox_entry(void *fdt)
 	if (current_el() == 3) {
 		rk3562_lowlevel_init();
 		rockchip_store_bootrom_iram(IOMEM(RK3562_IRAM_BASE));
+		ROCKCHIP_GET_ADDRESSES(RK3562, rk3562_bl31_bin, rk3562_bl32_bin);
 
 		/*
 		 * The downstream TF-A doesn't cope with our device tree when
@@ -216,7 +211,7 @@ void __noreturn rk3562_barebox_entry(void *fdt)
 		 * Pass NULL for now until we have a good reason to pass a real
 		 * device tree.
 		 */
-		rk3562_atf_load_bl31(NULL);
+		rockchip_atf_load_bl31(NULL);
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
@@ -224,12 +219,6 @@ void __noreturn rk3562_barebox_entry(void *fdt)
 	barebox_arm_entry(membase[0], memsize[0], fdt);
 }
 
-void rk3568_atf_load_bl31(void *fdt)
-{
-	ROCKCHIP_GET_ADDRESSES(RK3568, rk3568_bl31_bin, rk3568_bl32_bin);
-	rockchip_atf_load_bl31(fdt);
-}
-
 void __noreturn rk3568_barebox_entry(void *fdt)
 {
 	phys_addr_t memend;
@@ -243,6 +232,7 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 	if (current_el() == 3) {
 		rk3568_lowlevel_init();
 		rockchip_store_bootrom_iram(IOMEM(RK3568_IRAM_BASE));
+		ROCKCHIP_GET_ADDRESSES(RK3568, rk3568_bl31_bin, rk3568_bl32_bin);
 
 		/*
 		 * The downstream TF-A doesn't cope with our device tree when
@@ -255,7 +245,7 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 		 * Pass NULL for now until we have a good reason to pass a real
 		 * device tree.
 		 */
-		rk3568_atf_load_bl31(NULL);
+		rockchip_atf_load_bl31(NULL);
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
@@ -263,12 +253,6 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 	barebox_arm_entry(membase[0], memsize[0], fdt);
 }
 
-void rk3588_atf_load_bl31(void *fdt)
-{
-	ROCKCHIP_GET_ADDRESSES(RK3588, rk3588_bl31_bin, rk3588_bl32_bin);
-	rockchip_atf_load_bl31(fdt);
-}
-
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
 	phys_addr_t memend;
@@ -283,6 +267,7 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 	if (current_el() == 3) {
 		rk3588_lowlevel_init();
 		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
+		ROCKCHIP_GET_ADDRESSES(RK3588, rk3588_bl31_bin, rk3588_bl32_bin);
 
 		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT)) {
 			pr_debug("Copy fdt to scratch area 0x%p (%zu bytes)\n",
@@ -292,7 +277,7 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 				pr_warn("Failed to create OP-TEE Device tree\n");
 		}
 
-		rk3588_atf_load_bl31(rk_scratch->fdt);
+		rockchip_atf_load_bl31(rk_scratch->fdt);
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
@@ -300,12 +285,6 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 	barebox_arm_entry(membase[0], memsize[0], fdt);
 }
 
-void rk3576_atf_load_bl31(void *fdt)
-{
-	ROCKCHIP_GET_ADDRESSES(RK3576, rk3576_bl31_bin, rk3576_bl32_bin);
-	rockchip_atf_load_bl31(fdt);
-}
-
 void __noreturn rk3576_barebox_entry(void *fdt)
 {
 	phys_addr_t memend;
@@ -321,6 +300,7 @@ void __noreturn rk3576_barebox_entry(void *fdt)
 
 		rk3576_lowlevel_init();
 		rockchip_store_bootrom_iram(IOMEM(RK3576_IRAM_BASE));
+		ROCKCHIP_GET_ADDRESSES(RK3576, rk3576_bl31_bin, rk3576_bl32_bin);
 
 		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT)) {
 			pr_debug("Copy fdt to scratch area 0x%p (%zu bytes)\n",
@@ -331,7 +311,7 @@ void __noreturn rk3576_barebox_entry(void *fdt)
 				pr_warn("Failed to copy fdt to scratch: Continue without fdt\n");
 		}
 
-		rk3576_atf_load_bl31(fdt_scratch);
+		rockchip_atf_load_bl31(fdt_scratch);
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
index b8627a3598..5454d394a1 100644
--- a/include/mach/rockchip/atf.h
+++ b/include/mach/rockchip/atf.h
@@ -42,20 +42,6 @@
 #define RK3576_BAREBOX_LOAD_ADDRESS	(RK3576_DRAM_BOTTOM + 1024*1024)
 #define RK3588_BAREBOX_LOAD_ADDRESS	(RK3588_DRAM_BOTTOM + 1024*1024)
 
-#ifndef __ASSEMBLY__
-#ifdef CONFIG_ARCH_ROCKCHIP_ATF
-void rk3562_atf_load_bl31(void *fdt);
-void rk3568_atf_load_bl31(void *fdt);
-void rk3576_atf_load_bl31(void *fdt);
-void rk3588_atf_load_bl31(void *fdt);
-#else
-static inline void rk3562_atf_load_bl31(void *fdt) { }
-static inline void rk3568_atf_load_bl31(void *fdt) { }
-static inline void rk3576_atf_load_bl31(void *fdt) { }
-static inline void rk3588_atf_load_bl31(void *fdt) { }
-#endif
-#endif
-
 void __noreturn rk3562_barebox_entry(void *fdt);
 void __noreturn rk3568_barebox_entry(void *fdt);
 void __noreturn rk3576_barebox_entry(void *fdt);

-- 
2.47.3



